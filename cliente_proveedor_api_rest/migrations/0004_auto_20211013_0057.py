# Generated by Django 3.0 on 2021-10-13 04:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cliente_proveedor_api_rest', '0003_auto_20211013_0052'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facturaventa',
            name='fac_monto_imp',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='facturaventa',
            name='fac_monto_total',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='facturaventa',
            name='fac_tasa',
            field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name='facturaventa',
            name='fac_total_bruto',
            field=models.FloatField(),
        ),
    ]