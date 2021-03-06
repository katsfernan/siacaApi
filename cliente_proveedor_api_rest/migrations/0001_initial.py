# Generated by Django 3.0 on 2021-11-30 15:40

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('user_login_api', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Articulo',
            fields=[
                ('art_cod', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('art_fecha_reg', models.DateField()),
                ('art_descripcion', models.CharField(max_length=255)),
                ('art_tipo', models.CharField(max_length=1)),
                ('art_anulado', models.BooleanField()),
                ('art_fecha_inac', models.DateField(null=True)),
                ('art_usu_modif_fk', models.ForeignKey(blank=True, db_column='art_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='art_usu_modif_fk', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Articulo',
            },
        ),
        migrations.CreateModel(
            name='CondicionPago',
            fields=[
                ('cp_id', models.AutoField(primary_key=True, serialize=False)),
                ('cp_descripcion', models.CharField(max_length=50)),
                ('cp_dias_cred', models.IntegerField()),
                ('cp_usu_modif_fk', models.ForeignKey(blank=True, db_column='cp_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'CondicionPago',
            },
        ),
        migrations.CreateModel(
            name='FacturaVenta',
            fields=[
                ('fac_doc_num', models.IntegerField(primary_key=True, serialize=False)),
                ('fac_fecha_emi', models.DateField()),
                ('fac_fecha_venc', models.DateField(null=True)),
                ('fac_fecha_reg', models.DateField()),
                ('fac_num_control', models.CharField(max_length=50, null=True)),
                ('fac_tasa', models.FloatField(null=True)),
                ('fac_total_bruto', models.FloatField()),
                ('fac_monto_imp', models.FloatField()),
                ('fac_monto_total', models.FloatField()),
                ('fac_cli_fk', models.ForeignKey(blank=True, db_column='fac_cli_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Cliente')),
                ('fac_cp_fk', models.ForeignKey(blank=True, db_column='fac_cp_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.CondicionPago')),
            ],
            options={
                'db_table': 'FacturaVenta',
            },
        ),
        migrations.CreateModel(
            name='Moneda',
            fields=[
                ('mon_cod', models.CharField(max_length=10, primary_key=True, serialize=False)),
                ('mon_descripcion', models.CharField(max_length=50)),
                ('mon_cambio', models.FloatField()),
                ('mon_relacion', models.FloatField()),
                ('mon_usu_modif_fk', models.ForeignKey(blank=True, db_column='mon_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Moneda',
            },
        ),
        migrations.CreateModel(
            name='Pago',
            fields=[
                ('pag_cob_num', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('pag_descripcion', models.CharField(max_length=100)),
                ('pag_tasa', models.FloatField()),
                ('pag_fecha', models.DateField()),
                ('pag_moneda_fk', models.ForeignKey(blank=True, db_column='pag_moneda_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.Moneda')),
                ('pag_pro_fk', models.ForeignKey(blank=True, db_column='pag_pro_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Proveedor')),
                ('pag_usu_modif_fk', models.ForeignKey(blank=True, db_column='pag_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Pago',
            },
        ),
        migrations.CreateModel(
            name='PagoDocReng',
            fields=[
                ('pagDocReng_rowguid', models.CharField(max_length=100, primary_key=True, serialize=False)),
                ('pagDocReng_reng_num', models.IntegerField()),
                ('pagDocReng_mont_cob', models.FloatField()),
                ('pagDocReng_nro_doc', models.CharField(max_length=50)),
                ('pagDocReng_nro_fact', models.CharField(max_length=50)),
                ('pagDocReng_cob_num_fk', models.ForeignKey(db_column='pagDocReng_cob_num_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.Pago')),
                ('pagDocReng_rowguid_reng_ori_fk', models.ForeignKey(blank=True, db_column='pagDocReng_rowguid_reng_ori_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.PagoDocReng')),
            ],
            options={
                'db_table': 'PagoDocReng',
            },
        ),
        migrations.CreateModel(
            name='TipoDoc',
            fields=[
                ('tipoDoc_cod', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('tipoDoc_descripcion', models.CharField(max_length=50)),
                ('tipoDoc_usu_modif_fk', models.ForeignKey(blank=True, db_column='tipoDoc_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'TipoDoc',
            },
        ),
        migrations.CreateModel(
            name='PagoRetencionIva',
            fields=[
                ('pagRetIva_id', models.AutoField(primary_key=True, serialize=False)),
                ('pagRetIva_doc_num', models.CharField(max_length=50)),
                ('pagRetIva_periodo', models.CharField(max_length=20)),
                ('pagRetIva_fecha_doc', models.DateField()),
                ('pagRetIva_doc_num_control', models.CharField(blank=True, max_length=50, null=True)),
                ('pagRetIva_nro_doc_afectado', models.CharField(blank=True, max_length=50, null=True)),
                ('pagRetIva_monto_documento', models.FloatField()),
                ('pagRetIva_base_imponible', models.FloatField()),
                ('pagRetIva_monto_ret_imp', models.FloatField()),
                ('pagRetIva_num_comprobante', models.CharField(max_length=50)),
                ('pagRetIva_alicuota', models.FloatField()),
                ('pagRetIva_pro_fk', models.ForeignKey(blank=True, db_column='pagRetIva_pro_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Proveedor')),
                ('pagRetIva_usu_modif_fk', models.ForeignKey(blank=True, db_column='pagRetIva_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'PagoRetencionIva',
            },
        ),
        migrations.CreateModel(
            name='PagoRentenReng',
            fields=[
                ('pagRentReng_id', models.AutoField(primary_key=True, serialize=False)),
                ('pagRentReng_co_islr', models.CharField(max_length=10)),
                ('pagRentReng_monto', models.FloatField()),
                ('pagRentReng_monto_reten', models.FloatField()),
                ('pagRentReng_sustraendo', models.FloatField()),
                ('pagRentReng_porc_retn', models.FloatField()),
                ('pagRentReng_rowguid_reng_cob', models.ForeignKey(blank=True, db_column='pagRentReng_rowguid_reng_cob', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.PagoDocReng')),
                ('pagRentReng_rowguid_reng_cob_usu_modif_fk', models.ForeignKey(blank=True, db_column='pagRentReng_rowguid_reng_cob_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'PagoRentenReng',
            },
        ),
        migrations.AddField(
            model_name='pagodocreng',
            name='pagDocReng_tipo_doc_fk',
            field=models.ForeignKey(blank=True, db_column='pagDocReng_tipo_doc_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.TipoDoc'),
        ),
        migrations.AddField(
            model_name='pagodocreng',
            name='pagDocReng_usu_modif_fk',
            field=models.ForeignKey(blank=True, db_column='pagDocReng_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='FacturaVentaRenglon',
            fields=[
                ('facren_id', models.AutoField(primary_key=True, serialize=False)),
                ('facren_reng_num', models.IntegerField()),
                ('facren_cod_alm', models.CharField(max_length=10)),
                ('facren_total_art', models.FloatField()),
                ('facren_precio_venta', models.FloatField()),
                ('facren_porc_imp', models.IntegerField()),
                ('facren_monto_imp', models.FloatField()),
                ('facren_reng_neto', models.FloatField()),
                ('facren_pendiente', models.FloatField()),
                ('facren_comentario', models.CharField(blank=True, max_length=700, null=True)),
                ('facren_art_fk', models.ForeignKey(blank=True, db_column='facren_art_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.Articulo')),
                ('facren_fac_doc_fk', models.ForeignKey(db_column='facren_fac_doc_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.FacturaVenta')),
                ('facren_usu_modif_fk', models.ForeignKey(blank=True, db_column='facren_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='facren_usu_modif_fk', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'FacturaVentaRenglon',
            },
        ),
        migrations.AddField(
            model_name='facturaventa',
            name='fac_moneda_fk',
            field=models.ForeignKey(blank=True, db_column='fac_moneda_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='cliente_proveedor_api_rest.Moneda'),
        ),
        migrations.AddField(
            model_name='facturaventa',
            name='fac_usu_modif_fk',
            field=models.ForeignKey(blank=True, db_column='fac_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='fac_usu_modif_fk', to=settings.AUTH_USER_MODEL),
        ),
    ]
