import os
from django.http.response import HttpResponse
from django.utils.functional import partition
from rest_framework import status
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.decorators import api_view, authentication_classes, permission_classes

from .models import Anuncio, ArchivoGestionCalidad, ArchivoGestionCalidadDepartamento, Cliente, Departamento, Empleado, EmpleadoAnuncio, Permiso, Proveedor, Rol, RolPermiso, Usuario
from .serializers import AnuncioSerializer, ArchivoGestionCalidadDepartamentoSerializer, ArchivoGestionDeCalidadSerializer, ClienteSerializer, DepartamentoSerializer, EmpleadoAnuncioSerializer, EmpleadoSerializer, PermisoSerializer, ProveedorSerializer, RolPermisoSerializer, RolSerializer, UsuarioSerializer

from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from ftplib import FTP
import random, string
from datetime import date, datetime
import pyodbc

class CustomAuthToken(ObtainAuthToken):
    """
    Clase que se encarga de verificar el inicio de sesion retornando
    la informacion referente a dicho usuario
    """

    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data,
                                           context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, created = Token.objects.get_or_create(user=user)
        if (user.usu_tipo == 'Empleado'):
            try:
                user_data = EmpleadoSerializer(
                    Empleado.objects.get(emp_usu_fk=user.pk))
            except Empleado.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Empleado no encontrado.')
        elif (user.usu_tipo == 'Cliente'):
            try:
                user_data = ClienteSerializer(
                    Cliente.objects.get(cli_usu_fk=user.pk))
            except Cliente.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Cliente no encontrado.')
        elif (user.usu_tipo == 'Proveedor'):
            try:
                user_data = ProveedorSerializer(
                    Proveedor.objects.get(pro_usu_fk=user.pk))
            except Proveedor.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Proveedor no encontrado.')
        else:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Tipo de usuario no encontrado.')
        if(user.usu_estatus):
            rol_id = (user_data.data["rol"])["rol_id"]
            rol_permissions = RolPermisoSerializer(
                RolPermiso.objects.all().filter(
                    rp_rol_fk=rol_id,
                    rp_estatus=True),
                many=True)
            permissions = []
            for permission in rol_permissions.data:
                per_codigo = (Permiso.objects.get(per_id=permission["rp_per_fk"]))
                permissions.append({
                    'codigo': per_codigo.per_codigo,
                    'nombre': per_codigo.per_nombre,
                })
            return Response({
                'token': token.key,
                'user_id': user.pk,
                'user_type': user.usu_tipo,
                'email': user.usu_correo,
                'user_data': {
                    'type': request.data['user_type'],
                    'data': user_data.data,
                    'permissions': permissions
                }
            })
        else:
            return Response(status=status.HTTP_401_UNAUTHORIZED, data="Error. Este usuario está desactivado")


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_rols_view(request):
    """View que retorna todos los roles de la BD"""

    try:
        rol = Rol.objects.all()
    except Rol.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = RolSerializer(rol, many=True)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_rol_view(request, pk):
    """View que retorna un rol en base a su llave primaria"""

    try:
        rol = Rol.objects.get(rol_id=pk)
    except Rol.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Rol no encontrado')

    if request.method == 'GET':
        serializer = RolSerializer(rol)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_usuarios_wiev(request, pk):
    """View que retorna un usuario en base a su llave primaria"""

    try:
        usuario = Usuario.objects.get(usu_id=pk)
    except Usuario.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Usuario no encontrado')

    if request.method == 'GET':
        serializer = UsuarioSerializer(usuario)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_depts_view(request):
    """
    View que retorna todos los departamentos.
    Filtra los departamentos si el url contiene el parametro status
    """

    try:
        departamentos = Departamento.objects.all()
    except Departamento.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND, data='Error. No existen departamentos')

    if request.method == 'GET':
        if request.query_params.__contains__("status"):
            departamentos = Departamento.objects.filter(
                dep_estatus=request.query_params["status"])
        serializer = DepartamentoSerializer(departamentos, many=True)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_permisos_view(request):
    """View que retorna todos los permisos"""

    try:
        permisos = Permiso.objects.all()
    except Permiso.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PermisoSerializer(permisos, many=True)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_archivosDeGestionDeCalidad_view(request):
    """View que retorna todos los archivos de gestion de calidad"""

    try:
        archivos = ArchivoGestionCalidad.objects.all()
    except ArchivoGestionCalidad.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ArchivoGestionDeCalidadSerializer(archivos, many=True)
        return Response(serializer.data)


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_archivosDeGestionDeCalidadEmpleado_view(request, emp_pk):
    """View que retorna todos los archivos de gestion de calidad del empleado que está realizando la petición"""

    if request.method == 'GET':
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
            if(empleado.data['emp_id'] != int(emp_pk)):
                return Response(status=status.HTTP_403_FORBIDDEN, data='Error. No tienes permisos para realizar esta consulta')
            departamento = empleado.data['departamento']
            archivos = ArchivoGestionCalidadDepartamentoSerializer(
                ArchivoGestionCalidadDepartamento.objects.filter(ae_dep_fk=departamento['dep_id']), many=True)
            if archivos.data == []:
                raise ArchivoGestionCalidadDepartamento.DoesNotExist
            response = []
            for archivo in archivos.data:
                archivo = ArchivoGestionDeCalidadSerializer(
                    ArchivoGestionCalidad.objects.get(agc_id=archivo['ae_agc_fk'])).data
                if request.query_params.__contains__("tipo") and archivo['agc_tipo'] == request.query_params["tipo"]:
                    response.append(archivo)
            return Response(response)
        except Empleado.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Empleado no encontrado.')
        except ArchivoGestionCalidadDepartamento.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Este empleado no tiene archivos de gestion de calidad asociados.')
        except ArchivoGestionCalidad.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. No existen archivos de gestion de calidad.')


def randomword(length):
   letters = string.ascii_lowercase
   return ''.join(random.choice(letters) for i in range(length))


@api_view(['GET', ])
def api_archivoDeGestionDeCalidadEmpleado_view(request, emp_pk, agc_pk):
    """View que retorna un archivo en base a su id"""

    if request.method == 'GET':
        ftpClient = FTP('184.154.47.82')
        ftpClient.login('psiaca@siacaservicios.com', 'pasante2021')

        try:
            archivo = ArchivoGestionCalidad.objects.get(agc_id=agc_pk)
            serializer = ArchivoGestionDeCalidadSerializer(archivo)
            titulo = serializer.data['agc_titulo']
            if os.path.isfile(serializer.data['agc_titulo']):
                titulo = titulo.replace('.',randomword(6)+'.')
            with open(titulo, 'w+b') as file:
                ftpClient.retrbinary('RETR ' + serializer.data['agc_direccion'], file.write)
            with open(titulo, 'rb') as doc:
                content = doc.read()
                if titulo.endswith(".docx"):
                    response = HttpResponse(
                        content,
                        content_type='application/vnd.openxmlformats-officedocument.wordprocessingml.document'
                    )
                    response['Content-Disposition'] = 'attachment; filename=%s' %titulo
                elif titulo.endswith(".xlsx"):
                    response = HttpResponse(
                        content,
                        content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                    )
                    response['Content-Disposition'] = 'attachment; filename=%s' %titulo
                elif titulo.endswith(".pdf"):
                    response = HttpResponse(
                        content,
                        content_type='application/pdf'
                    )
                    response['Content-Disposition'] = 'inline; filename=%s' %titulo
                elif titulo.endswith(".vsdx"):
                    response = HttpResponse(
                        content,
                        content_type='application/vnd.ms-visio.drawing'
                    )
                    response['Content-Disposition'] = 'attachment; filename=%s' %titulo
                response['Content-Length'] = len(content)
            if os.path.isfile(serializer.data['agc_titulo']):
                os.remove(serializer.data['agc_titulo'])
            return response
        except ArchivoGestionCalidad.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Archivo no encontrado')
        finally:
            ftpClient.quit()


@api_view(['GET', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_recibosDePagoEmpleado_view(request, emp_pk):
    """View que retorna los recibos de pago de un empleado en base a su id"""

    direccion_servidor = '127.0.0.1'
    nombre_bd = 'SIA_N'
    nombre_usuario = 'siaca_api_nomina'
    password = 'AD@79410893'
    consulta = '''
    SELECT nomi.reci_num as reci_num, nomi.co_cont as co_cont, sncont.des_cont as des_cont, snconcep.des_conce as des_conce,
	snemple.nombre_completo as nombre, snemple.ci as ci, nomi.monto as monto,  nomi.fec_emis as fecha
    FROM snnomi nomi
    INNER JOIN snemple on nomi.cod_emp = snemple.cod_emp 
    INNER JOIN sncont on nomi.co_cont = sncont.co_cont
    INNER JOIN snconcep on nomi.co_conce = snconcep.co_conce
    WHERE snemple.ci = (?) 
    AND nomi.fec_emis between (?) AND (?)
    ORDER BY nomi.fec_emis asc
    '''              
    if request.method == 'GET':
        try:
            empleado = EmpleadoSerializer((Empleado.objects.get(
                emp_usu_fk=(UsuarioSerializer(request.user).data['usu_id']))))
            if(empleado.data['emp_id'] != int(emp_pk)):
                return Response(status=status.HTTP_403_FORBIDDEN, data='Error. No tienes permisos para realizar esta consulta')
            ci = str(empleado.data['emp_ci'])
            ci = ci[::-1]
            ci_str = ''
            for index, digito in enumerate(ci):
                if index % 3 == 0 and index != 0:
                    ci_str = ci_str + '.'
                ci_str = ci_str + digito
            ci_str = ci_str[::-1]
            conexion = pyodbc.connect('DRIVER={ODBC Driver 11 for SQL Server};SERVER=' +
                              direccion_servidor+';DATABASE='+nombre_bd+';UID='+nombre_usuario+';PWD=' + password)
            cursor = conexion.cursor()
            cursor.execute(consulta, ci_str, request.query_params["start"], request.query_params["end"])
            columns = [column[0] for column in cursor.description]
            recibos = cursor.fetchall()
            response = []
            for recibo in recibos:
                response.append(dict(zip(columns, recibo)))
            return Response(response)
        except Empleado.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Empleado no encontrado.')
        except pyodbc.Error as error:
            return Response(error.args[1])


@api_view(['POST', 'PATCH', 'PUT'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_anuncio_view(request):
    """View que crea o actualiza un anuncio en base al id del anuncio"""

    if request.method == 'POST':
        titulo = request.data['anu_titulo']
        mensaje = request.data['anu_mensaje']
        usu_modif = Usuario.objects.get(usu_id=request.user.usu_id)
        anuncio = Anuncio(anu_titulo=titulo, anu_mensaje=mensaje, anu_fecha_modif=datetime.now(), anu_usu_modif_fk=usu_modif)
        anuncio.save()
        if anuncio.anu_id:
            return Response(status=status.HTTP_201_CREATED, data='Success. Se creó el anuncio exitosamente')
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST, data='Error. No se pudo crear el anuncio')

    elif request.method == 'PATCH':
        anuncio_id = request.data['anu_id']

        if not request.data.get('anu_titulo'):
            anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id))
            data = request.data.copy()
            data['anu_titulo'] = anuncio.data['anu_titulo']
            data['anu_fecha_modif'] = datetime.now()
            usu_modif = Usuario.objects.get(usu_id=request.user.usu_id)
            data['anu_usu_modif_fk'] = request.user.usu_id
            anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id), data=data)
            if anuncio.is_valid():
                anuncio.save()
                return Response(anuncio.data)
            return Response(anuncio.errors)

        elif not request.data.get('anu_mensaje'):
            anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id))
            data = request.data.copy()
            data['anu_mensaje'] = anuncio.data['anu_mensaje']
            data['anu_fecha_modif'] = datetime.now()
            usu_modif = Usuario.objects.get(usu_id=request.user.usu_id)
            data['anu_usu_modif_fk'] = request.user.usu_id
            anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id), data=data)
            if anuncio.is_valid():
                anuncio.save()
                return Response(anuncio.data)
            return Response(anuncio.errors)

    elif request.method == 'PUT':
        anuncio_id = request.data['anu_id']
        anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id))
        data = request.data.copy()
        data['anu_fecha_modif'] = datetime.now()
        usu_modif = Usuario.objects.get(usu_id=request.user.usu_id)
        data['anu_usu_modif_fk'] = request.user.usu_id
        anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=anuncio_id), data=data)
        if anuncio.is_valid():
            anuncio.save()
            return Response(anuncio.data)
        return Response(anuncio.errors)

            


@api_view(['POST', ])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_anuncioEmpleados_view(request):
    """View que crea un anuncio y se lo envía a todos los empleado que pertenecen a un departamento"""

    if request.method == 'POST':
        titulo = request.data['anu_titulo']
        mensaje = request.data['anu_mensaje']
        usu_modif = Usuario.objects.get(usu_id=request.user.usu_id)
        anuncio = Anuncio(anu_titulo=titulo, anu_mensaje=mensaje, anu_fecha_modif=datetime.now(), anu_usu_modif_fk=usu_modif)
        anuncio.save()
        if anuncio.anu_id and request.query_params.__contains__("departamento"):
            if request.query_params['departamento'] == '0':
                empleados = EmpleadoSerializer(Empleado.objects.all(), many=True)
                for empleado in empleados.data:
                    empleado = Empleado.objects.get(emp_id=empleado['emp_id'])
                    anuncioEmpleado = EmpleadoAnuncio(ea_fecha_enviado=datetime.now(), ea_anu_fk=anuncio, ea_emp_fk=empleado)
                    anuncioEmpleado.save()
                return Response(status=status.HTTP_201_CREATED, data='Success. Se creó el anuncio exitosamente')
            else:
                empleados = EmpleadoSerializer(Empleado.objects.filter(emp_dep_fk=request.query_params['departamento']), many=True)
                for empleado in empleados.data:
                    empleado = Empleado.objects.get(emp_id=empleado['emp_id'])
                    anuncioEmpleado = EmpleadoAnuncio(ea_fecha_enviado=datetime.now(), ea_anu_fk=anuncio, ea_emp_fk=empleado)
                    anuncioEmpleado.save()
                return Response(status=status.HTTP_201_CREATED, data='Success. Se creó el anuncio exitosamente')
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST, data='Error. No se pudo crear el anuncio')


@api_view(['GET', 'POST',])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def api_anunciosEmpleado_view(request, emp_pk):
    """View que retorna todos los anuncios sin ver de un empleado en base a su id"""
    
    if request.method == 'GET':
        anuncios = EmpleadoAnuncioSerializer(EmpleadoAnuncio.objects.filter(ea_emp_fk=emp_pk, ea_visto=False), many=True)
        if anuncios.data:
            response = []
            for anuncio in anuncios.data:
                anuncio = AnuncioSerializer(Anuncio.objects.get(anu_id=(anuncio['anuncio'])['anu_id']))
                response.append(anuncio.data)
            return Response(response)
        return Response(status=status.HTTP_404_NOT_FOUND, data='No posees anuncios pendientes por ver.')

    if request.method == 'POST':
        try:
            anuncio = EmpleadoAnuncio.objects.filter(ea_emp_fk=emp_pk, ea_anu_fk=request.data.get('anuncio_id')).update(ea_visto=True, ea_fecha_visto=datetime.now())
            if anuncio == 0:
                raise EmpleadoAnuncio.DoesNotExist
            return Response(status=status.HTTP_200_OK, data='Success. Anuncio actualizado con éxito.')
        except EmpleadoAnuncio.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Anuncio no encontrado.')