# Generated by Django 3.0 on 2021-11-30 05:31

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('usu_id', models.AutoField(primary_key=True, serialize=False)),
                ('usu_correo', models.CharField(max_length=255, unique=True)),
                ('usu_fecha_modif', models.DateTimeField(auto_now=True)),
                ('usu_estatus', models.BooleanField(default=True)),
                ('usu_tipo', models.CharField(default='Empleado', max_length=250)),
                ('is_staff', models.BooleanField(default=False)),
                ('is_active', models.BooleanField(default=True)),
                ('is_superuser', models.BooleanField(default=False)),
                ('usu_usu_modif_fk', models.ForeignKey(db_column='usu_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, related_name='usu_usu_modif_id', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Usuario',
            },
        ),
        migrations.CreateModel(
            name='Anuncio',
            fields=[
                ('anu_id', models.AutoField(primary_key=True, serialize=False)),
                ('anu_titulo', models.CharField(max_length=255)),
                ('anu_mensaje', models.CharField(max_length=500)),
                ('anu_fecha_modif', models.DateTimeField()),
                ('anu_status', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'Anuncio',
            },
        ),
        migrations.CreateModel(
            name='ArchivoGestionCalidad',
            fields=[
                ('agc_id', models.AutoField(primary_key=True, serialize=False)),
                ('agc_titulo', models.CharField(max_length=255)),
                ('agc_descripcion', models.CharField(blank=True, max_length=500, null=True)),
                ('agc_direccion', models.CharField(max_length=500)),
                ('agc_fecha_modif', models.DateTimeField()),
                ('agc_tipo', models.CharField(default='Operacional', max_length=250)),
                ('agc_estatus', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'ArchivoGestionCalidad',
            },
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('dep_id', models.AutoField(primary_key=True, serialize=False)),
                ('dep_nombre', models.CharField(max_length=255)),
                ('dep_descripcion', models.CharField(max_length=500)),
                ('dep_fecha_modif', models.DateTimeField()),
                ('dep_estatus', models.BooleanField(default=True)),
                ('dep_usu_modif_fk', models.ForeignKey(db_column='dep_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Departamento',
            },
        ),
        migrations.CreateModel(
            name='Empleado',
            fields=[
                ('emp_id', models.AutoField(primary_key=True, serialize=False)),
                ('emp_nombre', models.CharField(max_length=255)),
                ('emp_apellido', models.CharField(max_length=255)),
                ('emp_correo_personal', models.CharField(blank=True, max_length=255, null=True)),
                ('emp_rif', models.CharField(blank=True, max_length=255, null=True)),
                ('emp_ci', models.IntegerField(unique=True)),
                ('emp_fecha_modif', models.DateTimeField()),
                ('emp_estatus', models.BooleanField(default=True)),
                ('emp_dep_fk', models.ForeignKey(db_column='emp_dep_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Departamento')),
            ],
            options={
                'db_table': 'Empleado',
            },
        ),
        migrations.CreateModel(
            name='Permiso',
            fields=[
                ('per_id', models.AutoField(primary_key=True, serialize=False)),
                ('per_codigo', models.CharField(max_length=255, unique=True)),
                ('per_nombre', models.CharField(max_length=255)),
                ('per_fecha_modif', models.DateTimeField()),
                ('per_estatus', models.BooleanField(default=True)),
                ('per_usu_modif_fk', models.ForeignKey(db_column='per_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Permiso',
            },
        ),
        migrations.CreateModel(
            name='Rol',
            fields=[
                ('rol_id', models.AutoField(primary_key=True, serialize=False)),
                ('rol_nombre', models.CharField(max_length=255)),
                ('rol_descripcion', models.CharField(max_length=500)),
                ('rol_fecha_modif', models.DateTimeField()),
                ('rol_estatus', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'Rol',
            },
        ),
        migrations.CreateModel(
            name='TipoProveedor',
            fields=[
                ('tprov_id', models.AutoField(primary_key=True, serialize=False)),
                ('tprov_descripcion', models.CharField(max_length=255)),
                ('tprov_detalle', models.CharField(blank=True, max_length=255, null=True)),
                ('tprov_detalle2', models.CharField(blank=True, max_length=255, null=True)),
                ('tprov_detalle3', models.CharField(blank=True, max_length=255, null=True)),
                ('tprov_detalle4', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'TipoProveedor',
            },
        ),
        migrations.CreateModel(
            name='Zona',
            fields=[
                ('zon_id', models.AutoField(primary_key=True, serialize=False)),
                ('zon_descripcion', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'Zona',
            },
        ),
        migrations.CreateModel(
            name='RolPermiso',
            fields=[
                ('rp_id', models.AutoField(primary_key=True, serialize=False)),
                ('rp_fecha_modif', models.DateTimeField()),
                ('rp_estatus', models.BooleanField(default=True)),
                ('rp_per_fk', models.ForeignKey(db_column='rp_per_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Permiso')),
                ('rp_rol_fk', models.ForeignKey(db_column='rp_rol_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Rol')),
                ('rp_usu_modif_fk', models.ForeignKey(db_column='rp_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Rol_Permiso',
            },
        ),
        migrations.AddField(
            model_name='rol',
            name='rol_permisos',
            field=models.ManyToManyField(through='user_login_api.RolPermiso', to='user_login_api.Permiso'),
        ),
        migrations.AddField(
            model_name='rol',
            name='rol_usu_modif_fk',
            field=models.ForeignKey(db_column='rol_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('pro_cod', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('pro_rif', models.CharField(max_length=100, unique=True)),
                ('pro_descripcion', models.CharField(max_length=100)),
                ('pro_email', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('pro_direc1', models.CharField(max_length=255, null=True)),
                ('pro_direc2', models.CharField(blank=True, max_length=255, null=True)),
                ('pro_telefono', models.CharField(blank=True, max_length=50, null=True)),
                ('pro_fecha_modif', models.DateTimeField()),
                ('pro_estatus', models.BooleanField(default=True)),
                ('pro_contribu_e', models.BooleanField()),
                ('pro_rol_fk', models.ForeignKey(blank=True, db_column='pro_rol_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Rol')),
                ('pro_tprov_fk', models.ForeignKey(blank=True, db_column='pro_tprov_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.TipoProveedor')),
                ('pro_usu_fk', models.ForeignKey(blank=True, db_column='pro_usu_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='pro_usu_fk', to=settings.AUTH_USER_MODEL)),
                ('pro_usu_modif_fk', models.ForeignKey(blank=True, db_column='pro_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='pro_usu_modif_fk', to=settings.AUTH_USER_MODEL)),
                ('pro_zon_fk', models.ForeignKey(blank=True, db_column='pro_zon_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Zona')),
            ],
            options={
                'db_table': 'Proveedor',
            },
        ),
        migrations.CreateModel(
            name='EmpleadoAnuncio',
            fields=[
                ('ea_id', models.AutoField(primary_key=True, serialize=False)),
                ('ea_fecha_enviado', models.DateTimeField()),
                ('ea_fecha_visto', models.DateTimeField(blank=True, null=True)),
                ('ea_visto', models.BooleanField(default=False)),
                ('ea_anu_fk', models.ForeignKey(db_column='ea_anu_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Anuncio')),
                ('ea_emp_fk', models.ForeignKey(db_column='ea_emp_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Empleado')),
            ],
            options={
                'db_table': 'Empleado_Anuncio',
                'unique_together': {('ea_anu_fk', 'ea_emp_fk')},
            },
        ),
        migrations.AddField(
            model_name='empleado',
            name='emp_rol_fk',
            field=models.ForeignKey(db_column='emp_rol_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Rol'),
        ),
        migrations.AddField(
            model_name='empleado',
            name='emp_usu_fk',
            field=models.ForeignKey(db_column='emp_usu_fk', on_delete=django.db.models.deletion.DO_NOTHING, related_name='emp_usu_fk', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='empleado',
            name='emp_usu_modif_fk',
            field=models.ForeignKey(db_column='emp_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, related_name='emp_usu_modif_fk', to=settings.AUTH_USER_MODEL),
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('cli_doc_num', models.CharField(max_length=25, primary_key=True, serialize=False)),
                ('cli_descripcion', models.CharField(max_length=255)),
                ('cli_direccion', models.CharField(blank=True, max_length=255, null=True)),
                ('cli_telefonos', models.CharField(blank=True, max_length=80, null=True)),
                ('cli_email', models.CharField(blank=True, max_length=255, null=True, unique=True)),
                ('cli_tipo_cli', models.IntegerField()),
                ('cli_fecha_modif', models.DateTimeField(default=datetime.datetime.now)),
                ('cli_estatus', models.BooleanField(default=True)),
                ('cli_rol_fk', models.ForeignKey(blank=True, db_column='cli_rol_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Rol')),
                ('cli_usu_fk', models.ForeignKey(blank=True, db_column='cli_usu_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='cli_usu_fk', to=settings.AUTH_USER_MODEL)),
                ('cli_usu_modif_fk', models.ForeignKey(blank=True, db_column='cli_usu_modif_fk', null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='cli_usu_modif_fk', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'Cliente',
            },
        ),
        migrations.CreateModel(
            name='ArchivoGestionCalidadDepartamento',
            fields=[
                ('ae_id', models.AutoField(primary_key=True, serialize=False)),
                ('ae_fecha_modif', models.DateTimeField()),
                ('ae_estatus', models.BooleanField(default=True)),
                ('ae_agc_fk', models.ForeignKey(db_column='ae_agc_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.ArchivoGestionCalidad')),
                ('ae_dep_fk', models.ForeignKey(db_column='ae_dep_fk', on_delete=django.db.models.deletion.DO_NOTHING, to='user_login_api.Departamento')),
                ('ae_usu_modif_fk', models.ForeignKey(db_column='ae_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'ArchivoGestionCalidad_Departamento',
                'unique_together': {('ae_dep_fk', 'ae_agc_fk')},
            },
        ),
        migrations.AddField(
            model_name='archivogestioncalidad',
            name='agc_departamentos',
            field=models.ManyToManyField(through='user_login_api.ArchivoGestionCalidadDepartamento', to='user_login_api.Departamento'),
        ),
        migrations.AddField(
            model_name='archivogestioncalidad',
            name='agc_usu_modif_fk',
            field=models.ForeignKey(db_column='agc_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='anuncio',
            name='anu_empleados',
            field=models.ManyToManyField(through='user_login_api.EmpleadoAnuncio', to='user_login_api.Empleado'),
        ),
        migrations.AddField(
            model_name='anuncio',
            name='anu_usu_modif_fk',
            field=models.ForeignKey(db_column='anu_usu_modif_fk', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL),
        ),
    ]
