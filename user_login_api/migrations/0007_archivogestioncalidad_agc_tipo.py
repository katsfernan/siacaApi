# Generated by Django 3.0 on 2021-10-11 21:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_login_api', '0006_auto_20211009_2223'),
    ]

    operations = [
        migrations.AddField(
            model_name='archivogestioncalidad',
            name='agc_tipo',
            field=models.CharField(default='Operacional', max_length=250),
        ),
    ]