from django.db import models
from django.conf import settings

from user_login_api.models import Cliente, Proveedor
 
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
    mon_cod = models.CharField(primary_key=True, max_length=10)
    mon_descripcion = models.CharField(max_length=50)
    mon_cambio = models.FloatField()
    mon_relacion = models.FloatField()
    mon_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='mon_usu_modif_fk', blank=True, null=True)
        
    class Meta:
        db_table = 'Moneda'

    def __str__(self) -> str:
        return str(self.mon_cod) 
    
class FacturaVenta(models.Model):
    fac_doc_num = models.IntegerField(primary_key=True)
    fac_fecha_emi = models.DateField()
    fac_fecha_venc = models.DateField(null=True)
    fac_fecha_reg = models.DateField()
    fac_num_control = models.CharField(null=True, max_length=50)
    fac_tasa = models.FloatField(null=True)
    fac_total_bruto = models.FloatField()
    fac_monto_imp = models.FloatField()
    fac_monto_total = models.FloatField()
    fac_cli_fk = models.ForeignKey(Cliente, on_delete=models.DO_NOTHING, db_column='fac_cli_fk', blank=True, null=True)
    fac_moneda_fk = models.ForeignKey(Moneda, on_delete=models.DO_NOTHING, db_column='fac_moneda_fk', blank=True, null=True)
    fac_cp_fk = models.ForeignKey(CondicionPago, on_delete=models.DO_NOTHING, db_column='fac_cp_fk', blank=True, null=True)
    fac_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='fac_usu_modif_fk', blank=True, null=True, related_name='fac_usu_modif_fk')

    class Meta:
        db_table = 'FacturaVenta'
        
    def __str__(self) -> str:
        return str(self.fac_doc_num)
    
    @property
    def clienteDocNum (self):
        return self.fac_cli_fk.cli_doc_num
    
    @property
    def clienteDesc (self):
        return self.fac_cli_fk.cli_descripcion
    
    @property
    def clienteDireccion(self):
        return self.fac_cli_fk.cli_direccion
    
    @property
    def clienteTelefonos(self):
        return self.fac_cli_fk.cli_telefonos
    
    @property
    def condicionPagoDesc(self):
        return self.fac_cp_fk.cp_descripcion
        
class Articulo (models.Model):
    art_cod =  models.CharField(max_length=50,primary_key=True)
    art_fecha_reg = models.DateField()
    art_descripcion = models.CharField(max_length=255)
    art_tipo = models.CharField(max_length=1)
    art_anulado = models.BooleanField()
    art_fecha_inac =models.DateField(null=True)
    art_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='art_usu_modif_fk', blank=True, null=True, related_name='art_usu_modif_fk')

    class Meta:
        db_table = 'Articulo'
        
    def __str__(self) -> str:
        return str(self.art_cod) + '' + self.art_descripcion   

class FacturaVentaRenglon(models.Model):
    facren_id = models.AutoField(primary_key=True)
    facren_reng_num = models.IntegerField()
    facren_cod_alm = models.CharField(max_length=10)
    facren_total_art = models.FloatField()
    facren_precio_venta = models.FloatField() 
    facren_porc_imp = models.IntegerField()
    facren_monto_imp = models.FloatField()
    facren_reng_neto = models.FloatField()
    facren_pendiente = models.FloatField()
    facren_comentario = models.CharField(max_length=700, blank=True, null=True)
    facren_fac_doc_fk = models.ForeignKey(FacturaVenta, on_delete=models.DO_NOTHING, db_column='facren_fac_doc_fk')
    facren_art_fk = models.ForeignKey(Articulo, on_delete=models.DO_NOTHING, db_column='facren_art_fk', blank=True, null=True)
    facren_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='facren_usu_modif_fk', blank=True, null=True, related_name='facren_usu_modif_fk')

    class Meta:
        db_table = 'FacturaVentaRenglon'
        
    def __str__(self) -> str:
        return str(self.facren_id) + '' + str(self.facren_reng_num) + '' + str(self.facren_fac_doc_fk)

    @property
    def articuloCod (self):
        return self.facren_art_fk.art_cod
    @property
    def articuloDesc(self):
        return self.facren_art_fk.art_descripcion

   
class PagoRetencionIva(models.Model):
    pagRetIva_id = models.AutoField(primary_key=True)
    pagRetIva_doc_num = models.CharField(max_length=50)
    pagRetIva_periodo = models.CharField(max_length=20)
    pagRetIva_fecha_doc = models.DateField()
    pagRetIva_doc_num_control = models.CharField(max_length=50, blank=True, null=True)
    pagRetIva_nro_doc_afectado = models.CharField(max_length=50, blank=True, null=True)
    pagRetIva_monto_documento = models.FloatField()
    pagRetIva_base_imponible = models.FloatField()
    pagRetIva_monto_ret_imp = models.FloatField()
    pagRetIva_num_comprobante = models.CharField(max_length=50)
    pagRetIva_alicuota = models.FloatField()
    pagRetIva_pro_fk = models.ForeignKey(Proveedor, on_delete=models.DO_NOTHING, db_column='pagRetIva_pro_fk', blank=True, null=True)
    pagRetIva_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pagRetIva_usu_modif_fk', blank=True, null=True)

    class Meta:
        db_table = 'PagoRetencionIva'

    def __str__(self) -> str:
        return str(self.pagRetIva_doc_num)
    
    @property
    def provDesc(self):
        return self.pagRetIva_pro_fk.pro_descripcion
    
    @property
    def provRif(self):
        return self.pagRetIva_pro_fk.pro_rif
    
    @property
    def provDireccion(self):
        return str(self.pagRetIva_pro_fk.pro_direc1) or ''  + str(self.pagRetIva_pro_fk.pro_direc2) or ''
    

class Pago (models.Model):
    pag_cob_num = models.CharField(max_length=50, primary_key=True)
    pag_descripcion = models.CharField (max_length=100)
    pag_tasa = models.FloatField()
    pag_fecha = models.DateField()
    pag_pro_fk = models.ForeignKey(Proveedor, on_delete=models.DO_NOTHING, db_column='pag_pro_fk', blank=True, null=True)
    pag_moneda_fk =  models.ForeignKey(Moneda, on_delete=models.DO_NOTHING, db_column='pag_moneda_fk', blank=True, null=True)
    pag_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pag_usu_modif_fk', blank=True, null=True)
    
    class Meta:
        db_table = 'Pago'
class TipoDoc (models.Model):
    tipoDoc_cod = models.CharField(max_length=20,primary_key=True)
    tipoDoc_descripcion = models.CharField(max_length= 50)
    tipoDoc_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='tipoDoc_usu_modif_fk', blank=True, null=True)
    class Meta:
        db_table = 'TipoDoc'
class PagoDocReng(models.Model):
    #pagDocReng_id = models.AutoField(primary_key=True)
    pagDocReng_rowguid = models.CharField(max_length= 100, primary_key=True)
    pagDocReng_reng_num = models.IntegerField()
    pagDocReng_mont_cob = models.FloatField()
    pagDocReng_nro_doc = models.CharField(max_length= 50)
    pagDocReng_nro_fact = models.CharField(max_length=50)
    pagDocReng_tipo_doc_fk = models.ForeignKey(TipoDoc, on_delete=models.DO_NOTHING, db_column='pagDocReng_tipo_doc_fk', blank=True, null=True)
    pagDocReng_cob_num_fk = models.ForeignKey(Pago, on_delete=models.DO_NOTHING, db_column='pagDocReng_cob_num_fk')
    pagDocReng_rowguid_reng_ori_fk = models.ForeignKey('self', on_delete=models.DO_NOTHING, db_column='pagDocReng_rowguid_reng_ori_fk', blank=True, null=True)
    pagDocReng_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pagDocReng_usu_modif_fk', blank=True, null=True)
 
    class Meta:
        db_table = 'PagoDocReng'       
    
class PagoRentenReng (models.Model):
    pagRentReng_id = models.AutoField(primary_key=True)
    pagRentReng_co_islr = models.CharField(max_length=10)
    pagRentReng_monto = models.FloatField()
    pagRentReng_monto_reten = models.FloatField()
    pagRentReng_sustraendo = models.FloatField()
    pagRentReng_porc_retn = models.FloatField()
    pagRentReng_rowguid_reng_cob = models.ForeignKey(PagoDocReng, on_delete=models.DO_NOTHING, db_column='pagRentReng_rowguid_reng_cob', blank=True, null=True)
    pagRentReng_rowguid_reng_cob_usu_modif_fk = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, db_column='pagRentReng_rowguid_reng_cob_usu_modif_fk', blank=True, null=True)
    class Meta:
        db_table = 'PagoRentenReng'  
    
    @property
    def fecha (self):
        return self.pagRentReng_rowguid_reng_cob.pagDocReng_cob_num_fk.pag_fecha

    @property
    def numPago(self):
        return self.pagRentReng_rowguid_reng_cob.pagDocReng_cob_num_fk.pag_cob_num
    
    @property
    def tipoPago(self):
        return self.pagRentReng_rowguid_reng_cob.pagDocReng_rowguid_reng_ori_fk.pagDocReng_tipo_doc_fk.tipoDoc_cod
    
    @property
    def nroDoc(self):
        return self.pagRentReng_rowguid_reng_cob.pagDocReng_rowguid_reng_ori_fk.pagDocReng_nro_fact