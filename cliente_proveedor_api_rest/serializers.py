from django.db.models import fields
from rest_framework import serializers
from .models import FacturaVentaRenglon, CondicionPago, Moneda, FacturaVenta, PagoRetencionIva
    
class CondicionPagoSerializer (serializers.ModelSerializer):
    
    class Meta:
        model= CondicionPago
        fields = ['cp_id','cp_descripcion','cp_dias_cred']

class MonedaSerializer (serializers.ModelSerializer):
    
    class Meta:
        model = Moneda 
        fields= ['mond.cod','mon_descripcion']
        
class FacturaVentaSerializer (serializers.ModelSerializer):
    
    clienteDesc = serializers.ReadOnlyField()
    CondicionPagoDesc = serializers.ReadOnlyField()
    
    class Meta:
        model = FacturaVenta
        fields = [
            'fac_doc_num',
            'fac_fecha_emi',
            'fac_fecha_venc',
            'fac_fecha_reg',
            'fac_num_control',
            'fac_tasa',
            'fac_total_bruto',
            'fac_monto_imp',
            'fac_monto_total',
            'clienteDesc',
            'CondicionPagoDesc'

        ]
        
class FacturaVentaRenglonSerializer (serializers.ModelSerializer):


    articuloDesc = serializers.ReadOnlyField()
    
    class Meta:
        model = FacturaVentaRenglon
        fields = [
            'facren_id',
            'facren_reng_num',
            'facren_cod_alm',
            'facren_total_art',
            'facren_precio_venta',
            'facren_porc_imp',
            'facren_monto_imp',
            'facren_reng_neto',
            'facren_pendiente',
            'facren_comentario',
            'facren_fac_doc_fk',
            'articuloDesc'
        ]
        
class PagoRetencionIvaSerializer (serializers.ModelSerializer):
    
    class Meta:
        model = PagoRetencionIva
        fields = [
            'pagRetIva_doc_num',
            'pagRetIva_periodo',
            'pagRetIva_fecha_doc',
            'pagRetIva_doc_num_control',
            'pagRetIva_base_imponible',
            'pagRetIva_monto_ret_imp',
            'pagRetIva_num_comprobante',
            'pagRetIva_alicuota',
            'pagRetIva_pro_fk'
        ]
        
    
    
