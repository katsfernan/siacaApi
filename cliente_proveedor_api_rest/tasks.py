from celery.app import shared_task
from datetime import datetime, time
import pyodbc
from cliente_proveedor_api_rest.models import FacturaVenta

from user_login_api.models import Cliente, Usuario

from django.core.mail import send_mail

@shared_task
def queryFacturasProfit():
    #CREANDO CONEXION A DB
    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIACA_INTRANET'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
         # OK! conexión exitosa
              
    except Exception as error:
    # Atrapar error
        return ("Ocurrió un error al conectar a Profit Plus SQL Server: ", error)
        
    #CREANDO CONSULTA A PROFIT PLUS   
    fecha_consulta = datetime.now()
    
    consulta_factura_encabezado = '''
    SELECT 
    ltrim(rtrim(doc_num)), format(fec_emis,'yyyy-MM-dd'),format(fec_venc,'yyyy-MM-dd') , format(fec_reg,'yyyy-MM-dd'),
    ltrim(rtrim(n_control)), tasa, total_bruto, monto_imp, total_neto,ltrim(rtrim(co_cli)), ltrim(rtrim(co_mone)), 
    ltrim(rtrim(co_cond))
    FROM saFacturaVenta 
    WHERE fac.fec_emis >= (?)
    '''
    
    consulta_factura_renglon = '''
    SELECT
    reng_num, ltrim(rtrim(co_alma)), total_art, prec_vta, porc_imp, monto_imp, reng_neto, pendiente, ltrim(rtrim(comentario)), 
    ltrim(rtrim(doc_num)), ltrim(rtrim(co_art))
    FROM saFacturaVentaReng
    WHERE fac.doc_num = (?)
    '''
    
    consulta_cliente = '''
    SELECT 
    ltrim(rtrim(co_cli)),cli_des,ltrim(rtrim(email)),tip_cli 
    FROM saCliente
    WHERE ltrim(rtrim(co_cli)) = (?)
    '''
    cursor_factura_encabezado = conexion.cursor()
    cursor_factura_encabezado.execute(consulta_factura_encabezado,fecha_consulta)
    facturas_encabezado = cursor_factura_encabezado.fetchall()
    
    if facturas_encabezado:
        for fac in facturas_encabezado:
            doc_num = fac[0]
            co_cli = fac[9]
            try:
                FacturaVenta.objects.get(pk = doc_num)
            except FacturaVenta.DoesNotExist:
                try:
                    cliente = Cliente.objects.get(pk = co_cli)
                except Cliente.DoesNotExist:
                    cursor_cliente = conexion.cursor()
                    cursor_cliente.execute(consulta_cliente, co_cli)
                    cli = cursor_cliente.fetchone
                    cliente_nuevo = Cliente(cli_doc_num=cli[0],cli_descripcion=cli[1],cli_email = cli[2],
                                    cli_tipo_cli = cli[3])
                    try:
                        Usuario.objects.get(usu_correo = cliente_nuevo.cli_email)
                    
                    except Usuario.DoesNotExist:
                        Usuario.objects.create_user(usu_correo =cli[2],
                                                     password='pbkdf2_sha256$180000$P1u8jvvDK78e$3QzMEvK+flQ13/jzY40/gI68rZu0nxAYFNpfbaMYY8M=')
                    finally:
                        email_cliente = cliente_nuevo.cli_email                     
                else:
                    email_cliente = cliente.cli_email

                                               
            finally:    
                nuevaFactura = FacturaVenta(fac_doc_num = fac[0], fac_fecha_emi = fac[1], fac_fecha_venc=fac[2],
                                            fac_fecha_reg= fac[3], fac_num_control = fac[4], fac_tasa=fac[5],
                                            fac_total_bruto=fac[6], fac_monto_imp=fac[7],fac_monto_total=fac[8],
                                            fac_cli_fk= fac[9], fac_moneda_fk=fac[10], fac_cp_fk=fac[11])
                cursor_factura_renglon = conexion.cursor()
                cursor_factura_renglon.execute(consulta_factura_renglon, doc_num)
                facturas_renglon = cursor_factura_renglon.fetchall()
                for facren in facturas_renglon:
                    
                    pass
                asunto = 'Nueva factura en su perfil de cliente Siaca'
                msg = 'Usted tiene una nueva factura a consultar. Número de factura: {numerofactura}'.format(numerofactura = nuevaFactura.fac_doc_num)
                send_email_task(email_cliente, asunto, msg)

@shared_task
def send_email_task(destinatario, asunto, mensaje):
    send_mail(asunto,
    mensaje,
    'siacapruebasucab@gmail.com',
    [destinatario])
    

        

