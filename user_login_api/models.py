from os import truncate
from django.db import models
from django.conf import settings
from django.dispatch import receiver
from django.db.models.signals import post_save
from django.contrib.auth.base_user import BaseUserManager
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager


from rest_framework.authtoken.models import Token

class UsuarioManager(BaseUserManager):
    
    def create_user(self, usu_correo, password=None):
        if not usu_correo:
            raise ValueError('Los usuarios deben contener un correo electronico')
        user = self.model(
            usu_correo = self.normalize_email(usu_correo),
        )
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, usu_correo, password=None):
        user = self.create_user(
            usu_correo = self.normalize_email(usu_correo),
            password = password,
        )
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)
        return user


class Usuario(AbstractBaseUser):

    usu_id = models.AutoField(primary_key=True)
    usu_correo = models.CharField(unique=True, max_length=255)
    usu_fecha_modif = models.DateTimeField(auto_now=True)
    usu_estatus = models.BooleanField(default=True)
    usu_usu_modif_fk = models.ForeignKey('self', on_delete=models.DO_NOTHING, db_column='usu_usu_modif_fk', related_name='usu_usu_modif_id')
    usu_tipo = models.CharField(default='Empleado', max_length=250)

    objects = UsuarioManager()
    is_staff = models.BooleanField(default=False)
    is_active =  models.BooleanField(default=True)
    is_superuser =  models.BooleanField(default=False)
    USERNAME_FIELD = 'usu_correo'

    class Meta:
        db_table = 'Usuario'

    def __str__(self) -> str:
        return self.usu_correo

    def has_perm(self, perm, obj=None):
        return self.is_staff
    
    def has_module_perms(self, app_label):
        return True


@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)


class Permiso(models.Model):
    per_id = models.AutoField(primary_key=True)
    per_codigo = models.CharField(unique=True, max_length=255)
    per_nombre = models.CharField(max_length=255)
    per_fecha_modif = models.DateTimeField()
    per_estatus = models.BooleanField(default=True)
    per_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='per_usu_modif_fk')

    class Meta:
        db_table = 'Permiso'

    def __str__(self) -> str:
        return self.per_nombre

class Rol(models.Model):
    rol_id = models.AutoField(primary_key=True)
    rol_nombre = models.CharField(max_length=255)
    rol_descripcion = models.CharField(max_length=500)
    rol_fecha_modif = models.DateTimeField()
    rol_estatus = models.BooleanField(default=True)
    rol_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='rol_usu_modif_fk')
    rol_permisos = models.ManyToManyField(Permiso, through='RolPermiso')

    class Meta:
        db_table = 'Rol'

    def __str__(self) -> str:
        return self.rol_nombre


class RolPermiso(models.Model):
    rp_id = models.AutoField(primary_key=True)
    rp_fecha_modif = models.DateTimeField()
    rp_estatus = models.BooleanField(default=True)
    rp_rol_fk = models.ForeignKey(Rol, on_delete=models.DO_NOTHING, db_column='rp_rol_fk')
    rp_per_fk = models.ForeignKey(Permiso, on_delete=models.DO_NOTHING, db_column='rp_per_fk')
    rp_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='rp_usu_modif_fk')

    class Meta:
        db_table = 'Rol_Permiso'


class Departamento(models.Model):
    dep_id = models.AutoField(primary_key=True)
    dep_nombre = models.CharField(max_length=255)
    dep_descripcion = models.CharField(max_length=500)
    dep_fecha_modif = models.DateTimeField()
    dep_estatus = models.BooleanField(default=True)
    dep_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='dep_usu_modif_fk')

    class Meta:
        db_table = 'Departamento'

    def __str__(self) -> str:
        return self.dep_nombre


class Empleado(models.Model):
    emp_id = models.AutoField(primary_key=True)
    emp_nombre = models.CharField(max_length=255)
    emp_apellido = models.CharField(max_length=255)
    emp_correo_personal = models.CharField(max_length=255, blank=True, null=True)
    emp_rif = models.CharField(max_length=255, blank=True, null=True)
    emp_ci = models.IntegerField(unique=True)
    emp_fecha_modif = models.DateTimeField()
    emp_estatus = models.BooleanField(default=True)
    emp_usu_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='emp_usu_fk', related_name='emp_usu_fk')
    emp_rol_fk = models.ForeignKey(Rol, on_delete=models.DO_NOTHING, db_column='emp_rol_fk')
    emp_dep_fk = models.ForeignKey(Departamento, on_delete=models.DO_NOTHING, db_column='emp_dep_fk')
    emp_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='emp_usu_modif_fk', related_name='emp_usu_modif_fk')

    class Meta:
        db_table = 'Empleado'

    def __str__(self) -> str:
        return str(self.emp_ci) + ' ' + self.emp_nombre + ' ' + self.emp_apellido


class Cliente(models.Model):
    cli_doc_num = models.IntegerField(primary_key=True)
    cli_descripcion = models.CharField(max_length=255)
    cli_descripcion2 = models.CharField(max_length=255, blank=True, null=True)
    cli_email = models.CharField(unique=True, max_length=255, blank=True, null=True)
    cli_tipo_cli = models.IntegerField()
    cli_fecha_modif = models.DateTimeField()
    cli_estatus = models.BooleanField(default=True)
    cli_usu_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='cli_usu_fk', related_name='cli_usu_fk')
    cli_rol_fk = models.ForeignKey(Rol, on_delete=models.DO_NOTHING, db_column='cli_rol_fk')
    cli_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='cli_usu_modif_fk', related_name='cli_usu_modif_fk')

    class Meta:
        db_table = 'Cliente'

    def __str__(self) -> str:
        return str(self.cli_doc_num) + ' ' + self.cli_descripcion.capitalize() + ' ' + self.cli_descripcion2.capitalize()

class TipoProveedor(models.Model):
    tprov_id = models.AutoField(primary_key=True)
    tprov_descripcion = models.CharField(max_length=50)
    tprov_detalle = models.CharField(max_length=50,blank=True, null=True)
    tprov_detalle2 = models.CharField(max_length=50,blank=True, null=True)
    tprov_detalle3 = models.CharField(max_length=50,blank=True, null=True)
    tprov_detalle4 = models.CharField(max_length=50,blank=True, null=True)
   
    class Meta:
        db_table = 'TipoProveedor'

    def __str__(self) -> str:
        return str(self.tprov_id) + ' ' + self.tprov_descripcion.capitalize() 
            
class Zona(models.Model):
    zon_id = models.AutoField(primary_key=True)
    zon_descripcion = models.CharField(max_length=100)
    class Meta:
        db_table = 'Zona'

    def __str__(self) -> str:
        return str(self.zon_id) + '' + self.zon_descripcion.capitalize()
     
class Proveedor(models.Model):
    pro_rif = models.CharField(max_length=100, primary_key=True)
    pro_descripcion = models.CharField(max_length=100)
    pro_email = models.CharField(unique=True, max_length=50, blank=True, null=True)
    pro_direc1 = models.CharField(max_length=150)
    pro_direc2 = models.CharField(max_length=150, blank=True, null=True)
    pro_telefono = models.CharField(max_length= 20, blank=True, null=True)
    pro_fecha_modif = models.DateTimeField()
    pro_estatus = models.BooleanField(default=True)
    pro_tprov_fk  = models.ForeignKey(TipoProveedor, on_delete=models.DO_NOTHING, db_column='pro_tprov_fk', blank=True, null=True)
    pro_zon_fk = models.ForeignKey(Zona, on_delete=models.DO_NOTHING, db_column='pro_zon_fk', blank=True, null=True)
    pro_usu_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pro_usu_fk', blank=True, null=True, related_name='pro_usu_fk')
    pro_rol_fk = models.ForeignKey(Rol, on_delete=models.DO_NOTHING, db_column='pro_rol_fk', blank=True, null=True)
    pro_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pro_usu_modif_fk', blank=True, null=True, related_name='pro_usu_modif_fk')
    class Meta:
        db_table = 'Proveedor'

    def __str__(self) -> str:
        return str(self.pro_cod) + ' ' + self.pro_descripcion + ' ' + self.pro_descripcion2
class ArchivoGestionCalidad(models.Model):
    agc_id = models.AutoField(primary_key=True)
    agc_titulo = models.CharField(max_length=255)
    agc_descripcion = models.CharField(max_length=500, blank=True, null=True)
    agc_direccion = models.CharField(max_length=500)
    agc_fecha_modif = models.DateTimeField()
    agc_tipo = models.CharField(max_length=250, default='Operacional')
    agc_estatus = models.BooleanField(default=True)
    agc_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='agc_usu_modif_fk')
    agc_departamentos = models.ManyToManyField(Departamento, through='ArchivoGestionCalidadDepartamento')

    class Meta:
        db_table = 'ArchivoGestionCalidad'


    def __str__(self) -> str:
        return self.agc_titulo


class ArchivoGestionCalidadDepartamento(models.Model):
    ae_id = models.AutoField(primary_key=True)
    ae_fecha_modif = models.DateTimeField()
    ae_estatus = models.BooleanField(default=True)
    ae_dep_fk = models.ForeignKey(Departamento, on_delete=models.DO_NOTHING, db_column='ae_dep_fk')
    ae_agc_fk = models.ForeignKey(ArchivoGestionCalidad, on_delete=models.DO_NOTHING, db_column='ae_agc_fk')
    ae_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='ae_usu_modif_fk')

    class Meta:
        db_table = 'ArchivoGestionCalidad_Departamento'
        unique_together = [['ae_dep_fk', 'ae_agc_fk']]


class Anuncio(models.Model):
    anu_id = models.AutoField(primary_key=True)
    anu_titulo = models.CharField(max_length=255)
    anu_mensaje = models.CharField(max_length=500)
    anu_fecha_modif = models.DateTimeField()
    anu_status = models.BooleanField(default=True)
    anu_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='anu_usu_modif_fk')
    anu_empleados = models.ManyToManyField(Empleado, through='EmpleadoAnuncio')

    class Meta:
        db_table = 'Anuncio'

    def __str__(self) -> str:
        return self.anu_mensaje


class EmpleadoAnuncio(models.Model):
    ea_id = models.AutoField(primary_key=True)
    ea_fecha_enviado = models.DateTimeField()
    ea_fecha_visto = models.DateTimeField(blank=True, null=True)
    ea_visto = models.BooleanField(default=False)
    ea_anu_fk = models.ForeignKey(Anuncio, on_delete=models.DO_NOTHING, db_column='ea_anu_fk')
    ea_emp_fk = models.ForeignKey(Empleado, on_delete=models.DO_NOTHING, db_column='ea_emp_fk')

    class Meta:
        db_table = 'Empleado_Anuncio'
        unique_together = [['ea_anu_fk', 'ea_emp_fk']]


