from django.db.models import fields
from rest_framework import serializers
from rest_framework.utils import model_meta
from .models import Anuncio, ArchivoGestionCalidad, ArchivoGestionCalidadDepartamento, Cliente, Departamento, Empleado, EmpleadoAnuncio, Permiso, Proveedor, Rol, RolPermiso, Usuario

class RolSerializer(serializers.ModelSerializer):
    class Meta:
        model = Rol
        fields = ['rol_id', 'rol_nombre', 'rol_descripcion', 'rol_fecha_modif', 'rol_estatus']


class PermisoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Permiso
        fields = ['per_id', 'per_codigo', 'per_nombre', 'per_fecha_modif', 'per_estatus', 'per_usu_modif_fk']

class RolPermisoSerializer(serializers.ModelSerializer):

    class Meta:
        model = RolPermiso
        fields = ['rp_id', 'rp_per_fk', 'rp_fecha_modif', 'rp_estatus']

class DepartamentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Departamento
        fields = ['dep_id', 'dep_nombre', 'dep_descripcion', 'dep_estatus']

class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model  = Usuario
        fields = ['usu_id', 'usu_correo', 'usu_estatus', 'usu_tipo', 'usu_usu_modif_fk']


class EmpleadoSerializer(serializers.ModelSerializer):

    departamento = serializers.SerializerMethodField('get_dept_from_employee')
    rol = serializers.SerializerMethodField('get_rol_from_employee')

    class Meta:
        model = Empleado
        fields = ['emp_id', 'emp_nombre', 'emp_apellido', 'emp_ci', 'emp_estatus', 'departamento', 'rol']

    def get_dept_from_employee(self, empleado):
        departamento = empleado.emp_dep_fk
        return DepartamentoSerializer(departamento).data

    def get_rol_from_employee(self, empleado):
        rol = empleado.emp_rol_fk
        return RolSerializer(rol).data


class ClienteSerializer(serializers.ModelSerializer):

    rol = serializers.SerializerMethodField('get_rol_from_client')

    class Meta:
        model = Cliente
        fields = ['cli_id', 'cli_nombre', 'cli_apellido', 'cli_ci', 'cli_rif', 'cli_estatus', 'rol']

    def get_rol_from_client(self, cliente):
        rol = cliente.cli_rol_fk
        return RolSerializer(rol).data


class ProveedorSerializer(serializers.ModelSerializer):

    rol = serializers.SerializerMethodField('get_rol_from_supplier')

    class Meta:
        model = Proveedor
        fields = ['pro_id', 'pro_nombre', 'pro_apellido', 'pro_ci', 'pro_rif', 'pro_estatus', 'rol']

    def get_rol_from_supplier(self, proveedor):
        rol = proveedor.pro_rol_fk
        return RolSerializer(rol).data

class ArchivoGestionDeCalidadSerializer(serializers.ModelSerializer):

    class Meta:
        model = ArchivoGestionCalidad
        fields = ['agc_id', 'agc_titulo', 'agc_descripcion', 'agc_direccion', 'agc_tipo', 'agc_estatus', 'agc_fecha_modif', 'agc_usu_modif_fk']


class ArchivoGestionCalidadDepartamentoSerializer(serializers.ModelSerializer):

    class Meta:
        model = ArchivoGestionCalidadDepartamento
        fields = ['ae_estatus', 'ae_dep_fk', 'ae_agc_fk', 'ae_fecha_modif', 'ae_usu_modif_fk']


class AnuncioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Anuncio
        fields = ['anu_id', 'anu_titulo', 'anu_mensaje', 'anu_fecha_modif', 'anu_status', 'anu_usu_modif_fk']

class EmpleadoAnuncioSerializer(serializers.ModelSerializer):

    anuncio = serializers.SerializerMethodField('get_anuncio')
    empleado = serializers.SerializerMethodField('get_empleado')

    class Meta:
        model = EmpleadoAnuncio
        fields = ['ea_id', 'ea_fecha_enviado', 'ea_fecha_visto', 'ea_visto', 'anuncio', 'empleado']

    def get_anuncio(self, empleadoAnuncio):
        anuncio = empleadoAnuncio.ea_anu_fk
        return AnuncioSerializer(anuncio).data
        
    def get_empleado(self, empleadoAnuncio):
        empleado = empleadoAnuncio.ea_emp_fk
        return EmpleadoSerializer(empleado).data