from os import name
from django.urls import include, path


from cliente_proveedor_api_rest import views

urlpatterns = [
    #Rutas Clientes
    path('facturas/', views.factura_venta, name='factura_venta'),
    path('facturas/detalle/<int:pk>',views.factura_venta_detalle,name='factura_venta_detalle'),
    #Rutas Proveedores
    path('retenciones/',views.pago_retencion_iva, name='pago_retencion_iva'),
    path('retencionesISLR/',views.retencion_islr_rango, name= 'retencion_islr_rango')
    
    # path('prueba/',views.prueba_profit, name = 'prueba_profit')
   
    ]
