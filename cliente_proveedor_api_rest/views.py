from datetime import datetime
import pandas as pd

import pyodbc
from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from user_login_api.models import Cliente, Empleado, Permiso, Proveedor, RolPermiso, Usuario, Rol
from user_login_api.serializers import EmpleadoSerializer, PermisoSerializer, ProveedorSerializer, UsuarioSerializer, \
    ClienteSerializer
from .models import FacturaVenta, FacturaVentaRenglon, PagoRetencionIva, Moneda, CondicionPago
from .serializers import FacturaVentaSerializer, FacturaVentaRenglonSerializer, PagoRetencionIvaSerializer
from .tasks import send_email_task


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


@api_view(['GET', ])
def prueba_profit(request):
        #CREANDO CONEXION A DB
    direccion_servidor = 'DESKTOP-6A1RO2L'
    nombre_bd = 'SIACA_2020'
    nombre_usuario = 'siaca_api'
    password = 'siaca'
    try:
        conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                              direccion_servidor+';Trusted_Connection=yes;DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
         # OK! conexión exitosa

    #CREANDO CONSULTA A PROFIT PLUS
    #fecha_consulta = datetime.now()
        fecha_consulta = '2005-02-09'

        consulta_factura_encabezado = '''
        SELECT 
        ltrim(rtrim(doc_num)), format(fec_emis,'yyyy-MM-dd'),format(fec_venc,'yyyy-MM-dd') , format(fec_reg,'yyyy-MM-dd'),
        ltrim(rtrim(n_control)), tasa, total_bruto, monto_imp, total_neto,ltrim(rtrim(co_cli)), ltrim(rtrim(co_mone)), 
        ltrim(rtrim(co_cond))
        FROM saFacturaVenta 
        WHERE fec_emis >= (?)
        '''

        consulta_factura_renglon = '''
        SELECT
        reng_num, ltrim(rtrim(co_alma)), total_art, prec_vta, porc_imp, monto_imp, reng_neto, pendiente, ltrim(rtrim(comentario)), 
        ltrim(rtrim(doc_num)), ltrim(rtrim(co_art))
        FROM saFacturaVentaReng
        WHERE doc_num = (?)
        '''

        consulta_cliente = '''
        SELECT 
        ltrim(rtrim(co_cli)),cli_des,ltrim(rtrim(email)),tip_cli 
        FROM saCliente
        WHERE ltrim(rtrim(co_cli)) = (?)
        '''
        facturasNuevas = []


        cursor_factura_encabezado = conexion.cursor()
        cursor_factura_encabezado.execute(consulta_factura_encabezado, fecha_consulta)
        facturas_encabezado = cursor_factura_encabezado.fetchall()
        # facturas_encabezado = pd.read_sql_query(consulta_factura_encabezado, conexion, params=fecha_consulta)
        # facturas_encabezado[0]
        for fac in facturas_encabezado:
            doc_num = int(fac[0])
            co_cli = fac[9]
            try:
               factura = FacturaVenta.objects.get(pk=doc_num)
            except FacturaVenta.DoesNotExist:
                print('La factura {facNum} no existe'.format(facNum=doc_num))
                try:
                    cliente_existente = Cliente.objects.get(pk=co_cli)
                except Cliente.DoesNotExist:
                    cursor_cliente = conexion.cursor()
                    cursor_cliente.execute(consulta_cliente, co_cli)
                    cli = cursor_cliente.fetchone()
                    cursor_cliente.close()
                    print(cli[2])
                    if cli[2]:
                        try:
                            usuario_existente = Usuario.objects.get(usu_correo=cli[2])

                        except Usuario.DoesNotExist:
                            pass
                    #         usuario_nuevo = Usuario.objects.create_user(usu_correo =cli[2],
                    #                                     password='pbkdf2_sha256$180000$P1u8jvvDK78e$3QzMEvK+flQ13/jzY40/gI68rZu0nxAYFNpfbaMYY8M=')
                    #         usuario_nuevo.save()
                    #
                    #         cliente_nuevo = Cliente(cli_doc_num=cli[0],cli_descripcion=cli[1],cli_email = cli[2],
                    #                 cli_tipo_cli = cli[3],cli_usu_fk=usuario_nuevo.usu_id)
                    #
                    #         cliente_nuevo.save()
                        else:
                            rolCliente = Rol.objects.get(rol_nombre='Cliente')
                            cliente_nuevo = Cliente(cli_doc_num=cli[0],cli_descripcion=cli[1],cli_email=cli[2],
                                                    cli_tipo_cli=cli[3],cli_usu_fk=usuario_existente,cli_rol_fk=rolCliente)
                            cliente_nuevo.save()
                #No tiene correo electrónico
                    else:
                        pass
                #Cliente existe, validamos si tiene usuario asignado
                else:
                    if cliente_existente.cli_email:
                        try:
                            clienteSerialized = ClienteSerializer(cliente_existente)
                            usuario_existente = Usuario.objects.get(pk = clienteSerialized.data['cli_usu_fk'])
                        except Usuario.DoesNotExist:
                            usuario_nuevo = Usuario.objects.create_user(usu_correo =cliente_existente.cli_email,
                                                        password='pbkdf2_sha256$180000$P1u8jvvDK78e$3QzMEvK+flQ13/jzY40/gI68rZu0nxAYFNpfbaMYY8M=')
                            usuario_nuevo.save()
                            cliente_existente.cli_usu_fk = usuario_nuevo.usu_id
                            cliente_existente.save()

                formatoFecha = "%Y-%m-%d"
                fechaEmiFormateada = datetime.strptime(fac[1], formatoFecha).date()
                fechaVencFormateada = datetime.strptime(fac[2], formatoFecha).date()
                fechaRegFormateada = datetime.strptime(fac[3], formatoFecha).date()


                clienteFactura = Cliente.objects.get(pk=fac[9])
                monedaFactura = Moneda.objects.get(pk=fac[10])
                condicionPagoFactura = CondicionPago.objects.get(pk=int(fac[11]) if fac[11] else fac[11])

                nuevaFactura = FacturaVenta(fac_doc_num=doc_num, fac_fecha_emi=fechaEmiFormateada,
                                            fac_fecha_venc=fechaVencFormateada,fac_fecha_reg=fechaRegFormateada,
                                            fac_num_control=fac[4], fac_tasa=float(fac[5]),
                                            fac_total_bruto=float(fac[6]), fac_monto_imp=float(fac[7]),
                                            fac_monto_total=float(fac[8]),fac_cli_fk=clienteFactura,
                                            fac_moneda_fk=monedaFactura, fac_cp_fk=condicionPagoFactura)
                nuevaFactura.save()
                facturasNuevas.append(nuevaFactura)
                cursor_factura_renglon = conexion.cursor()
                cursor_factura_renglon.execute(consulta_factura_renglon, doc_num)
                facturas_renglon = cursor_factura_renglon.fetchall()
                for facren in facturas_renglon:
                    pass
                    # factura_renglon_nueva = FacturaVentaRenglon()
                asunto = 'Nueva factura en su perfil de cliente Siaca'
                msg = 'Usted tiene una nueva factura a consultar. Número de factura: {numerofactura}'.format(numerofactura = nuevaFactura.fac_doc_num)
                send_email_task('tokijin559@fretice.com', asunto, msg)

        if facturasNuevas:
            return Response(status=status.HTTP_200_OK, data='Hay nuevas facturas')
        else:
            return Response(status=status.HTTP_204_NO_CONTENT, data='No hay nuevas facturas')

    except Exception as error:
    # Atrapar error
        return Response(error)
