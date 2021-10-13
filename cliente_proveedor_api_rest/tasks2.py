"""Tareas para poblar la base de datos Django"""
from __future__ import absolute_import
from celery import Celery
from celery.app import shared_task
import pyodbc

@shared_task
def queryFacturasProfit():
    #CREANDO CONEXION A DB
    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIACA_2020'
    nombre_usuario = 'siaca_api_profit'
    password = 'siacaucab12102021'
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
         # OK! conexión exitosa
              
    except Exception as error:
    # Atrapar error
        print("Ocurrió un error al conectar a Profit Plus SQL Server: ", error)
        
    #CREANDO CONSULTA A PROFIT PLUS   
        
    consulta_articulos = 'SELECT top 1 * FROM saArticulo where art_des = (?)'
    
    cursor_articulo_profit = conexion.cursor()
    cursor_articulo_profit.execute(consulta_articulos,"INTERCOOLER (REPARADO)")
    
    cursor_articulo_profit = cursor_articulo_profit.fetchall()

    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIACA_INTRANET'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)

    except Exception as error:
    # Atrapar error
        print("Ocurrió un error al conectar a Profit Plus SQL Server: ", error)


    consulta_articulos = 'INSERT into Articulo values (?,?,?,?,?,?,?)'
    cursor_articulo_django = conexion.cursor()
    print('hola')
    for i in cursor_articulo_profit:
        #cursor_articulo_django.execute(consulta_articulos,(12345678,i[1],i[2],i[3],i[4],i[5], 1))
        cursor_articulo_django.execute(consulta_articulos,(12345678,'2021-10-13','prueba articulo 2','C',0,None, None))
        conexion.commit()




    
    
    

        

