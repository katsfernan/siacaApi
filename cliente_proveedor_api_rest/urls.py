from os import name
from django.urls import include, path


from cliente_proveedor_api_rest import views

urlpatterns = [
    #Rutas Clientes
    path('facturas/', views.factura_venta, name='factura_venta'),
    path('facturas/detalle/<int:pk>',views.factura_venta_detalle,name='factura_venta_detalle'),
    #Rutas Proveedores
    path('retenciones/',views.pago_retencion_iva, name='pago_retencion_iva'),
    path('retenciones/detalle/<int:pk>',views.pago_retencion_iva_detalle, name='pago_retencion_iva_detalle'),    
    
    ]
