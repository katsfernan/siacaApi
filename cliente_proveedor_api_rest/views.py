from datetime import datetime, date


import pyodbc
from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from user_login_api.models import Cliente, Empleado, Permiso, Proveedor, RolPermiso, TipoProveedor, Usuario, Rol, Zona
from user_login_api.serializers import EmpleadoSerializer, RolPermisoSerializer, ProveedorSerializer, UsuarioSerializer, \
    ClienteSerializer
from .models import Articulo, FacturaVenta, FacturaVentaRenglon, PagoRetencionIva, Moneda, CondicionPago
from .serializers import FacturaVentaSerializer, FacturaVentaRenglonSerializer, PagoRetencionIvaSerializer
from .tasks import send_email_task


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def factura_venta(request):
    """View que retorna todas las facturas de un cliente"""
    """El servicio valida que se tenga un metodo GET, luego se valida si es un empleado, si es asi, se verifica si este tiene el permiso
       de Ver Facturas. Si es asi, se consultan todas las facturas y se retornan. Si no hay facturas disponibles, se retorna el estado 
       HTTP 404 NOT FOUND. Si es un cliente quien realiza la peticion, se valida si este cliente tiene facturas y las devuelve. """
       
    if request.method == 'GET':
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                                            emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
        except Empleado.DoesNotExist:
            try:
                cliente = Cliente.objects.get(cli_usu_fk=request.user.usu_id)
            except Cliente.DoesNotExist:
                return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

            factura_encabezado = FacturaVenta.objects.filter(fac_cli_fk = cliente.cli_doc_num)
            if not factura_encabezado.exists():
                return Response(status=status.HTTP_404_NOT_FOUND, data='El cliente no tiene facturas disponibles')    

            serializer = FacturaVentaSerializer(factura_encabezado, many=True)
            return Response (serializer.data)
        
        else:
            rol_id = (empleado.data["rol"])["rol_id"]
            rol_permissions = RolPermisoSerializer(
                RolPermiso.objects.all().filter(
                    rp_rol_fk=rol_id,
                    rp_estatus=True),
                many=True)
            for permission in rol_permissions.data:
                permiso_serialized = (Permiso.objects.get(per_id=permission["rp_per_fk"]))
                if permiso_serialized.per_nombre == 'Ver Facturas Venta':
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
    if request.method == 'GET':    
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                                emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
        except Empleado.DoesNotExist:    
            try:
                cliente = Cliente.objects.get(cli_usu_fk=request.user.usu_id)
            except Cliente.DoesNotExist:
                    return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')   
            else:
                try:
                    factura_encabezado = FacturaVenta.objects.get(fac_doc_num = pk, fac_cli_fk = cliente.cli_doc_num )
                except FacturaVenta.DoesNotExist:
                    return Response(status=status.HTTP_404_NOT_FOUND,data='No hay facturas disponibles para consultar')   

                try:
                    factura_renglon = FacturaVentaRenglon.objects.filter(facren_fac_doc_fk = factura_encabezado.fac_doc_num )
                except FacturaVentaRenglon.DoesNotExist:
                    return Response(status=status.HTTP_404_NOT_FOUND,data='No hay renglones de factura disponibles para consultar')

                serializer_factura_encabezado = FacturaVentaSerializer(factura_encabezado)
                serializer_factura_renglon = FacturaVentaRenglonSerializer(factura_renglon, many=True)
                return Response ({
                    'encabezado':serializer_factura_encabezado.data,
                    'renglon': serializer_factura_renglon.data
                })    
        else:
            rol_id = (empleado.data["rol"])["rol_id"]
            rol_permissions = RolPermisoSerializer(
                RolPermiso.objects.all().filter(
                    rp_rol_fk=rol_id,
                    rp_estatus=True),
                many=True)
            for permission in rol_permissions.data:
                permiso_serialized = (Permiso.objects.get(per_id=permission["rp_per_fk"]))
                if permiso_serialized.per_nombre == 'Ver Facturas Venta':   
                    try:
                        factura_encabezado = FacturaVenta.objects.get(fac_doc_num = pk)
                    except FacturaVenta.DoesNotExist:
                        return Response(status=status.HTTP_404_NOT_FOUND,data='No hay facturas disponibles para consultar')   

                    try:
                        factura_renglon = FacturaVentaRenglon.objects.filter(facren_fac_doc_fk = factura_encabezado.fac_doc_num )
                    except FacturaVentaRenglon.DoesNotExist:
                        return Response(status=status.HTTP_404_NOT_FOUND,data='No hay renglones de factura disponibles para consultar')

                    serializer_factura_encabezado = FacturaVentaSerializer(factura_encabezado)
                    serializer_factura_renglon = FacturaVentaRenglonSerializer(factura_renglon, many=True)
                    return Response ({
                    'encabezado':serializer_factura_encabezado.data,
                    'renglon': serializer_factura_renglon.data         
                    })  
            return Response (status=status.HTTP_401_UNAUTHORIZED, data='Error. El empleado no tiene permiso para realizar esta consulta') 
                
@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def pago_retencion_iva(request):
    """View que retorna todas las retenciones de un proveedor"""
    
    if request.method == 'GET':   
        has_permision = False
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                                emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
        except Empleado.DoesNotExist:    
            try:
                proveedor = Proveedor.objects.get(pro_usu_fk=request.user.usu_id)
            except Proveedor.DoesNotExist:
                return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')    

            pago_retencion = PagoRetencionIva.objects.filter(pagRetIva_pro_fk = proveedor.pro_cod)
            has_permision = True
            if not pago_retencion.exists():
                return Response(status=status.HTTP_404_NOT_FOUND, data='El proveedor no tiene retenciones disponibles')   
             
        else:
            rol_id = (empleado.data["rol"])["rol_id"]
            rol_permissions = RolPermisoSerializer(
                RolPermiso.objects.all().filter(
                    rp_rol_fk=rol_id,
                    rp_estatus=True),
                many=True)
            for permission in rol_permissions.data:
                permiso_serialized = (Permiso.objects.get(per_id=permission["rp_per_fk"]))
                if permiso_serialized.per_nombre == 'Ver Retenciones IVA':   
                    try:
                        pago_retencion = PagoRetencionIva.objects.all()
                        has_permision = True
                    except PagoRetencionIva.DoesNotExist:
                        return Response(status=status.HTTP_404_NOT_FOUND,data='No hay retenciones disponibles para consultar')
                 
        if has_permision:
            serializer_retencion = PagoRetencionIvaSerializer(pago_retencion, many=True)
            return Response (serializer_retencion.data)
        else:
            return Response(status=status.HTTP_401_UNAUTHORIZED,data='El empleado no tiene permisos para realizar esta consulta') 
    