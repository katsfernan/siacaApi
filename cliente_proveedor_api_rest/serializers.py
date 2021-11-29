from django.db.models import fields
from rest_framework import serializers
from .models import FacturaVentaRenglon, CondicionPago, Moneda, FacturaVenta, PagoRentenReng, PagoRetencionIva
    
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
    condicionPagoDesc = serializers.ReadOnlyField()
    
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
            'clienteDocNum',
            'clienteDireccion',
            'clienteTelefonos',
            'condicionPagoDesc'

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
            'articuloCod',
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
            'pagRetIva_nro_doc_afectado',
            'pagRetIva_monto_documento',
            'pagRetIva_base_imponible',
            'pagRetIva_monto_ret_imp',
            'pagRetIva_num_comprobante',
            'pagRetIva_alicuota',
            'provDesc',
            'provRif',
            'provDireccion'
        ]
        
class PagoRentenRengSerializer (serializers.ModelSerializer):
    
    class Meta:
        model = PagoRentenReng
        fields = [
            'pagRentReng_co_islr',
            'pagRentReng_monto',
            'pagRentReng_monto_reten',
            'pagRentReng_sustraendo',
            'pagRentReng_porc_retn',
            
            'fecha',
            'numPago' ,       
            'tipoPago',
            'nroDoc'  ,  
        ]
    
