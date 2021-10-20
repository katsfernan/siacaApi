from django.shortcuts import get_object_or_404

from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

from user_login_api.models import Cliente, Empleado, Permiso, Proveedor, RolPermiso
from user_login_api.serializers import EmpleadoSerializer, PermisoSerializer, ProveedorSerializer, UsuarioSerializer

from .serializers import  FacturaVentaSerializer, FacturaVentaRenglonSerializer, PagoRetencionIvaSerializer

from .models import FacturaVenta, FacturaVentaRenglon, PagoRetencionIva

@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta(request):
    """View que retorna todas las facturas al empleado con permisos"""
    
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
def factura_venta(request):
    """View que retorna todas las facturas de un cliente"""
    if request.method == 'GET':
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                                            emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
        except Empleado.DoesNotExist:
            try:
                #cliente = ClienteSerializer(Cliente.objects.get(cli_usuario_fk= UsuarioSerializer(request.user).data['usu_id']))
                cliente = Cliente.objects.get(cli_usu_fk=request.user.usu_id)
            except Cliente.DoesNotExist:
                return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

            #factura_encabezado = get_object_or_404(FacturaVenta, fac_cli_fk = cliente.cli_doc_num)
            factura_encabezado = FacturaVenta.objects.filter(fac_cli_fk = cliente.cli_doc_num)
            if not factura_encabezado.exists():
                return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene facturas disponibles')    

            serializer = FacturaVentaSerializer(factura_encabezado, many=True)
            return Response (serializer.data)
        
        else:
            rol_id = (empleado.data["rol"])["rol_id"]
            rol_permissions = PermisoSerializer(
                RolPermiso.objects.all().filter(
                    rp_rol_fk=rol_id,
                    rp_estatus=True),
                many=True)
            for permission in rol_permissions.data:
                permiso_serialized = (Permiso.objects.get(per_id=permission["rp_per_fk"]))
                if permiso_serialized.per_nombre == 'Ver facturas':
                    factura_encabezado = FacturaVenta.objects.all()    
                    if not factura_encabezado.exists():
                        return Response(status=status.HTTP_404_NOT_FOUND, data='No hay facturas disponibles para consultar')  
                    
                    serializer = FacturaVentaSerializer(factura_encabezado, many=True)
                    return Response (serializer.data)    
            return Response (status=status.HTTP_401_UNAUTHORIZED, data='Error. El empleado no tiene permiso para realizar esta consulta')             
    
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
def pago_retencion_iva(request):
    """View que retorna todas las retenciones de un proveedor"""
    try:
        proveedor = Proveedor.objects.get(pro_usu_fk=request.user.usu_id)
    except Proveedor.DoesNotExist:
        return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

    pago_retencion = PagoRetencionIva.objects.filter(pagRetIva_pro_fk = proveedor.pro_cod)
    if not pago_retencion.exists():
        return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene retenciones disponibles')    

    if request.method == 'GET':
        serializer_retencion = PagoRetencionIvaSerializer(pago_retencion, many=True)
        return Response (serializer_retencion.data)  
    
@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def pago_retencion_iva_detalle(request, pk):
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
