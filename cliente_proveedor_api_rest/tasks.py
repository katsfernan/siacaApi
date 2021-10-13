from celery import Celery
from celery.app import shared_task
from datetime import datetime

import pyodbc

from utils import enviar_email
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
        print("Ocurrió un error al conectar a Profit Plus SQL Server: ", error)
        
    #CREANDO CONSULTA A PROFIT PLUS   
    fecha_consulta = datetime.now()
    
    consulta_factura_encabezado = '''
    SELECT 
    fac.doc_num, cli.email, cli.cli_des, con.cond_des, ven.des,
    fac.fec_emis, fac.fec_venc, fac.fec_reg, fac.n_control,
    tra.des_tran, mon.co_mone, mon.mone_des, fac.tasa 
    FROM saFacturaVenta fac
    JOIN saCliente clie on cli.co_cli = fac.co_cli   
    JOIN saCondicionPago con on con.co_cond = fac.co_cond
    JOIN saVendedor ven on ven.co_ven = fac.co_ven
    JOIN saTransporte tra on tra.co_tran = fac.co_tran
    JOIN saMoneda mon on mon.co_mone = fac.co_mone
    WHERE fac.fec_emis = (?)
    '''
    
    consulta_factura_renglon = '''
    SELECT
    facRen.co_art, art.art_des, alm.des_alma, facRen.co_uni, 
    facRen.total_art, facRen.co_precio, facRen.prec_vta, 
    facRen.porc_imp, facRen.porc_imp2, facRen.porc_imp3, facRen.reng_neto, facRen.comentario
    FROM saFacturaVentaReng facRen
    JOIN saArticulo art on art.co_art = facRen.co_art
    JOIN saAlmacen alm on alm.co_alma = facRen.co_alma
    WHERE fac.doc_num = (?)
    '''
    cursor_factura_encabezado = conexion.cursor()
    cursor_factura_encabezado.execute(consulta_factura_encabezado,fecha_consulta)
    facturas_encabezado = cursor_factura_encabezado.fetchall()
    if facturas_encabezado:
        for factura_encabezado in facturas_encabezado:
            doc_num = factura_encabezado[0]
            cursor_factura_renglon = conexion.cursor()
            cursor_factura_renglon.execute(consulta_factura_renglon,doc_num)
            facturas_renglon = cursor_factura_renglon.fetchall()
            for factura_renglon in facturas_renglon:
                pass
            #Envío de correo electrónico a cliente
            email_cliente = factura_encabezado[1]
            if email_cliente:
                pass
            else:
                print("El cliente {} no tiene Email registrado".format(factura_encabezado[2].capitalize()))
    else:
        print("No se consiguieron facturas nuevas")

@shared_task
def send_email_task():
    send_mail('Correo electronico enviado',
    'Prueba siaca',
    'siacapruebasucab@gmail.com',
    ['6991af4aac@emailnax.com'])
    

        

