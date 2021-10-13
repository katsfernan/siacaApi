from django import forms
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField

from user_login_api import models



class UserCreationForm(forms.ModelForm):
    """
    Formulario para crear nuevos usuarios desde el sitio admin de django
    """
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirmar contraseña', widget=forms.PasswordInput)

    class Meta:
        model = models.Usuario
        fields = ('usu_correo', 'usu_estatus',)

    def clean_password2(self):
        # Check that the two password entries match
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("Passwords don't match")
        return password2

    def save(self, commit=True):
        # Save the provided password in hashed format
        user = super().save(commit=False)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        return user


class UserChangeForm(forms.ModelForm):
    """
    Formulario para modificar usuarios desde el sitio admin de django
    """
    password = ReadOnlyPasswordHashField()

    class Meta:
        model = models.Usuario
        fields = ('usu_correo', 'usu_estatus', 'usu_tipo', 'password')

    def clean_password(self):
        return self.initial["password"]


class UsuarioAdmin(UserAdmin):
    """
    Clase modificada para lograr 
    crear, ver, modificar, eliminar usuarios desde el sitio admin de django
    """
    form = UserChangeForm
    add_form = UserCreationForm

    list_display = ('usu_correo', 'last_login', 'usu_fecha_modif', 'usu_usu_modif_fk', 'usu_tipo', 'usu_estatus', 'is_staff', 'is_superuser')
    search_fields = ('usu_correo',)
    readonly_fields=('usu_id', 'last_login')

    filter_horizontal = ()
    list_filter = ()
    ordering=('usu_correo',)
    fieldsets = (
        (None, {
            'fields': ('usu_correo', 'usu_usu_modif_fk', 'usu_estatus', 'password', 'usu_tipo', 'is_active', 'is_staff', 'is_superuser'),
        }),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('usu_correo', 'usu_usu_modif_fk', 'usu_estatus', 'usu_tipo', 'password1', 'password2'),
        }),
    )
    

# Registro de los modelos que se pueden
# crear, ver, modificar, eliminar desde el sitio admin de django
admin.site.register(models.Usuario, UsuarioAdmin)
admin.site.register(models.Rol)
admin.site.register(models.Permiso)
admin.site.register(models.RolPermiso)
admin.site.register(models.Departamento)
admin.site.register(models.Empleado)
admin.site.register(models.ArchivoGestionCalidad)
admin.site.register(models.ArchivoGestionCalidadDepartamento)
admin.site.register(models.Cliente)
admin.site.register(models.Proveedor)
admin.site.register(models.ArchivoGestionCalidad)
admin.site.register(models.ArchivoGestionCalidadDepartamento)
admin.site.register(models.Anuncio)
admin.site.register(models.EmpleadoAnuncio)
admin.site.register(models.TipoProveedor)
admin.site.register(models.Zona)
