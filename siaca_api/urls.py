"""siaca_api URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from os import name
from django.contrib import admin
from django.urls import path
from user_login_api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('rol/', views.api_rols_view, name='roles'),
    path('rol/<pk>', views.api_rol_view, name='rol'),
    path('usuario/<pk>', views.api_usuarios_wiev, name='usuario'),
    path('login/', views.CustomAuthToken.as_view(), name='login'),
    path('departamento/', views.api_depts_view, name='departamentos'),
    path('permiso/', views.api_permisos_view, name='permisos'),
    path('archivos-gestion-calidad/', views.api_archivosDeGestionDeCalidad_view, name='archivos de gestion de la calidad'),
    path('empleado/<emp_pk>/archivos-gestion-calidad/', views.api_archivosDeGestionDeCalidadEmpleado_view, name='archivos de gestion de la calidad del empleado'),
    path('empleado/<emp_pk>/archivos-gestion-calidad/<agc_pk>', views.api_archivoDeGestionDeCalidadEmpleado_view, name='archivo de gestion de la calidad del empleado'),
    path('empleado/<emp_pk>/recibos-de-pago/', views.api_recibosDePagoEmpleado_view, name='recibos de pago del empleado'),
]
