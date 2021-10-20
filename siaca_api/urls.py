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
from django.conf import settings
from os import name
from django import urls
from django.contrib import admin
from django.urls import include, path


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
<<<<<<< HEAD
    path('empleado/recibos-de-pago/', views.api_recibosDePagoEmpleado_view, name='recibos de pago del empleado'),
    path('empleado/recibos-de-pago/<reci_num>', views.api_reciboDePagoEmpleado_view, name='pdf de un recibo de pago del empleado'),
    path('empleado/recibos-de-pago-reconv/<reci_num>', views.api_reciboDePagoEmpleadoReconversion_view, name='pdf de un recibo de pago del empleado luego de la reconversion'),
    path('anuncio/', views.api_anuncio_view, name='anuncio del sistema'),
    path('anuncios/', views.api_anuncioEmpleados_view, name='anuncio del sistema'),
    path('empleado/<emp_pk>/anuncio/', views.api_anunciosEmpleado_view, name='recibos de pago del empleado'),
=======

    #Clientes y proveedores
<<<<<<< HEAD
    path('facturas/', views.factura_venta, name='facturas'),
    path('factura/detalle/<int:pk>',views.factura_venta_detalle,name='factura_detalle'),
    path('prueba/',views.views.prueba, name='prueba')
>>>>>>> fa904e1 (modificadas vistas cliente)
=======
    path('reportes/', include('cliente_proveedor_api_rest.urls', namespace=None)),
>>>>>>> 47a1777 (fix endpoints factura_venta y factura_venta_detalle)
]

'''urlpatterns += [
    urls(
        r'^static/(?P<path>.*)$',
        'django.views.static.serve',
        {
            'document_root': settings.STATIC_ROOT,
            'show_indexes': settings.DEBUG,
        }
    ),
]'''
