from django.contrib import admin

from cliente_proveedor_api_rest import models



admin.site.register(models.CondicionPago)
admin.site.register(models.Moneda)
admin.site.register(models.FacturaVenta)
admin.site.register(models.Articulo)
admin.site.register(models.FacturaVentaRenglon)
admin.site.register(models.PagoRetencionIva)



