from django.shortcuts import get_object_or_404

from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

from user_login_api.models import Cliente, Proveedor
from user_login_api.serializers import ProveedorSerializer

from .serializers import  FacturaVentaSerializer, FacturaVentaRenglonSerializer, PagoRetencionIvaSerializer

from .models import FacturaVenta, FacturaVentaRenglon, PagoRetencionIva

from .tasks import send_email_task

import pyodbc

@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta_detalle(request,pk):
    """View que retorna la Factura de Venta Reporte de un cliente en detalle"""
    
    try:
       # cliente = ClienteSerializer(Cliente.objects.get(cli_usuario_fk= UsuarioSerializer(request.user).data['usu_id']))
       cliente = Cliente.objects.get(cli_usu_fk=request.user.usu_id)
    except Cliente.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')   
    
    try:
        #factura_encabezado = get_object_or_404(FacturaVenta, fac_doc_num=pk, fac_cli_fk= cliente.cli_doc_num)
        factura_encabezado = FacturaVenta.objects.get(fac_doc_num = pk, fac_cli_fk = cliente.cli_doc_num )

    except FacturaVenta.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)   

    try:
        factura_renglon = FacturaVentaRenglon.objects.filter(facren_fac_doc_fk = factura_encabezado.fac_doc_num )
    except FacturaVentaRenglon.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
        
    if request.method == 'GET':

        serializer_factura_encabezado = FacturaVentaSerializer(factura_encabezado)
        serializer_factura_renglon = FacturaVentaRenglonSerializer(factura_renglon, many=True)
        return Response ({
            'encabezado':serializer_factura_encabezado.data,
            'renglon': serializer_factura_renglon.data
            })


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta(request):
    """View que retorna todas las facturas de un cliente"""
    try:
        #cliente = ClienteSerializer(Cliente.objects.get(cli_usuario_fk= UsuarioSerializer(request.user).data['usu_id']))
        cliente = Cliente.objects.get(cli_usu_fk=request.user.usu_id)
    except Cliente.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

    #factura_encabezado = get_object_or_404(FacturaVenta, fac_cli_fk = cliente.cli_doc_num)
    factura_encabezado = FacturaVenta.objects.filter(fac_cli_fk = cliente.cli_doc_num)
    if not factura_encabezado.exists():
        return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene facturas disponibles')    

    if request.method == 'GET':
        serializer = FacturaVentaSerializer(factura_encabezado, many=True)
        return Response (serializer.data)

    
@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def pago_retencion_iva(request):
    """View que retorna todas las retenciones de un proveedor"""
    try:
        proveedor = Proveedor.objects.get(pro_usu_fk=request.user.usu_id)
    except Proveedor.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

    pago_retencion = PagoRetencionIva.objects.filter(pagRetIva_pro_fk = proveedor.pro_rif)
    if not pago_retencion.exists():
        return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene retenciones disponibles')    

    if request.method == 'GET':
        serializer_retencion = PagoRetencionIvaSerializer(pago_retencion, many=True)
        return Response (serializer_retencion.data)  
    
@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def pago_retencion_iva(request, pk):
    """View que retorna una retencion de pago de iva en detalle del proveedor"""
    try:
        proveedor = Proveedor.objects.get(pro_usu_fk=request.user.usu_id)
    except Proveedor.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

    pago_retencion = PagoRetencionIva.objects.filter(pagRetIva_doc_num = pk, pagRetIva_pro_fk = proveedor.pro_rif)
    if not pago_retencion.exists():
        return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene retenciones disponibles')    

    if request.method == 'GET':
        serializer_retencion_encabezado = ProveedorSerializer(proveedor)
        serializer_retencion_renglon = PagoRetencionIvaSerializer(pago_retencion, many=True)
        return Response ({
            'encabezado': serializer_retencion_encabezado.data,
            'renglon': serializer_retencion_renglon.data
            })

@api_view(['GET', ])
def enviarEmail (request):
    send_email_task.delay()
    return None 

@api_view(['GET', ])
def insertarArticulos (request):
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
    consulta_articulos = 'SELECT top 1 * FROM saArticulo'
    cursor_articulo_profit = conexion_profit.cursor()
    cursor_articulo_profit.execute(consulta_articulos)
    articulos = cursor_articulo_profit.fetchall()
            
            
    #CREANDO CONSULTA A Django DB        
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
    
    '''consulta_usuarios_django = 'SELECT * FROM Usuario WHERE usu_correo = (?)'
    
    # Clave foránea del usuario admin 
    u = conexion_django.cursor().execute(consulta_usuarios_django,'admin@siaca.com')
    u = u[0]'''
    
    cursor_articulos_django = conexion_django.cursor()
    
    for i in articulos:
        cursor_articulos_django.execute(insert_articulos_django,i[0],i[1],i[2],i[3],i[4],i[5],None)

    conexion_django.commit()
        
         
                