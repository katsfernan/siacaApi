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
from .models import Articulo, FacturaVenta, FacturaVentaRenglon, Pago, PagoDocReng, PagoRentenReng, PagoRetencionIva, Moneda, CondicionPago
from .serializers import FacturaVentaSerializer, FacturaVentaRenglonSerializer, PagoRentenRengSerializer, PagoRetencionIvaSerializer
from .tasks import send_email_task
import json


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def get_proveedores(request):
    """View que retorna todos los proveedores"""    
    try:
        proveedor = Proveedor.objects.filter(pro_email__isnull=False)
    except Proveedor.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        proveedor_serializer = ProveedorSerializer(proveedor, many = True)
        return Response (proveedor_serializer.data)


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
    
@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def retencion_islr_rango(request):
    """View que retorna un reporte de Retenciones  ISLR según un rango de fechas"""
    if request.method == 'GET':
        
        fecha_i =request.query_params.get('fecha_i', None)
        if fecha_i is None:
            return Response(status=status.HTTP_400_BAD_REQUEST,data='Rango de fechas inválido')
        else:   
            fecha_i = json.loads(fecha_i) 
            fecha_i_response = str(fecha_i["day"]) + '/' + str(fecha_i["month"]) + '/' + str(fecha_i["year"]) 
            fecha_i = str(fecha_i["year"]) + '/' + str(fecha_i["month"]) + '/' + str(fecha_i["day"])
            fecha_i_format = datetime.strptime(fecha_i, "%Y/%m/%d")
        
        fecha_f = request.query_params.get('fecha_f',None)
        if fecha_f is None:
            return Response(status=status.HTTP_400_BAD_REQUEST,data='Rango de fechas inválido')
        else:
            fecha_f = json.loads(fecha_f) 
            fecha_f_response = str(fecha_f["day"]) + '/' + str(fecha_f["month"]) + '/' + str(fecha_f["year"])
            fecha_f = str(fecha_f["year"]) + '/' + str(fecha_f["month"]) + '/' + str(fecha_f["day"])
            fecha_f_format = datetime.strptime(fecha_f, "%Y/%m/%d")

        pagos_list = [] 
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                                emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
        except Empleado.DoesNotExist:    
            try:
                proveedor = Proveedor.objects.get(pro_usu_fk=request.user.usu_id)
            except Proveedor.DoesNotExist:
                    return Response(status=status.HTTP_401_UNAUTHORIZED, data='Error. No tienes permisos para realizar esta consulta')   
            else:
                try:
                    documento_pago = Pago.objects.filter(pag_pro_fk = proveedor.pro_cod
                                                         ,pag_fecha__gte = fecha_i_format, pag_fecha__lte =  fecha_f_format)
                except Pago.DoesNotExist:
                    return Response(status=status.HTTP_404_NOT_FOUND,data='No hay Retenciones de ISLR disponibles para consultar')   
                
                for doc in documento_pago:
                    try:
                        documento_pago_renglon = PagoDocReng.objects.get(pagDocReng_cob_num_fk = doc, pagDocReng_tipo_doc_fk = 'ISLR')
                    
                    except PagoDocReng.DoesNotExist:
                        return Response(status=status.HTTP_400_BAD_REQUEST,data='Hubo un error al consultar uno de los datos. Intente nuevamente')
                    else:
                        try:
                            documento_pago_renten_renglon = PagoRentenReng.objects.get(pagRentReng_rowguid_reng_cob  = documento_pago_renglon)
                        except PagoRentenReng.DoesNotExist:
                            return Response(status=status.HTTP_400_BAD_REQUEST,data='Hubo un error al consultar uno de los datos. Intente nuevamente')
                        else:
                            
                            nuevo_pago = PagoRentenRengSerializer(documento_pago_renten_renglon)
                            pagos_list.append(nuevo_pago.data)
                                     
                proveedor_info = ProveedorSerializer(proveedor)    
                return Response ({
                    'proveedor':proveedor_info.data,
                    'pagos_retencion_islr': pagos_list,
                    'fecha_i': fecha_i_response,
                    'fecha_f': fecha_f_response
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
                if permiso_serialized.per_nombre == 'Ver Retenciones ISLR': 
                      
                    proveedor_cod = request.query_params.get('prov_cod', None)
                    if proveedor_cod is None:
                        
                        return Response(status=status.HTTP_400_BAD_REQUEST,data='Selecciona el Proveedor a consultar')
                    else:   
                        try:
                            documento_pago = Pago.objects.filter(pag_pro_fk = proveedor_cod
                                                         ,pag_fecha__gte = fecha_i_format, pag_fecha__lte =  fecha_f_format)
                            
                        except Pago.DoesNotExist:
                            return Response(status=status.HTTP_404_NOT_FOUND,data='No hay Retenciones de ISLR disponibles para consultar')
                            
                        for doc in documento_pago:
                            try:
                                documento_pago_renglon = PagoDocReng.objects.get(pagDocReng_cob_num_fk = doc, pagDocReng_tipo_doc_fk = 'ISLR')
                            
                            except PagoDocReng.DoesNotExist:
                                return Response(status=status.HTTP_400_BAD_REQUEST,data='Hubo un error al consultar uno de los datos. Intente nuevamente')
                            else:
                                try:
                                    documento_pago_renten_renglon = PagoRentenReng.objects.get(pagRentReng_rowguid_reng_cob  = documento_pago_renglon)
                                except PagoRentenReng.DoesNotExist:
                                    return Response(status=status.HTTP_400_BAD_REQUEST,data='Hubo un error al consultar uno de los datos. Intente nuevamente')
                                else:
                                    
                                    nuevo_pago = PagoRentenRengSerializer(documento_pago_renten_renglon)
                                    pagos_list.append(nuevo_pago.data)
                                            
                        proveedor_info = ProveedorSerializer(Proveedor.objects.get(pk =proveedor_cod))  
                          
                        return Response ({
                            'proveedor':proveedor_info.data,
                            'pagos_retencion_islr': pagos_list,
                            'fecha_i': fecha_i_response,
                            'fecha_f': fecha_f_response
                        })    
                            
            return Response (status=status.HTTP_401_UNAUTHORIZED, data='Error. El empleado no tiene permiso para realizar esta consulta') 