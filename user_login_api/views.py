import re
from rest_framework import serializers, status
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.decorators import api_view, authentication_classes, permission_classes

from .models import Cliente, Departamento, Empleado, Permiso, Proveedor, Rol, RolPermiso, Usuario
from .serializers import ClienteSerializer, DepartamentoSerializer, EmpleadoSerializer, PermisoSerializer, ProveedorSerializer, RolPermisoSerializer, RolSerializer, UsuarioSerializer

from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated


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
        if (request.data['user_type'] == 'Empleado'):
            try:
                user_data = EmpleadoSerializer(Empleado.objects.get(emp_usu_fk=user.pk))
            except Empleado.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Empleado no encontrado.')
        elif (request.data['user_type'] == 'Cliente'):            
            try:
                user_data = ClienteSerializer(Cliente.objects.get(cli_usu_fk=user.pk))
            except Cliente.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Cliente no encontrado.')
        elif (request.data['user_type'] == 'Proveedor'):            
            try:
                user_data = ProveedorSerializer(Proveedor.objects.get(pro_usu_fk=user.pk))
            except Proveedor.DoesNotExist:
                return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Proveedor no encontrado.')
        else:
            return Response(status=status.HTTP_404_NOT_FOUND, data='Error. Tipo de usuario no encontrado.')

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
                'codigo' : per_codigo.per_codigo,
                'nombre' : per_codigo.per_nombre,
            })
        return Response({
            'token': token.key,
            'user_id': user.pk,
            'email': user.usu_correo,
            'user_data': {
                'type' : request.data['user_type'],
                'data' : user_data.data,
                'permissions' : permissions
            }
        })


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
            departamentos = Departamento.objects.filter(dep_estatus=request.query_params["status"])
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