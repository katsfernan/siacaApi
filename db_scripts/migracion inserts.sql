use SIACA_2020

select concat('INSERT INTO Articulo VALUES (''',rtrim(co_art),''', ','''',format(fecha_reg,'yyyy-MM-dd'),''',''',art_des,''',''',tipo,''',',anulado),
concat(',''',format(fecha_inac,'yyyy-MM-dd'),''',','NULL)') 
from saArticulo
where fecha_inac is not null AND art_des like '%inci%'



select 'INSERT INTO Cliente (cli_doc_num, cli_descripcion, cli_direccion,cli_telefonos,cli_email,cli_tipo_cli,cli_fecha_modif, cli_estatus, cli_usu_fk,cli_rol_fk,cli_usu_modif_fk ) 
VALUES ' , concat('(''',rtrim(co_cli),''',''',cli_des,''',''',direc1,''',''',telefonos,''',''',email,''',',tip_cli,',CURRENT_TIMESTAMP,1,NULL,NULL,1)') 
from saCliente


select 'INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_usu_modif_fk, is_active, is_staff, is_superuser)  VALUES', 
concat(' (''',email,''',','''pbkdf2_sha256$180000$GgQTqS4gZtuG$ICdvD+upE5YDY68g8ve8ifJHSvfFwEERqUjU8wiyXWg=''',',CURRENT_TIMESTAMP,',1,',',1,',',1,',',0,',',0,')')
from saProveedor where isnull(email, '') <> '' 

select 'INSERT INTO FacturaVenta  (fac_doc_num,fac_fecha_emi,fac_fecha_venc,fac_fecha_reg,fac_num_control,fac_tasa,fac_total_bruto,fac_monto_imp,fac_monto_total,fac_cli_fk,fac_moneda_fk,fac_cp_fk,fac_usu_modif_fk) VALUES (
' , CONCAT(rtrim(doc_num),',''',format(fec_emis,'yyyy-MM-dd'),''',''',format(fec_venc,'yyyy-MM-dd'),''',''',format(fec_reg,'yyyy-MM-dd'),''',''',RTRIM(n_control),''',',cast(tasa as decimal(21,2)),',',total_bruto,',',monto_imp,',',total_neto,',''',rtrim(co_cli),''',''',rtrim(co_mone),''',',cast (co_cond as int),',','NULL)')
from saFacturaVenta



select  'INSERT INTO FacturaVentaRenglon (facren_reng_num,facren_cod_alm,facren_total_art,facren_precio_venta,facren_porc_imp,
facren_monto_imp,facren_reng_neto,facren_pendiente,facren_comentario,facren_fac_doc_fk,facren_art_fk,facren_usu_modif_fk) VALUES' ,
CONCAT('(',reng_num,',''',rtrim(co_alma),''',',total_art,',',prec_vta,',',porc_imp,',',monto_imp,',',reng_neto,',',pendiente,',''',comentario,''',',rtrim(doc_num),',''',rtrim(co_art),''',',1,')')
from saFacturaVentaReng

select 'INSERT INTO Proveedor (pro_cod,pro_rif,pro_descripcion,pro_email,pro_direc1,pro_direc2,pro_telefono,pro_fecha_modif,pro_estatus,pro_contribu_e,pro_tprov_fk,
pro_zon_fk,pro_usu_fk,pro_rol_fk,pro_usu_modif_fk) VALUES (''', concat(rtrim(co_prov),''',''',rtrim(rif),''',''',rtrim(prov_des),''',''',rtrim(email),''',''',rtrim(direc1),''',''',rtrim(direc2),''',''',RTRIM(telefonos),''',CURRENT_TIMESTAMP,',1,',',contribu_e,',',cast(tip_pro as int),',',cast(co_zon as int),',NULL,NULL,NULL)')
from saProveedor

select 'INSERT INTO Zona (zon_id,zon_descripcion) VALUES (', concat(rtrim(co_zon),',''',rtrim(zon_des),''')')
from sazona

select 'INSERT INTO TipoProveedor  (tprov_id,tprov_descripcion,tprov_detalle,tprov_detalle2, tprov_detalle3,tprov_detalle4) VALUES (' , concat(rtrim(tip_pro),',''',rtrim(des_tipo),''',''',rtrim(campo1),''',''',rtrim(campo2),''',''',rtrim(campo3),''',''',RTRIM(campo5),''')')
from saTipoProveedor

use siaca_2020
select 'INSERT INTO PagoRetencionIva (pagRetIva_doc_num,pagRetIva_periodo,pagRetIva_fecha_doc,pagRetIva_nro_doc_afectado, pagRetIva_monto_documento, pagRetIva_doc_num_control,pagRetIva_base_imponible,
pagRetIva_monto_ret_imp,pagRetIva_num_comprobante,pagRetIva_alicuota,pagRetIva_pro_fk,pagRetIva_usu_modif_fk) VALUES', concat('(''',rtrim(numero_documento), ''',''',periodo_impositivo,''',''',format(fecha_documento,'yyyy-MM-dd'),''',''', rtrim(numero_documento_afectado),''',',monto_documento,',''' ,rtrim(numero_control_documento),''',',base_imponible,',',monto_ret_imp,',''',num_comprobante,''',',alicuota,',''',rtrim(p.co_prov),''',',1,')')
from saPagoRetenIvaReng r
join saproveedor p on rtrim(p.co_prov) = substring(rtrim(r.rif_comprador),2,9)

SELECT * from saCondicionPago

