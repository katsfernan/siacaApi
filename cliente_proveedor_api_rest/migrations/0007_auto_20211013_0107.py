# Generated by Django 3.0 on 2021-10-13 05:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cliente_proveedor_api_rest', '0006_remove_facturaventarenglon_facren_costo_unit'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facturaventarenglon',
            name='facren_pendiente',
            field=models.FloatField(),
        ),
    ]