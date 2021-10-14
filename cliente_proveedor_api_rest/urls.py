from os import name
from django.urls import include, path


from cliente_proveedor_api_rest import views

urlpatterns = [
    path('facturas/', views.factura_venta, name='factura_venta'),
    path('facturas/detalle/<int:pk>',views.factura_venta_detalle,name='factura_venta_detalle'),
    path('pruebaCelery/', views.pruebaCelery,name= 'pruebaCelery'),
    path('insertarArticulos/',views.insertarArticulos, name= 'insertarArticulos'),
    
    path('enviarEmail/', views.enviarEmail,name= 'enviarEmail')
    ]
