from django.shortcuts import get_object_or_404

from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

from collections import namedtuple

from .serializers import FacturaVentaReporteSerializer, FacturaVentaSerializer

from .models import FacturaVenta, FacturaVentaRenglon

FacturaReporte = namedtuple('FacturaReporte', ('facturaInfo', 'facturaRenglones'))

@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta_detalle(request,fac_doc):
    """View que retorna la Factura de Venta Reporte en detalle"""
    if request.data['user_type'] == 'Cliente':
        factura_encabezado = get_object_or_404(FacturaVenta, pk=fac_doc)
        try:
            factura_renglon = FacturaVentaRenglon.objects.filter(facren_fac_doc_fk = factura_encabezado.fac_doc_num)
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
    """View que retorna las facturas de un cliente específico"""
    if request.data['user_type'] == 'Cliente':
        try:
            factura_encabezado = FacturaVenta.objects.filter(fac_cli_fk = request.user)
        except FacturaVenta.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        
        if request.method == 'GET':
            serializer = FacturaVentaSerializer(factura_encabezado)
            return Response (serializer.data)


        
            
    
        
         
                