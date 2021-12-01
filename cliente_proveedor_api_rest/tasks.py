from celery import app
from celery.app import shared_task
from datetime import date, datetime
import pyodbc
from rest_framework import status
from rest_framework.response import Response
from cliente_proveedor_api_rest.models import Articulo, CondicionPago, FacturaVenta, FacturaVentaRenglon, Moneda, PagoRetencionIva

from user_login_api.models import Cliente, Proveedor, Rol, TipoProveedor, Usuario, Zona

from django.core.mail import send_mail

from user_login_api.serializers import ClienteSerializer, ProveedorSerializer

@shared_task
def sincroniza_facturas():
        #CREANDO CONEXION A DB
    
    direccion_servidor = 'DESKTOP-6A1RO2L'
    nombre_bd = 'SIACA_2020'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    
    #Variables para la creacion de Usuario en caso de que no exista
    usu_password='pbkdf2_sha256$180000$P1u8jvvDK78e$3QzMEvK+flQ13/jzY40/gI68rZu0nxAYFNpfbaMYY8M='
    usu_estatus = 1
    usu_tipo = 'Cliente'
    usu_usu_modif_fk = 1
    dt = datetime.combine(date.today(), datetime.min.time())
    
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';Trusted_Connection=yes;DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
        
         # OK! conexión exitosa
        try:
            conexion2 = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                        direccion_servidor+';Trusted_Connection=yes;DATABASE=SIACA_INTRANET;UID='+nombre_usuario+';PWD=' + password)
                            
        except Exception as error:
            # Atrapar error
            return Response(error)

        crear_usuario_consulta = '''INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
                                    VALUES (?,?,?,?,?,?,?,?,?)'''
                                    
    #CREANDO CONSULTA A PROFIT PLUS
        fecha_consulta = '2005-02-09'

        consulta_factura_encabezado = '''
        SELECT 
        ltrim(rtrim(doc_num)), format(fec_emis,'yyyy-MM-dd'),format(fec_venc,'yyyy-MM-dd') , format(fec_reg,'yyyy-MM-dd'),
        ltrim(rtrim(n_control)), tasa, total_bruto, monto_imp, total_neto,ltrim(rtrim(co_cli)), ltrim(rtrim(co_mone)), 
        ltrim(rtrim(co_cond))
        FROM saFacturaVenta 
        WHERE fec_emis >= (?)
        '''

        consulta_factura_renglon = '''
        SELECT
        reng_num, ltrim(rtrim(co_alma)), total_art, prec_vta, porc_imp, monto_imp, reng_neto, pendiente, ltrim(rtrim(comentario)), 
        ltrim(rtrim(doc_num)), ltrim(rtrim(co_art))
        FROM saFacturaVentaReng
        WHERE doc_num = (?)
        '''

        consulta_cliente = '''
        SELECT 
        ltrim(rtrim(co_cli)),cli_des,ltrim(rtrim(email)),tip_cli 
        FROM saCliente
        WHERE ltrim(rtrim(co_cli)) = (?)
        '''
        facturasNuevas = []
       

        cursor_factura_encabezado = conexion.cursor()
        cursor_factura_encabezado.execute(consulta_factura_encabezado, fecha_consulta)
        facturas_encabezado = cursor_factura_encabezado.fetchall()

        for fac in facturas_encabezado:
            hasEmail = False
            doc_num = int(fac[0])
            co_cli = fac[9]
            try:
               FacturaVenta.objects.get(pk=doc_num)
            except FacturaVenta.DoesNotExist:
                print('La factura {facNum} no existe'.format(facNum=doc_num))
                try:
                    cliente_existente = Cliente.objects.get(pk=co_cli)
                except Cliente.DoesNotExist:
                    cursor_cliente = conexion.cursor()
                    cursor_cliente.execute(consulta_cliente, co_cli)
                    cli = cursor_cliente.fetchone()
                    cursor_cliente.close()
                    rolCliente = Rol.objects.get(rol_nombre='Cliente')
                    cliente_nuevo = Cliente(cli_doc_num=cli[0],cli_descripcion=cli[1],cli_email=cli[2],
                                            cli_tipo_cli=cli[3],cli_rol_fk=rolCliente)
                    cliente_nuevo.save()
                    #Verificamos si el cliente tiene un correo asociado, para asi crear el usuario
                    if cli[2]:
                        cursor_registro_usuario = conexion2.cursor()
                            
                        cursor_registro_usuario.execute( crear_usuario_consulta, 
                                                        cli[2], usu_password,dt, usu_estatus, 
                                                        usu_tipo, usu_usu_modif_fk,1,0,0)
                        cursor_registro_usuario.commit()
                        usuario_nuevo = Usuario.objects.get(usu_correo = cli[2])
                        cliente_nuevo.cli_usu_fk = usuario_nuevo
                        cliente_nuevo.save()

                        
                        hasEmail = True
                    
                #Cliente existe, validamos si tiene usuario asignado
                else:
                    if cliente_existente.cli_email:
                        try:
                            clienteSerialized = ClienteSerializer(cliente_existente)
                            Usuario.objects.get(pk = clienteSerialized.data['cli_usu_fk'])
                        except Usuario.DoesNotExist:

                            cursor_registro_usuario = conexion2.cursor()
                            
                            cursor_registro_usuario.execute( crear_usuario_consulta, 
                                                            cliente_existente.cli_email, usu_password,dt, usu_estatus, 
                                                            usu_tipo, usu_usu_modif_fk,1,0,0)
                            cursor_registro_usuario.commit()
                            usuario_nuevo = Usuario.objects.get(usu_correo = cliente_existente.cli_email)
                            cliente_existente.cli_usu_fk = usuario_nuevo
                            cliente_existente.save()

                        finally:
                            hasEmail = True

                formatoFecha = "%Y-%m-%d"
                fechaEmiFormateada = datetime.strptime(fac[1], formatoFecha).date()
                fechaVencFormateada = datetime.strptime(fac[2], formatoFecha).date()
                fechaRegFormateada = datetime.strptime(fac[3], formatoFecha).date()


                clienteFactura = Cliente.objects.get(pk=fac[9])
                monedaFactura = Moneda.objects.get(pk=fac[10])
                condicionPagoFactura = CondicionPago.objects.get(pk=int(fac[11]) if fac[11] else fac[11])

                nuevaFactura = FacturaVenta(fac_doc_num=doc_num, fac_fecha_emi=fechaEmiFormateada,
                                            fac_fecha_venc=fechaVencFormateada,fac_fecha_reg=fechaRegFormateada,
                                            fac_num_control=fac[4], fac_tasa=float(fac[5]),
                                            fac_total_bruto=float(fac[6]), fac_monto_imp=float(fac[7]),
                                            fac_monto_total=float(fac[8]),fac_cli_fk=clienteFactura,
                                            fac_moneda_fk=monedaFactura, fac_cp_fk=condicionPagoFactura)
                nuevaFactura.save()
                facturasNuevas.append(nuevaFactura)
                cursor_factura_renglon = conexion.cursor()
                cursor_factura_renglon.execute(consulta_factura_renglon, doc_num)
                facturas_renglon = cursor_factura_renglon.fetchall()
                
                
                for facren in facturas_renglon:
                    
                    articulo = Articulo.objects.get(pk = facren[10])
                    nuevaFacturaRenglon = FacturaVentaRenglon(facren_reng_num = facren[0], facren_cod_alm = facren[1],
                                                              facren_total_art = float(facren[2]), facren_precio_venta= float(facren[3]),
                                                              facren_porc_imp =  facren[4], facren_monto_imp = float(facren[5]),
                                                              facren_reng_neto = float(facren[6]), facren_pendiente = float(facren[7]),
                                                              facren_comentario = facren[8], facren_fac_doc_fk = nuevaFactura, facren_art_fk = articulo)
                    nuevaFacturaRenglon.save()

                if hasEmail:
                    asunto = 'Nueva factura en su perfil de cliente Siaca'
                    msg = 'Usted tiene una nueva factura a consultar. Número de factura: {numerofactura}'.format(numerofactura = nuevaFactura.fac_doc_num)
                    
                    # En el primer argumento debe colocarse el correo a donde se enviara la notificacion 
                    # cli[2]
                    send_email_task('tokijin559@fretice.com', asunto, msg)

        if facturasNuevas:
            return print('Hay nuevas facturas')
        else:
            return print('No hay nuevas facturas')

    except Exception as error:
    # Atrapar error
        return Response(error)
    
@shared_task 
def sicroniza_retenciones():
    #CREANDO CONEXION A DB
    direccion_servidor = 'DESKTOP-6A1RO2L'
    nombre_bd = 'SIACA_2020'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    
    #Variables para la creacion de Usuario en caso de que no exista
    usu_password='pbkdf2_sha256$180000$GgQTqS4gZtuG$ICdvD+upE5YDY68g8ve8ifJHSvfFwEERqUjU8wiyXWg='
    usu_estatus = 1
    usu_tipo = 'Proveedor'
    usu_usu_modif_fk = 1
    dt = datetime.combine(date.today(), datetime.min.time())
    
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';Trusted_Connection=yes;DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
        
         # OK! conexión exitosa
        try:
            conexion2 = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                        direccion_servidor+';Trusted_Connection=yes;DATABASE=SIACA_INTRANET;UID='+nombre_usuario+';PWD=' + password)
                            
        except Exception as error:
            # Atrapar error
            return Response(error)

        crear_usuario_consulta = '''INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
                                    VALUES (?,?,?,?,?,?,?,?,?)'''
                                    
    #CREANDO CONSULTA A PROFIT PLUS
        fecha_consulta = '2020-01-01'

        consulta_pago_retencion_IVA = '''
        SELECT 
        ltrim(rtrim(numero_documento)) ,periodo_impositivo,format(fecha_documento,'yyyy-MM-dd'),rtrim(numero_control_documento), 
        rtrim(numero_documento_afectado), monto_documento,base_imponible,monto_ret_imp,num_comprobante,alicuota, rtrim(p.co_prov)
        FROM saPagoRetenIvaReng r
        JOIN  saproveedor p on rtrim(p.co_prov) = substring(rtrim(r.rif_comprador),2,9)
        WHERE r.fecha_documento >= (?)
         '''
        
        consulta_proveedor = '''
        SELECT 
        rtrim(co_prov),rtrim(rif),rtrim(prov_des),rtrim(email),rtrim(direc1),rtrim(direc2),
        rtrim(telefonos),contribu_e,cast(tip_pro as int),cast(co_zon as int) 
        FROM saProveedor
        WHERE ltrim(rtrim(co_prov)) = (?)
        '''
        pagoRetencionesIVANuevas = []
       

        cursor_pago_retencion_IVA = conexion.cursor()
        cursor_pago_retencion_IVA.execute(consulta_pago_retencion_IVA, fecha_consulta)
        pago_retenciones_IVA = cursor_pago_retencion_IVA.fetchall()

        for ret in pago_retenciones_IVA:
            hasEmail = False
            doc_num = ret[0]
            num_comprobante = ret[8]
            co_prov = ret[10]
            try:
               PagoRetencionIva.objects.get(pagRetIva_doc_num =doc_num, pagRetIva_num_comprobante = num_comprobante )
            except PagoRetencionIva.DoesNotExist:
                print('El pago de retencion de IVA N° {retNum} no existe'.format(retNum=doc_num))
                try:
                    proveedor_existente = Proveedor.objects.get(pk=co_prov)
                except Proveedor.DoesNotExist:
                    cursor_proveedor = conexion.cursor()
                    cursor_proveedor.execute(consulta_proveedor, co_prov)
                    prov = cursor_proveedor.fetchone()
                    cursor_proveedor.close()
                    
                    tipo_prov = TipoProveedor.objects.get(pk = prov[8])
                    zona = Zona.objects.get(pk = prov[9])
                    rolProveedor = Rol.objects.get(rol_nombre='Proveedor')
                    
                    proveedor_nuevo = Proveedor(pro_cod=prov[0],pro_rif=prov[1],pro_descripcion=prov[2], pro_email=prov[3],
                                                pro_direc1 = prov[4], pro_direc2 = prov[5], pro_telefono = prov[6], pro_fecha_modif=dt, 
                                                pro_estatus =1 , pro_contribu_e = prov[7], pro_tprov_fk = tipo_prov, pro_zon_fk= zona, 
                                                pro_rol_fk = rolProveedor
                                                )
                    proveedor_nuevo.save()
                    
                    #Verificamos si el proveedor tiene un correo asociado, para asi crear el usuario
                    
                    if prov[3]:
                        cursor_registro_usuario = conexion2.cursor()
                            
                        cursor_registro_usuario.execute( crear_usuario_consulta, 
                                                        prov[3] , usu_password,dt, usu_estatus, 
                                                        usu_tipo, usu_usu_modif_fk,1,0,0)
                        cursor_registro_usuario.commit()
                        usuario_nuevo = Usuario.objects.get(usu_correo =prov[3])
                        proveedor_nuevo.pro_usu_fk = usuario_nuevo
                        proveedor_nuevo.save()
                        hasEmail = True
                    
                #Proveedor existe, validamos si tiene usuario asignado
                else:
                    if proveedor_existente.pro_email:
                        try:
                            proveedorSerialized = ProveedorSerializer(proveedor_existente)
                            Usuario.objects.get(pk = proveedorSerialized.data['pro_usu_fk'])
                        except Usuario.DoesNotExist:
                            cursor_registro_usuario = conexion2.cursor()
                            cursor_registro_usuario.execute( crear_usuario_consulta, 
                                                            proveedor_existente.pro_email, usu_password,dt, usu_estatus, 
                                                            usu_tipo, usu_usu_modif_fk,1,0,0)
                            cursor_registro_usuario.commit()
                            usuario_nuevo = Usuario.objects.get(usu_correo = proveedor_existente.pro_email)
                            proveedor_existente.pro_email = usuario_nuevo
                            proveedor_existente.save()

                        finally:
                            hasEmail = True

                formatoFecha = "%Y-%m-%d"
                fechaDocFormateada = datetime.strptime(ret[2], formatoFecha).date()

                proveedorDoc = Proveedor.objects.get(pk=ret[10])
                
                nuevoPagoRetencionIVA = PagoRetencionIva(pagRetIva_doc_num = doc_num, pagRetIva_periodo = ret[1], pagRetIva_fecha_doc = fechaDocFormateada,
                                                         pagRetIva_doc_num_control = ret[3], pagRetIva_nro_doc_afectado = ret[4], 
                                                         pagRetIva_monto_documento = float(ret[5]), pagRetIva_base_imponible = float(ret[6]),
                                                         pagRetIva_monto_ret_imp = float(ret[7]), pagRetIva_num_comprobante = ret[8],
                                                         pagRetIva_alicuota = float(ret[9]), pagRetIva_pro_fk = proveedorDoc
                                                         )
                nuevoPagoRetencionIVA.save()
                pagoRetencionesIVANuevas.append(nuevoPagoRetencionIVA)

                if hasEmail:
                    asunto = 'Nuevo pago de retención de IVA en su perfil de cliente Siaca'
                    msg = 'Usted tiene un nuevo pago de retención de IVA a consultar. Número de documento: {nuevoPagoRetencionIVA}'.format(nuevoPagoRetencionIVA = nuevoPagoRetencionIVA.pagRetIva_doc_num)
                    
                    #prov[3]
                    send_email_task('tokijin559@fretice.com', asunto, msg)

        if pagoRetencionesIVANuevas:
            return Response(status=status.HTTP_200_OK, data='Hay pagos de retencion de IVA nuevos')
        else:
            return Response(status=status.HTTP_204_NO_CONTENT, data='No hay pagos de retencion de IVA nuevos')

    except Exception as error:
    # Atrapar error
        return Response(error)

@shared_task
def send_email_task(destinatario, asunto, mensaje):
    send_mail(asunto,
    mensaje,
    'siacapruebasucab@gmail.com',
    [destinatario])
    

        

