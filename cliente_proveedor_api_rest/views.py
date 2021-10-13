from django.shortcuts import get_object_or_404

from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

from collections import namedtuple
from user_login_api.models import Cliente

from user_login_api.serializers import ClienteSerializer, UsuarioSerializer

from .serializers import  FacturaVentaSerializer, FacturaVentaRenglonSerializer

from .models import FacturaVenta, FacturaVentaRenglon

from .tasks2 import queryFacturasProfit

from .tasks import send_email_task

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

    except Factura.DoesNotExist:
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
def pruebaCelery (request):
    queryFacturasProfit.delay()
    return Response('Tarea enviada a la cola de eventos...') 


@api_view(['GET', ])
def enviarEmail (request):
    send_email_task.delay()
    return None 

            
    
        
         
                