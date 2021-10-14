"""Tareas para poblar la base de datos Django"""
from __future__ import absolute_import
from celery import Celery
from celery.app import shared_task
import pyodbc

@shared_task
def poblarDB():
    #CREANDO CONEXION A DB
    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIACA_2020'
    nombre_usuario = 'siaca_api_profit'
    password = 'siacaucab12102021'
    try:
        conexion_profit = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
         # OK! conexión exitosa
              
    except Exception as error:
    # Atrapar error
        print("Ocurrió un error al conectar a Profit Plus SQL Server: ", error)
        
    #CREANDO CONSULTA A PROFIT PLUS   
    
    #Consultando Articulos
    consulta_articulos = 'SELECT * FROM saArticulo'
    cursor_articulo_profit = conexion_profit.cursor()
    cursor_articulo_profit.execute(consulta_articulos)
    cursor_articulo_profit = cursor_articulo_profit.fetchall()
    
    #Consultando Clientes
    consulta_clientes = 'SELECT * FROM saCliente'
    cursor_cliente_profit = conexion_profit.cursor()
    cursor_cliente_profit.execute(consulta_clientes)
    cursor_cliente_profit = cursor_cliente_profit.fetchall()
    
    #Consultando FacturasVenta
    consulta_facturas_venta = 'SELECT * FROM saFacturaVenta'
    cursor_facturaVenta_profit = conexion_profit.cursor()
    cursor_facturaVenta_profit.execute(consulta_facturas_venta)
    cursor_facturaVenta_profit = cursor_facturaVenta_profit.fetchall()
    
    #Consultando FacturasVentaRenglon
    consulta_facturas_venta_renglon = 'SELECT * FROM saFacturaVentaRenglon'
    cursor_facturaVentaRenglon_profit = conexion_profit.cursor()
    cursor_facturaVentaRenglon_profit.execute(consulta_facturas_venta_renglon)
    cursor_facturaVentaRenglon_profit = cursor_facturaVentaRenglon_profit.fetchall()
    
    #Consultando Proveedores
    consulta_proveedores = 'SELECT * FROM saProvedores'
    cursor_proveedores_profit = conexion_profit.cursor()
    cursor_proveedores_profit.execute(consulta_proveedores)
    cursor_proveedores_profit = cursor_proveedores_profit.fetchall()
    
    #Consultando PagoRetencionIva
    consulta_retenciones_pago_iva = 'SELECT * FROM saPagoRentenReng'
    cursor_pagoRetencioniva_profit = conexion_profit.cursor()
    cursor_pagoRetencioniva_profit.execute(consulta_retenciones_pago_iva)
    cursor_pagoRetencioniva_profit = cursor_pagoRetencioniva_profit.fetchall()
    
    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIACA_INTRANET'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    try:
        conexion_django = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)

    except Exception as error:
    # Atrapar error
        print("Ocurrió un error al conectar a base de datos de App Django: ", error)


    insert_articulos_django = 'INSERT INTO Articulo VALUES (?,?,?,?,?,?,?)'
    insert_clientes_django = 'INSERT INTO Cliente VALUES (?,?,?,?,?,?,?,?,?,?)'
    insert_facturasVenta_django = 'INSERT INTO FacturaVenta VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)'
    insert_facturasVentaRenglon_django = 'INSERT INTO FacturaVentaRenglon (?,?,?,?,?,?,?,?,?,?,?,?,?)'
    insert_proveedores_django = 'INSERT INTO Proveedores VALUES '
    insert_pagosRetencionIva_django = 'INSERT INTO PagoRetencionIva VALUES (?,?,?,?,?,?,?,?,?,?)'
    
    consulta_usuarios_django = 'SELECT * FROM Usuario WHERE usu_correo = (?)'
    
    # Clave foránea del usuario admin 
    u = conexion_django.cursor().execute(consulta_usuarios_django,'admin@siaca.com')
    u = u[0]
    
    
    for i in cursor_articulo_profit:
        cursor_articulos_django = conexion_django.cursor()
        cursor_articulos_django.execute(insert_articulos_django,i[0],i[1],i[2],i[3],i[4],i[5],u)
        
    conexion_django.commit()




    
    
    

        

