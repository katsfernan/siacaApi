from django.db import models
from django.conf import settings

from user_login_api.models import Cliente, Proveedor
 
class ArchivoRetencion(models.Model):
    are_id = models.AutoField(primary_key=True)
    are_titulo = models.CharField(max_length=255)
    are_descripcion = models.CharField(max_length=500)
    are_direccion = models.CharField(max_length=500)
    are_fecha_modif = models.DateTimeField()
    are_estatus = models.BooleanField(default=True)
    are_cli_fk = models.ForeignKey(Cliente, on_delete=models.DO_NOTHING, db_column='are_cli_fk', blank=True, null=True)
    are_pro_fk = models.ForeignKey(Proveedor, on_delete=models.DO_NOTHING, db_column='are_pro_fk', blank=True, null=True)
    are_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='are_usu_modif_fk', blank=True, null=True)

    class Meta:
        db_table = 'ArchivoRetencion'

    def __str__(self) -> str:
        return self.are_titulo

class ArchivoServiciosPrestados(models.Model):
    asp_id = models.AutoField(primary_key=True)
    asp_titulo = models.CharField(max_length=255)
    asp_descripcion = models.CharField(max_length=500)
    asp_direccion = models.CharField(max_length=500)
    asp_fecha_modif = models.DateTimeField()
    asp_estatus = models.BooleanField(default=True)
    asp_pro_fk = models.ForeignKey(Proveedor, on_delete=models.DO_NOTHING, db_column='asp_pro_fk', blank=True, null=True)
    asp_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='asp_usu_modif_fk', blank=True, null=True)

    class Meta:
        db_table = 'ArchivoServiciosPrestados'

    def __str__(self) -> str:
        return self.asp_titulo

class CondicionPago(models.Model):
    cp_id= models.AutoField(primary_key=True)
    cp_descripcion = models.CharField(max_length=50)
    cp_dias_cred = models.IntegerField()
    cp_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='cp_usu_modif_fk', blank=True, null=True)
    
    class Meta:
        db_table = 'CondicionPago'
        
    def __str__(self) -> str:
        return self.cp_descripcion
    
class Moneda (models.Model):
    mon_cod = models.CharField(primary_key=True)
    mon_descripcion = models.CharField(max_length=50)
    mon_cambio = models.IntegerField()
    mon_relacion = models.IntegerField()
    mon_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='mon_usu_modif_fk', blank=True, null=True)
        
    class Meta:
        db_table = 'Moneda'

    def __str__(self) -> str:
        return self.mon_codigo  
    
class FacturaVenta(models.Model):
    fac_doc_num = models.IntegerField(primary_key=True)
    fac_fecha_emi = models.DateField()
    fac_fecha_venc = models.DateField(null=True)
    fac_fecha_reg = models.DateField()
    fac_num_control = models.IntegerField(null=True)
    fac_tasa = models.IntegerField(null=True)
    fac_total_bruto = models.IntegerField()
    fac_monto_imp = models.IntegerField()
    fac_monto_total = models.IntegerField()
    fac_cli_fk = models.ForeignKey(Cliente, on_delete=models.DO_NOTHING, db_column='fac_cli_fk', blank=True, null=True)
    fac_moneda_fk = models.ForeignKey(Moneda, on_delete=models.DO_NOTHING, db_column='fac_moneda_fk', blank=True, null=True)
    fac_cp_fk = models.ForeignKey(CondicionPago, on_delete=models.DO_NOTHING, db_column='fac_cp_fk', blank=True, null=True)
    fac_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pro_usu_modif_fk', blank=True, null=True, related_name='pro_usu_modif_fk')

    class Meta:
        db_table = 'FacturaVenta'
        
    def __str__(self) -> str:
        return str(self.fac_doc_num)
    
    @property
    def clienteDesc (self):
        return self.fac_cli_fk.cli_descripcion  + '' + self.fac_cli_fk.cli_descripcion2 if self.fac_cli_fk.descripcion2 else ''     
    
    @property
    def condicionPagoDesc(self):
        return self.fac_cp_fk.cp_descripcion
        
class Articulo (models.Model):
    art_cod =  models.IntegerField(primary_key=True)
    art_fecha_reg = models.DateField()
    art_descripcion = models.CharField(max_length=100)
    art_tipo = models.CharField(max_length=1)
    art_anulado = models.BooleanField()
    art_fecha_inac =models.DateField()
    art_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='art_usu_modif_fk', blank=True, null=True, related_name='pro_usu_modif_fk')

    class Meta:
        db_table = 'Articulo'
        
    def __str__(self) -> str:
        return str(self.art_cod) + '' + self.art_descripcion   

class FacturaVentaRenglon(models.Model):
    facren_id = models.AutoField(primary_key=True)
    facren_reng_num = models.IntegerField()
    facren_cod_alm = models.CharField(max_length=10)
    facren_total_art = models.IntegerField()
    facren_precio_venta = models.IntegerField() 
    facren_costo_unit = models.IntegerField()
    facren_porc_imp = models.IntegerField()
    facren_monto_imp = models.IntegerField()
    facren_reng_neto = models.IntegerField()
    facren_pendiente = models.BooleanField()
    facren_comentario = models.CharField(max_length=250)
    facren_fac_doc_fk = models.ForeignKey(FacturaVenta, on_delete=models.DO_NOTHING, db_column='facren_fac_doc_fk', blank=True, null=True)
    facren_art_fk = models.ForeignKey(Articulo, on_delete=models.DO_NOTHING, db_column='facren_art_fk', blank=True, null=True)
    facren_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='facren_usu_modif_fk', blank=True, null=True, related_name='pro_usu_modif_fk')

    class Meta:
        db_table = 'FacturaVentaRenglon'
        
    def __str__(self) -> str:
        return str(self.facren_id) + '' + str(self.facren_reng_num) + '' + str(self.facren_fac_doc_fk)

    @property
    def articuloDesc(self):
        return self.facren_art_fk.art_descripcion
    
class PagoRetencionIva(models.Model):
    pagRetIva_doc_num = models.CharField(primary_key=True)
    pagRetIva_periodo = models.CharField(max_length=20)
    pagRetIva_fecha_doc = models.DateField()
    pagRetIva_doc_num_control = models.CharField(max_length=20)
    pagRetIva_base_imponible = models.IntegerField()
    pagRetIva_monto_ret_imp = models.IntegerField()
    pagRetIva_num_comprobante = models.CharField(max_length=50)
    pagRetIva_alicuota = models.IntegerField()
    pagRetIva_pro_fk = models.ForeignKey(Proveedor, on_delete=models.DO_NOTHING, db_column='are_cli_fk', blank=True, null=True)
    are_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='are_usu_modif_fk', blank=True, null=True)

    class Meta:
        db_table = 'PagoRetencionIva'

    def __str__(self) -> str:
        return self.pagRetIva_doc_num
    
    
    
