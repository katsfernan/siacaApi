from django.shortcuts import get_object_or_404

from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

from collections import namedtuple
from user_login_api.models import Cliente

from user_login_api.serializers import ClienteSerializer, UsuarioSerializer

from .serializers import FacturaVentaReporteSerializer, FacturaVentaSerializer

from .models import FacturaVenta, FacturaVentaRenglon

FacturaReporte = namedtuple('FacturaReporte', ('facturaInfo', 'facturaRenglones'))

@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta_detalle(request,fac_doc_num):
    """View que retorna la Factura de Venta Reporte de un cliente en detalle"""
    
    try:
        cliente = ClienteSerializer(Cliente.objects.get(cli_usuario_fk= UsuarioSerializer(request.user).data['usu_id']))
    except Cliente.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')   
    
    factura_encabezado = get_object_or_404(FacturaVenta, pk=fac_doc_num, fac_cli_fk= cliente.data['cli_doc_num'])
    
    try:
        factura_renglon = FacturaVentaRenglon.objects.filter(facren_fac_doc_fk = factura_encabezado.fac_doc_num )
    except FacturaVentaRenglon.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
        
    if request.method == 'GET':
        factura_reporte = FacturaReporte(
            facturaInfo = factura_encabezado,
            facturaRenglon = factura_renglon
            )
        serializer = FacturaVentaReporteSerializer(factura_reporte)
        return Response (serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta(request):
    """View que retorna todas las facturas de un cliente"""
    try:
        cliente = ClienteSerializer(Cliente.objects.get(cli_usuario_fk= UsuarioSerializer(request.user).data['usu_id']))
    except Cliente.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    
    try:
        factura_encabezado = FacturaVenta.objects.filter(fac_cli_fk = cliente.data['cli_doc_num'])
    except FacturaVenta.DoesNotExist:
         return Response(status=status.HTTP_404_NOT_FOUND)
     
    if request.method == 'GET':
        serializer = FacturaVentaSerializer(factura_encabezado)
        return Response (serializer.data)
            
                

@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def prueba(request):
    if request.method == 'GET':
        return Response({
            'ususario' : request.user
         })
        
            
    
        
         
                