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
        
    consulta_articulos = 'SELECT * FROM saArticulo'
    
    cursor_articulos = conexion.cursor()
    cursor_articulos.execute(consulta_articulos)
    
    for i in cursor_articulos:
        print (i)
    

    
    
    

        

