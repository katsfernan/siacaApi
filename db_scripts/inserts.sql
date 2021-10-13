USE [SIACA_INTRANET];
GO
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('admin@siacaservicios.com', 'pbkdf2_sha256$180000$shScjnY7yiif$Df8g/gpI5H4tKhkqK2bivYZaFyOajMH/xC44vNzV+QY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Direccion', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Operaciones', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Recursos Humanos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Administración y Finanzas', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Tecnología Informática', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Comercialización', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Mantenimiento', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Servicio al Pasajero', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Despacho de Vuelos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Seguridad y Salud en el Trabajo', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Capacitacion y Desarrollo', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Seguridad Operacional', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Organizacion y Metodos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Gestion de la Calidad', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Gestion y Recaudación de Cobros y Pagos', '', CURRENT_TIMESTAMP, 1, 1)
--- USUARIOS ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CUSER', 'Crear Usuarios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RUSER', 'Ver Usuarios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UUSER', 'Modificar Usuarios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DUSER', 'Eliminar Usuarios', CURRENT_TIMESTAMP, 1, 1);

--- ANUNCIOS ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CANUN', 'Crear Anuncios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RANUN', 'Ver Anuncios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UANUN', 'Modificar Anuncios', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DANUN', 'Eliminar Anuncios', CURRENT_TIMESTAMP, 1, 1);

--- RRHH ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CRRHH', 'Crear Recursos Humanos', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RRRHH', 'Ver Recursos Humanos', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('URRHH', 'Modificar Recursos Humanos', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DRRHH', 'Eliminar Recursos Humanos', CURRENT_TIMESTAMP, 1, 1);

--- RECIBOS DE PAGO ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CRECP', 'Crear Recibos de Pago', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RRECP', 'Ver Recibos de Pago', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('URECP', 'Modificar Recibos de Pago', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DRECP', 'Eliminar Recibos de Pago', CURRENT_TIMESTAMP, 1, 1);

--- GESTION DE LA CALIDAD ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CGECA', 'Crear Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RGECA', 'Ver Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UGECA', 'Modificar Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DGECA', 'Eliminar Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);

--- ARCHIVO DE GESTION DE LA CALIDAD ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CARGC', 'Crear Archivos de Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RARGC', 'Ver Archivos de Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UARGC', 'Modificar Archivos de Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DARGC', 'Eliminar Archivos de Gestion de Calidad', CURRENT_TIMESTAMP, 1, 1);

--- ENCUESTAS ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CENCU', 'Crear Encuestas', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RENCU', 'Ver Encuestas', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UENCU', 'Modificar Encuestas', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DENCU', 'Eliminar Encuestas', CURRENT_TIMESTAMP, 1, 1);

--- SMS ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CSMS', 'Crear SMS', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RSMS', 'Ver SMS', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('USMS', 'Modificar SMS', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DSMS', 'Eliminar SMS', CURRENT_TIMESTAMP, 1, 1);

--- SST ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CSST', 'Crear SST', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RSST', 'Ver SST', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('USST', 'Modificar SST', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DSST', 'Eliminar SST', CURRENT_TIMESTAMP, 1, 1);

--- ARCHIVO DE SERVICIOS PRESTADOS ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CASP', 'Crear Archivos de Servicios Prestados', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RASP', 'Ver Archivos de Servicios Prestados', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UASP', 'Modificar Archivos de Servicios Prestados', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DASP', 'Eliminar Archivos de Servicios Prestados', CURRENT_TIMESTAMP, 1, 1);

--- ARCHIVO DE RETENCIONES ---
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('CARE', 'Crear Archivos de Retenciones', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('RARE', 'Ver Archivos de Retenciones', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('UARE', 'Modificar Archivos de Retenciones', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Permiso (per_codigo, per_nombre, per_fecha_modif, per_estatus, per_usu_modif_fk)
VALUES ('DARE', 'Eliminar Archivos de Retenciones', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Director', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Operaciones', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Turno', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('RRHH', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Cuentas por Pagar', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de Compras', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Administracion', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinador de IT', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Supervisor de Rampa', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Ejecutivo de Ralaciones Institucionales', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Operador de Equipos', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Asesor Tecnico', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de RRHH', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinador de Servicios al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Supervisor de Operaciones', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Despachador de Vuelos II', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Asistente de RRHH', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Agente de Servicio al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de IT', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinador de Seguridad y Salud Laboral', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Capacitacion y Adiest', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Capacitacion y Adiest', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Instructor', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Servicios al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de SMS', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Estadisticas de Operaciones', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Asistente de Capacitacion', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Supervisor de Servicios al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Flota', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Mantenimiento', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de Taller', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Operaciones', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de Cocina', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista Organizacion y Metodos', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinadora de Org y Metodos', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Supervisor de Trafico', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de SMS', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista IT', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Agente de Servicios al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de Sistema de Gestion de la Calidad', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Inspector de Calidad', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Supervisor de Limpieza Aeronaves', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Analista de Cobranzas', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Jefe de Servicio al Pasajero', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinador de Almacen', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Director de Proyectos Esp', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Coordinador de Gestion de la Calidad', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Ejecutivo de Nomina', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Almacenista', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Gerente de Recursos Humanos', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Desarrollo de Software', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Asistente de Operaciones', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Ejecutivo de Cuentas por Cobrar', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Cliente', '', CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Rol (rol_nombre, rol_descripcion, rol_fecha_modif, rol_estatus, rol_usu_modif_fk)
VALUES ('Proveedor', '', CURRENT_TIMESTAMP, 1, 1);
--- Director ---

--- USUARIOS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 1, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 2, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 3, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 4, 1);
--- ANUNCIOS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 5, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 7, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 8, 1);
--- RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 9, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 10, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 11, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 12, 1);
--- RECIBOS DE PAGO ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 13, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 15, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 16, 1);
--- GESTION DE LA CALIDAD ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 17, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 19, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 20, 1);
--- ARCHIVO DE GESTION DE LA CALIDAD ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 21, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 23, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 24, 1);
--- ENCUESTAS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 25, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 26, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 27, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 28, 1);
--- SMS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 29, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 30, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 31, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 32, 1);
--- SST ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 33, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 34, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 35, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 36, 1);
--- ANUNCIOS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 37, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 38, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 39, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 40, 1);

--- Gerente de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 26, 1);

--- Gerente de Turno ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 26, 1);

--- RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 1, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 2, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 3, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 4, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 5, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 7, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 8, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 9, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 10, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 11, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 12, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 13, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 15, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 16, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 17, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 19, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 20, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 21, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 23, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 24, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 25, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 26, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 27, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 28, 1);

--- Analista de Cuentas por Pagar ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 26, 1);

--- Jefe de Compras ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 26, 1);

--- Gerente de Administracion ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 26, 1);

--- Coordinador de IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 26, 1);

--- Supervisor de Rampa ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 26, 1);

--- Ejecutivo de Ralaciones Institucionales ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 26, 1);

--- Operador de Equipos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 26, 1);

--- Asesor Tecnico ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 26, 1);

--- Analista de RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 26, 1);

--- Coordinador de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 26, 1);

--- Supervisor de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 26, 1);

--- Despachador de Vuelos II ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 26, 1);

--- Asistente de RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 26, 1);

--- Agente de Servicio al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 26, 1);

--- Jefe de IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 26, 1);

--- Coordinador de Seguridad y Salud Laboral ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 26, 1);

--- Gerente de Capacitacion y Adiest ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 26, 1);

--- Analista de Capacitacion y Adiest ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 26, 1);

--- Instructor ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 26, 1);

--- Gerente de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 26, 1);

--- Gerente de SMS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 26, 1);

--- Estadisticas de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 26, 1);

--- Asistente de Capacitacion ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 26, 1);

--- Supervisor de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 26, 1);

--- Analista de Flota ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 26, 1);

--- Analista de Mantenimiento ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 26, 1);

--- Jefe de Taller ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 26, 1);

--- Analista de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 26, 1);

--- Jefe de Cocina ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 26, 1);

--- Analista Organizacion y Metodos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 26, 1);

--- Coordinadora de Org y Metodos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 26, 1);

--- Supervisor de Trafico ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 26, 1);

--- Analista de SMS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 26, 1);

--- Analista IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 26, 1);

--- Agente de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 26, 1);

--- Jefe de Sistema de Gestion de la Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 26, 1);

--- Inspector de Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 26, 1);

--- Supervisor de Limpieza Aeronaves ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 26, 1);

--- Analista de Cobranzas ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 26, 1);

--- Jefe de Servicio al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 26, 1);

--- Coordinador de Almacen ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 26, 1);

--- Director de Proyectos Esp ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 26, 1);

--- Coordinador de Gestion de la Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 26, 1);

--- Ejecutivo de Nomina ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 26, 1);

--- Almacenista ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 26, 1);

--- Gerente de Recursos Humanos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 26, 1);

--- Desarrollo de Software ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 26, 1);

--- Asistente de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 26, 1);

--- Ejecutivo de Cuentas por Cobrar ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 26, 1);

--- Director ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 1, 26, 1);

--- Gerente de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 2, 26, 1);

--- Gerente de Turno ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 3, 26, 1);

--- RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 4, 26, 1);

--- Analista de Cuentas por Pagar ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 5, 26, 1);

--- Jefe de Compras ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 6, 26, 1);

--- Gerente de Administracion ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 7, 26, 1);

--- Coordinador de IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 8, 26, 1);

--- Supervisor de Rampa ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 9, 26, 1);

--- Ejecutivo de Ralaciones Institucionales ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 10, 26, 1);

--- Operador de Equipos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 11, 26, 1);

--- Asesor Tecnico ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 12, 26, 1);

--- Analista de RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 13, 26, 1);

--- Coordinador de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 14, 26, 1);

--- Supervisor de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 15, 26, 1);

--- Despachador de Vuelos II ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 16, 26, 1);

--- Asistente de RRHH ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 17, 26, 1);

--- Agente de Servicio al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 18, 26, 1);

--- Jefe de IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 19, 26, 1);

--- Coordinador de Seguridad y Salud Laboral ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 20, 26, 1);

--- Gerente de Capacitacion y Adiest ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 21, 26, 1);

--- Analista de Capacitacion y Adiest ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 22, 26, 1);

--- Instructor ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 23, 26, 1);

--- Gerente de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 24, 26, 1);

--- Gerente de SMS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 25, 26, 1);

--- Estadisticas de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 26, 26, 1);

--- Asistente de Capacitacion ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 27, 26, 1);

--- Supervisor de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 28, 26, 1);

--- Analista de Flota ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 29, 26, 1);

--- Analista de Mantenimiento ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 30, 26, 1);

--- Jefe de Taller ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 31, 26, 1);

--- Analista de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 32, 26, 1);

--- Jefe de Cocina ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 33, 26, 1);

--- Analista Organizacion y Metodos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 34, 26, 1);

--- Coordinadora de Org y Metodos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 35, 26, 1);

--- Supervisor de Trafico ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 36, 26, 1);

--- Analista de SMS ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 37, 26, 1);

--- Analista IT ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 38, 26, 1);

--- Agente de Servicios al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 39, 26, 1);

--- Jefe de Sistema de Gestion de la Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 40, 26, 1);

--- Inspector de Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 41, 26, 1);

--- Supervisor de Limpieza Aeronaves ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 42, 26, 1);

--- Analista de Cobranzas ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 43, 26, 1);

--- Jefe de Servicio al Pasajero ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 44, 26, 1);

--- Coordinador de Almacen ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 45, 26, 1);

--- Director de Proyectos Esp ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 46, 26, 1);

--- Coordinador de Gestion de la Calidad ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 47, 26, 1);

--- Ejecutivo de Nomina ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 48, 26, 1);

--- Almacenista ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 49, 26, 1);

--- Gerente de Recursos Humanos ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 50, 26, 1);

--- Desarrollo de Software ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 51, 26, 1);

--- Asistente de Operaciones ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 52, 26, 1);

--- Ejecutivo de Cuentas por Cobrar ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 14, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 18, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 22, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 53, 26, 1);

--- Cliente ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 54, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 54, 42, 1);

--- Proveedor ---
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 55, 6, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 55, 38, 1);
INSERT INTO Rol_Permiso (rp_fecha_modif, rp_estatus, rp_rol_fk, rp_per_fk, rp_usu_modif_fk)
VALUES (CURRENT_TIMESTAMP, 1, 55, 42, 1);

-- USUARIOS --
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('acastro@siacaservicios.com', 'pbkdf2_sha256$180000$KXGTCYxOCeXX$9Ym3rb3jd0Yc3ukRlOyIdfobNfYK3SBW4JmtN8oEDr0=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ggarrido@siacaservicios.com', 'pbkdf2_sha256$180000$nrZ98Y7KUnmZ$0ylLbb0v8ORPspzbLtfz4X2R+40Phu3/P+C97f5+YvI=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ppereda@siacaservicios.com', 'pbkdf2_sha256$180000$Y5ezIjQuJ772$irfyRzAOVJbiptnRNc1A8zh2vuEG9+Z9GdKDdyt1h74=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('gmesa@siacaservicios.com', 'pbkdf2_sha256$180000$qI6plbyCRAxr$U5SoR4Ir1erHzsYEiBUT8azGErLzfvona8H6C9RnRtk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jmeneses@siacaservicios.com', 'pbkdf2_sha256$180000$cAujuvCqwFc5$on1sa+7tJ5BXHbK1/LrZmCaHfONgy90pn1lBHX59H7w=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 1, 1);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('epereda@siacaservicios.com', 'pbkdf2_sha256$180000$i9ibmIW0OVoy$gyBPo+C0AvNTqQFtfVRjq9xEqKESs9p/7XGsOpH9cR4=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('lrodriguez@siacaservicios.com', 'pbkdf2_sha256$180000$oQM4Ix4u2yUV$Gb+3CHs7QCOwIFxPKpE8O4yB+R3AHuu19Tgz5l4rR+s=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ymendoza@siacaservicios.com', 'pbkdf2_sha256$180000$LKDVSWZNq4WZ$XDOGewTHWxfXD0LSLcg8uyrsRBf7xNKNcnt2CoRZIHU=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rguzman@siacaservicios.com', 'pbkdf2_sha256$180000$I44otvqieZJB$jFbj1QQsdeK29e/89Ayq6stlB/NltomhLQNzolt4Uvc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rcarvajal@siacaservicios.com', 'pbkdf2_sha256$180000$dMLvl3ZTah53$DfH3nIjcMm4aty9vwDJjV3FYdGzV0Uw2IV9CRTqtQPA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('gdelgado@siacaservicios.com', 'pbkdf2_sha256$180000$kcTVUhWtPrBr$yaJoMJcK3XgEzlfzycCCnFp7t53N50kcZY2tSzXi5GA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('opereda@siacaservicios.com', 'pbkdf2_sha256$180000$Rjtqojnx1xV1$J0FxuO2q8w3RZNdFXxYhyO6+eQF501CQ+QX6QFsXg9I=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('psuarez@siacaservicios.com', 'pbkdf2_sha256$180000$GvDbupBcaQSE$+FR6Vbptm4kTG2JGmrmiDVIvuuhNBUsFjl0FI/Moo38=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jgomez@siacaservicios.com', 'pbkdf2_sha256$180000$uT9A7pAkHLyJ$Kr4AYvWzlF/z4Wy0LWk+/suEwfiVjPI7m5zKfp6Q6+o=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jpalencia@siacaservicios.com', 'pbkdf2_sha256$180000$PJ9ES4FQDCfn$61gUBQxN43LIRFPwzenLS320QQFPe9rTHamqB2MymqE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jsolorzano@siacaservicios.com', 'pbkdf2_sha256$180000$ABJtUYZAJkTI$c/WwiwAOg8/BV+RD6W2uyyeR+CAJt5PabPeDJVPN9NA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('tlezman@siacaservicios.com', 'pbkdf2_sha256$180000$H0KVlGKbpNIl$dSVZ5LtkiAM9MjRoBP6EF06033NS4uRap0rK026QSJg=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jpena@siacaservicios.com', 'pbkdf2_sha256$180000$uO4QEk0j0m3U$ocpVaGMR1asmO7acnLB21w2R2y5cGos80oEgObJ971k=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('csalas@siacaservicios.com', 'pbkdf2_sha256$180000$c1tR58EsdJ4R$xYQ3eHYBM05W06MjjwRDfV+uw/gdoveZO3QFuSzW8eU=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('htovar@siacaservicios.com', 'pbkdf2_sha256$180000$YavInHjKjIFm$k/PKNvkDiVHFI9ekcoXaC54ymfYpm7YZDrAzfZcEaBk=3', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jsalazar@siacaservicios.com', 'pbkdf2_sha256$180000$EAVzBHkYREzp$PctcgZse0udylWMOkFvFIWiljzivbxETT/gYowf/B9Y=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('omejias@siacaservicios.com', 'pbkdf2_sha256$180000$QPIZxti2Vsmi$8kyOs48+/00FYIVS8DM1IASEq81ayLwZfmm+7eUc8+g=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mfladung@siacaservicios.com', 'pbkdf2_sha256$180000$LGzfI3FXmX7G$HLfMYrodHcLKsUwHkjxQEu28ecQu/BqSod07bKtqnMY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('nfumero@siacaservicios.com', 'pbkdf2_sha256$180000$zxJ3vqo8iv2y$DRVen8TzyiQRZIlIfEbm8uhEZAWNx875KsP9M+nselY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('kanez@siacaservicios.com', 'pbkdf2_sha256$180000$UA4kq36NzmC7$2RMonE7zUgpVSDXoYFqagvP7zWRYROVLbgoZ1N5FPaE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jmalave@siacaservicios.com', 'pbkdf2_sha256$180000$JlboFlpZCJGh$d4GQptz11KdeuBuBEtcU6bpfv+fAJSy/HWPSnt/fMrg=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('cpaz@siacaservicios.com', 'pbkdf2_sha256$180000$HtJ9jk1mif99$LSd+Be/3Xk1obEedlqdjr5LdmTCT2fg9WjpQLX1BKMQ=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rmata@siacaservicios.com', 'pbkdf2_sha256$180000$1R6HIOVYmXEI$dUzfhlH1JlYeHhLNWB3CPyIkwOK9HbtU/CPvv+p2KOw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('vmoy@siacaservicios.com', 'pbkdf2_sha256$180000$scvxXtYbOiAO$dcvVrdDILaPq4sTC1TvoLFxnSR1u8bKpR4RvXyPlOvA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('wperozo@siacaservicios.com', 'pbkdf2_sha256$180000$4rOsy2zTKt29$uhACzqPNXjCvvj3TJf39XI7FJ50Hm504FzgzMkEmJyE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('lpaiva@siacaservicios.com', 'pbkdf2_sha256$180000$fh2ZaSWqsRWo$ZRtf5zp729HRT8NaSmwn1IK2lJTLBGKjGzdQozyR3UA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('cugueto@siacaservicios.com', 'pbkdf2_sha256$180000$Ft2wHzwkV4s8$ULsGFZNWlaecWbyYaDYrTnT3UxEXBmNCuLQ3ogIsgtY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jrojas@siacaservicios.com', 'pbkdf2_sha256$180000$xYPS6N4CzWZe$Tqf7NVtygfmypUZCni8RcKXll0BsGufo0hPwLhym/7Q=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('nsuarez@siacaservicios.com', 'pbkdf2_sha256$180000$kSdJ33gR8Who$9jg3GHKwVdKwZ2Iviy2euTtJ63uMYeSsmhnhFe+9ubs=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('achacon@siacaservicios.com', 'pbkdf2_sha256$180000$nwSSnm7Y3Ubk$uoKsoe/LxUUGWJCCRhEdosrJ5OlHByazymOkZ/DB3kg=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('lgonzalez@siacaservicios.com', 'pbkdf2_sha256$180000$hE0xIlPkYHAa$N0JZWqE3PBDNnRPtXcaxf9Vy2aeRwtbJSDeaDSeEyzU=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mmarcano@siacaservicios.com', 'pbkdf2_sha256$180000$gHbJUqDZ6TOH$Ml+XJHSVaAd7XkwcVOPx2mDYBwAbbGpi7iqPND4tssw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('lnunez@siacaservicios.com', 'pbkdf2_sha256$180000$vYSpqmEt6eQy$wquFzEfZmL+9oJd+uDPokficpKyxESi1wceuGTWAnQE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('imarquez@siacaservicios.com', 'pbkdf2_sha256$180000$ge4xOJTq4rKt$UzoKhmpE0nWrujVnzCopWE7OwNpdCBQI0wZSxBisF0U=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mvillareal@siacaservicios.com', 'pbkdf2_sha256$180000$RaoUYXuX34Tj$bZsXnenCJ5GnKaXG42xwbxCEQsb4nzKdkS+DSgCLtVk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('estadisticas@siacaservicios.com', 'pbkdf2_sha256$180000$FQDGOFYQ3M9r$+4wNBXJ2es23maWea/7lvZOHToKoJ0gQ8PFTX5yga4s=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mgonzalez@siacaservicios.com', 'pbkdf2_sha256$180000$t8HyLnmbYRaJ$wvwBESPWoQ5V4oERUdDc8oqMusr1Lu3g64CZjaSTyfg=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('japonte@siacaservicios.com', 'pbkdf2_sha256$180000$bNx3Nsw6guLs$cPIpafkkrmcLCjlkzv7FiRd45Wnc7+XoZvDt+5jVaMg=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('bortega@siacaservicios.com', 'pbkdf2_sha256$180000$jGTw41oDy2WM$sL5vXu0r/11vLWEL3+hmGzIl8ZfjUqd+KLzSDclk2Eo=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jnunez@siacaservicios.com', 'pbkdf2_sha256$180000$p8wzpcuEstTD$Xp7CpF26YSnnp0vRUXQmHzCE6ZW4X62Mc9mHndpkVAU=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jarojas@siacaservicios.com', 'pbkdf2_sha256$180000$89BdQBiWPr0N$mu/myBaQnhyD0z+9c7ynh6p4iXGVyjMwuvpWZKC6t+s=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('edgonzalez@siacaservicios.com', 'pbkdf2_sha256$180000$pqfbjxe4y41Y$yNwXNCFUGq5S0ozBeHA1AIRpzxWcTlaeWG+wmh+2hDw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('omartinez@siacaservicios.com', 'pbkdf2_sha256$180000$2yk61wwib0am$1czksb4TWVw/rg92o6jqWgeduDs9fqCLuoBZjH4TqCw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('yimendoza@siacaservicios.com', 'pbkdf2_sha256$180000$fBpVhbBTa6io$xK20kS+fp0KTHXMDc9tY9R0NG0yV97H4UZ8CrRzkr6c=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ydasilva@siacaservicios.com', 'pbkdf2_sha256$180000$8xH4yfBbDIY4$JyB0HOtefh8BAsAKe4JvhuyoS/iZwZvVUFLt15KEdWk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('aguzman@siacaservicios.com', 'pbkdf2_sha256$180000$UReKqvQgu3WT$vDbwgD5FaySXbGyIwZwt/upvat2phFSLIvsBggQrDRQ=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('gibarra@siacaservicios.com', 'pbkdf2_sha256$180000$NMIgbgnAWeOC$zdYfcgHTQqh8e0GLtGN/ZJLe+l0c+aMAkk+UIoL32Io=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('wsanchez@siacaservicios.com', 'pbkdf2_sha256$180000$TLw2dUafI9ey$LAbVuSL3YHmk4WIzG5DY5tUi86F1PNc5J4NQZTuwwG8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('kperez@siacaservicios.com', 'pbkdf2_sha256$180000$l16XILbO3cpP$egcJgiWPakgaavuB7qlURoVH5Yt5MuPw8TXFEozmtqM=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ocastillo@siacaservicios.com', 'pbkdf2_sha256$180000$6p8VjEJdaTan$3WaoERLwKqbt4lDf1WoSVwVZoqlFUwb6gk5WIDuBJaY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jgil@siacaservicios.com', 'pbkdf2_sha256$180000$UI4EgiZdATwN$EFBLQTm7/XGZGYAds36Ttu/sM+/WYxhTQyIfZJEqt/M=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('gdominguez@siacaservicios.com', 'pbkdf2_sha256$180000$RYVY97aktlad$XgI7DS3uFtJ5H4pjaWg5TKe2vwLKFJ7bsTROShDhIic=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jcamaran@siacaservicios.com', 'pbkdf2_sha256$180000$c4NDxB23VaNr$iXXtrNyyrgcq0asc+XjrGmmoOSTJVmvUh+ki5XNSZ6I=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rcarpio@siacaservicios.com', 'pbkdf2_sha256$180000$STBm7HsLfEjp$LR4qmwjm2d8lvhUixLF8of9ZlcURfBTjTer+SUxaIBA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jcarpio@siacaservicios.com', 'pbkdf2_sha256$180000$yxGZZUj1AT4z$liA4YnpC/80To4unZB6n1lQWFLy1FZl3pFIB/z9o6ZI=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jandrade@siacaservicios.com', 'pbkdf2_sha256$180000$CT2qtrPvnkYC$dEQ/fit+nK4CfRuYPScWN2+eGV0PJh5CKIYyTj2ZdHk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ycobi@siacaservicios.com', 'pbkdf2_sha256$180000$2Q1vTNOvK63Z$l3Z9eFNOlHoSXifb5yXPGA7aL3T+aJNuLfCUjuynEPQ=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('sfossi@siacaservicios.com', 'pbkdf2_sha256$180000$3DY8bp3F4Q5V$6pcshXZLpAMuSfUxJQS3Sv71aJ4orNhj10C4Ma2EnlI=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rtortoza@siacaservicios.com', 'pbkdf2_sha256$180000$9iXUTLrHzOGT$ZOuwZFd7EYcJoPy/5yDhDmNl8oewqtDI5wyaJCSiZkY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('joropeza@siacaservicios.com', 'pbkdf2_sha256$180000$j4X7Iy3Bzw5V$MVCfIKDtpGJQntNNYrauNj7Lapx/rnqeTn/7Q4rorRU=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mtorres@siacaservicios.com', 'pbkdf2_sha256$180000$cH2A6wiFKZgq$r096CZdaEt8w2dV9gVOe6SP34yOUH2LPXXHQy+vkDHw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ocolina@siacaservicios.com', 'pbkdf2_sha256$180000$4ehd5UEVI112$CAw3NIlWcUFtDg6X64TOUr0O+ILXOonuX97R5btcqBw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('sromero@siacaservicios.com', 'pbkdf2_sha256$180000$CtcGoWJ057PJ$VctN0bn6RudOQi+MRy3mpDq4sml19CzDMpVgRk76V6U=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jhenriquez@siacaservicios.com', 'pbkdf2_sha256$180000$INZpd95eEo4q$BwD6mkLem5OzyTirPjN4o9ZOVBPsMN8Afv53odbKMe8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('voses@siacaservicios.com', 'pbkdf2_sha256$180000$ulmz1wfgZddS$/H8rSIe185iEa1KNlf8k9mbargGzZrsD3PtGRDLZSO8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jgutierrez@siacaservicios.com', 'pbkdf2_sha256$180000$yEMERgHnSGD5$wJGviVnthHN2yp36QoDSOEND/X8JR4czH4f8EcARNrc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('schelhond@siacaservicios.com', 'pbkdf2_sha256$180000$InZNolnn4iV6$KIpa6R/Wnj32KmMuIt8A5hYYnHsrCcN4mguhrrAK0hQ=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('amachado@siacaservicios.com', 'pbkdf2_sha256$180000$fVYwPIgReqCm$kfBiMLIdNblUYR4gDxR08y/1v/0S/bWCdYrv5klZBf8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('dvelasquez@siacaservicios.com', 'pbkdf2_sha256$180000$SRPtLK12LNeX$BKg55epjAacxmxjP/LFm2Gqft6XX4emOb0Y3UGJYfQM=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('phernandez@siacaservicios.com', 'pbkdf2_sha256$180000$SXzrFV83CvB5$Cm650/9/ODDCFDmRdKrpI5U8rjT8l27aEixUo5bp14A=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ecarvallo@siacaservicios.com', 'pbkdf2_sha256$180000$H2TIXkMCBUYs$iO7158/gJJs4CLzlNFmSlixgI+ppC9s18/pgZDJ1lGc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rgomez@siacaservicios.com', 'pbkdf2_sha256$180000$aLN3cRx9AmKl$RCSg2vZKKuxxXGnYqciphZTx2uAdOU3lBTzcKYTu/mw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ybolivar@siacaservicios.com', 'pbkdf2_sha256$180000$FlZLuczXWo2G$N5C4cv5MeI/VHkD4q6nj0Ibr3dlqGhMmwjw5E9f5LSM=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jmayora@siacaservicios.com', 'pbkdf2_sha256$180000$pWJrpcQBlqsN$FX493W2z6cS3EVNdX9zct1sc6k0OCJ4Ev6N15Fd3LS4=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('kfladung@siacaservicios.com', 'pbkdf2_sha256$180000$j4kzqSNxzLzz$ZANtBCT+WTPjbhIHwsx92TOSdtChb5I2mCQOTF19XZk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('nnarvaez@siacaservicios.com', 'pbkdf2_sha256$180000$UYKlULIha9qc$wNUJ//8zvGzH54uNaGke7DKpaD+XWyi122N5KvyT2AM=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('avalenzuela@siacaservicios.com', 'pbkdf2_sha256$180000$X1qDmSpfdnPZ$D1jC8St5PRBBjrPa4YW/Quyus5DAQ0q/7Qz6se8BT4U=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('erojas@siacaservicios.com', 'pbkdf2_sha256$180000$e1kmhOSguB6Z$h3bU316J+wp4O4VrxpFJuA8X4cwTDlN9RfMBgoNX8Dc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('sgarrido@siacaservicios.com', 'pbkdf2_sha256$180000$TfDzDAKvA7Tc$OAftElAJoCI2xgoKVPNVSezybrfLaDtOImzUio+mgyQ=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('galeman@siacaservicios.com', 'pbkdf2_sha256$180000$IwZFQ2qIJkV0$fg+K2R+Qnc7WWxESrDwq0hNl7onqcFxAjyIAKV9L7Lc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jgonzalez@siacaservicios.com', 'pbkdf2_sha256$180000$HvAQRUHNj0AS$hXD5ajJDpIkCZkY+3NSbSJZKSYBpg+hiKFo4SJekmq8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('kledezma@siacaservicios.com', 'pbkdf2_sha256$180000$pANouqrbQoJr$6LOjJbSOwwICqqIqsdhcpROGmV8CCrMGtKr61ZTVUaE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ylemus@siacaservicios.com', 'pbkdf2_sha256$180000$QSIifo1hYCCZ$MskG9QP4fKy07p+P1F3Nj6jomT3RTWoyKcTJoJyaS20=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('wamaya@siacaservicios.com', 'pbkdf2_sha256$180000$BHjbADNBADx3$ST4drW5/w+/irGYMWXK2GcTETj6J8fLk2x5PDc2E3ZA=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('garteaga@siacaservicios.com', 'pbkdf2_sha256$180000$pjkQBRfqXRvn$ULpnu2HBEbYl23bDk0H9mHFno5HDGQUmNutp9PYSWT0=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('fcamacho@siacaservicios.com', 'pbkdf2_sha256$180000$ljxyYqy5nDHD$kE6b28/qfhRw1sjZZ5w1uRUV55AIuE0AL5IcBlLE+pk=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('hguanare@siacaservicios.com', 'pbkdf2_sha256$180000$AMaC2zenTsfg$GT+hI2OG77vzkS6X0iS+e7vWYX7hNGQM6bVJhG9+i6s=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rmillan@siacaservicios.com', 'pbkdf2_sha256$180000$U9Vw4VNFytoF$sLrM0GeibIv5k4N77lo9tjWuUYrVKWzd4kWYLDDhnvw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jmoya@siacaservicios.com', 'pbkdf2_sha256$180000$o6pwn3vf57ku$0Mn9nb47As/hf+cWPADJyF6DYSn9zFQ1igKAmQOX5OY=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('hnederr@siacaservicios.com', 'pbkdf2_sha256$180000$QZ003AeBpbo3$UZL+l5aE90zjU5o9iltnO/AQbjzFZ7mu3KGrX/ke9e0=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ypacheco@siacaservicios.com', 'pbkdf2_sha256$180000$QW7mS88mrIiM$EEH25A3kKZKlfJMxB3/wpxmrSU0AhCQxGSAv70YLj7Y=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jramos@siacaservicios.com', 'pbkdf2_sha256$180000$bPo5xiEyw33R$JwK1pjcW278SWxxukErfzcO2rIthoKYscUo13STUOJ8=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('grodriguez@siacaservicios.com', 'pbkdf2_sha256$180000$oBO3Xekx70ve$Sc8XlUwssWFiGKce86T5U2980Y3ispUUGgjsF4DrNkE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('msanchez@siacaservicios.com', 'pbkdf2_sha256$180000$bESrItS6eJA4$nPiiS19wPmWnybmLZVnxJCsGcxCyjmjvBOfKSIHvL4I=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jmarcano@siacaservicios.com', 'pbkdf2_sha256$180000$BI3sGQ5XQxi8$ZTfUyCHkIeysJq4ShSnc2HDwT1LHOV0TvGDDR83vbfI=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jhernandez@siacaservicios.com', 'pbkdf2_sha256$180000$EzdOQ1RbQDKL$YufwIRnVAl6Jxl7ABEK7bg4OVTa1BHo0Vx7elWDB/9k=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('atamargo@siacaservicios.com', 'pbkdf2_sha256$180000$9AMcP5Y3HghP$1HS+PhAUXy63pLxj+iXkOjGl7KHH7jIUuJQFMhDzefw=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('omonascal@siacaservicios.com', 'pbkdf2_sha256$180000$c3ZhZo6hDWcU$tE6zJfAugVszhOgd9ispvHT1H+f4BiwWenXo1zAWSsc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mguerra@siacaservicios.com', 'pbkdf2_sha256$180000$syj3OJu2sz8x$FAXWHtH/5q31/BRTd5vbDELsNN9f8RMmwk7KLLkx4dE=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('jvergara@siacaservicios.com', 'pbkdf2_sha256$180000$L2PXDAo0wrQt$oqMRToYFmWzTF5/W+dWAS4vVd69emFsDSm0sVGExFog=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('aochoa@siacaservicios.com', 'pbkdf2_sha256$180000$TO6PREZnuPyx$QHO1tej0nAsFL+cZWABeOFiy8VYwsB82qTKygwjccmM=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('mrodriguez@siacaservicios.com', 'pbkdf2_sha256$180000$98rq5UuVzWS4$YwilVM/ejT+s69yE1BJmazc3rccP9Q6NzBiXa622CdI=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('omanrique@siacaservicios.com', 'pbkdf2_sha256$180000$ipnx5pYEC4u3$7/Vqmq0ZTlEdANr1viAYtWcZrXL42gCiEqA46K51Kzc=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('fzapata@siacaservicios.com', 'pbkdf2_sha256$180000$hTcWuJ44kiY1$pUjL1Pm732s+GNVyoT8YEfPzax6XZLKaec1oyfHn6Ls=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('ypereda@siacaservicios.com', 'pbkdf2_sha256$180000$sMsYbsjO1LXZ$nvS9FVf1XM9bq5EUd11dBzulyHE8nWqsXZJDvYc+P1o=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);
INSERT INTO Usuario (usu_correo, password, usu_fecha_modif, usu_estatus, usu_tipo, usu_usu_modif_fk, is_active, is_staff, is_superuser)
VALUES ('rgonzalez@siacaservicios.com', 'pbkdf2_sha256$180000$vlmWu63lYlqW$DFPmschGqW41HBHyctOHiCc30c+I8ujVOwrL8d9B43g=', CURRENT_TIMESTAMP, 1, 'Empleado', 1, 1, 0, 0);

-- EMPLEADOS --
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Admin', 'Admin', NULL, NULL, 99999999, CURRENT_TIMESTAMP, 1, 1, 1, 1, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Andres', 'Castro', NULL, NULL, 5537184, CURRENT_TIMESTAMP, 1, 2, 1, 1, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Guillermo', 'Garrido', NULL, NULL, 4766797, CURRENT_TIMESTAMP, 1, 3, 1, 1, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Penelope', 'Pereda', NULL, NULL, 13223749, CURRENT_TIMESTAMP, 1, 4, 1, 1, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Gustavo', 'Mesa', NULL, NULL, 7975250, CURRENT_TIMESTAMP, 1, 5, 1, 1, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jommy', 'Meneses', NULL, NULL, 11638172, CURRENT_TIMESTAMP, 1, 6, 2, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Edixon', 'Pereda', NULL, NULL, 11638281, CURRENT_TIMESTAMP, 1, 7, 3, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Lovelia', 'Rodriguez', NULL, NULL, 10584242, CURRENT_TIMESTAMP, 1, 8, 4, 3, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yuleima', 'Mendoza', NULL, NULL, 12162144, CURRENT_TIMESTAMP, 1, 9, 5, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Robiert', 'Guzman', NULL, NULL, 13673942, CURRENT_TIMESTAMP, 1, 10, 6, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Ruben', 'Carvajal', NULL, NULL, 07991565, CURRENT_TIMESTAMP, 1, 11, 3, 2, 1);
---INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
---VALUES ('Gustavo', 'Delgado', NULL, NULL, nan, CURRENT_TIMESTAMP, 1, 12, 7, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oscar', 'Pereda', NULL, NULL, 11637061, CURRENT_TIMESTAMP, 1, 13, 8, 5, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Pedro', 'Suarez', NULL, NULL, 6490346, CURRENT_TIMESTAMP, 1, 14, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jorge', 'Gomez', NULL, NULL, 12740015, CURRENT_TIMESTAMP, 1, 15, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Palencia', NULL, NULL, 5525963, CURRENT_TIMESTAMP, 1, 16, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Solorzano', NULL, NULL, 12324108, CURRENT_TIMESTAMP, 1, 17, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Tony', 'Lezman', NULL, NULL, 10578203, CURRENT_TIMESTAMP, 1, 18, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Junior', 'Peña', NULL, NULL, 14568309, CURRENT_TIMESTAMP, 1, 19, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Cecilia', 'Salas', NULL, NULL, 13616409, CURRENT_TIMESTAMP, 1, 20, 10, 6, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Henry', 'Tovar', NULL, NULL, 6485613, CURRENT_TIMESTAMP, 1, 21, 11, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Salazar', NULL, NULL, 11642369, CURRENT_TIMESTAMP, 1, 22, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oswaldo', 'Mejias', NULL, NULL, 6467020, CURRENT_TIMESTAMP, 1, 23, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Michael', 'Fladung', NULL, NULL, 5541494, CURRENT_TIMESTAMP, 1, 24, 12, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Neidy', 'Fumero', NULL, NULL, 11060490, CURRENT_TIMESTAMP, 1, 25, 13, 3, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Kripson', 'Añez', NULL, NULL, 14020706, CURRENT_TIMESTAMP, 1, 26, 14, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Malave', NULL, NULL, 15267990, CURRENT_TIMESTAMP, 1, 27, 15, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Carlos', 'Paz', NULL, NULL, 12162585, CURRENT_TIMESTAMP, 1, 28, 15, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Rafael', 'Mata', NULL, NULL, 648895301, CURRENT_TIMESTAMP, 1, 29, 16, 9, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Valeska', 'Moy', NULL, NULL, 11063659, CURRENT_TIMESTAMP, 1, 30, 17, 3, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Willian', 'Perozo', NULL, NULL, 18606361, CURRENT_TIMESTAMP, 1, 31, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Luis', 'Paiva', NULL, NULL, 20005056, CURRENT_TIMESTAMP, 1, 32, 19, 5, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Carlos', 'Ugueto', NULL, NULL, 19557956, CURRENT_TIMESTAMP, 1, 33, 20, 10, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jeampier', 'Rojas', NULL, NULL, 19444516, CURRENT_TIMESTAMP, 1, 34, 21, 11, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Nahelys', 'Suarez', NULL, NULL, 20558930, CURRENT_TIMESTAMP, 1, 35, 22, 11, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Alvis', 'Chacon', NULL, NULL, 14140383, CURRENT_TIMESTAMP, 1, 36, 23, 11, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Luis', 'Daniel', NULL, NULL, 7923776, CURRENT_TIMESTAMP, 1, 37, 24, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Mauricio', 'Marcano', NULL, NULL, 14312787, CURRENT_TIMESTAMP, 1, 38, 15, 2, 1);
---INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
---VALUES ('Luis', 'Nuñez', NULL, NULL, nan, CURRENT_TIMESTAMP, 1, 39, 9, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Ivan', 'Marquez', NULL, NULL, 16507989, CURRENT_TIMESTAMP, 1, 40, 25, 12, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Maggyn', 'Villareal', NULL, NULL, 211018, CURRENT_TIMESTAMP, 1, 41, 16, 9, 1);
---INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
---VALUES ('Enyerbert', 'Chavez', NULL, NULL, numeros2018, CURRENT_TIMESTAMP, 1, 42, 26, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Merluis', 'Gonzalez', NULL, NULL, 17709117, CURRENT_TIMESTAMP, 1, 43, 27, 11, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Aponte', NULL, NULL, 17438682, CURRENT_TIMESTAMP, 1, 44, 15, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Belen', 'Ortega', NULL, NULL, 16725576, CURRENT_TIMESTAMP, 1, 45, 28, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jorge', 'Nunes', NULL, NULL, 24805717, CURRENT_TIMESTAMP, 1, 46, 29, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jorge', 'Rojas', NULL, NULL, 25176068, CURRENT_TIMESTAMP, 1, 47, 30, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Edgar', 'David', NULL, NULL, 21082019, CURRENT_TIMESTAMP, 1, 48, 31, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oswaldo', 'Martinez', NULL, NULL, 20559745, CURRENT_TIMESTAMP, 1, 49, 32, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yineth', 'Mendoza', NULL, NULL, 13044548, CURRENT_TIMESTAMP, 1, 50, 33, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yessica', 'Dasliva', NULL, NULL, 24333332, CURRENT_TIMESTAMP, 1, 51, 34, 13, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Adalis', 'Guzman', NULL, NULL, 23597862, CURRENT_TIMESTAMP, 1, 52, 35, 13, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Gissel', 'Ibarra', NULL, NULL, 24806137, CURRENT_TIMESTAMP, 1, 53, 36, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Wilmary', 'Sanchez', NULL, NULL, 27678037, CURRENT_TIMESTAMP, 1, 54, 37, 12, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Katty', 'Perez', NULL, NULL, 16357027, CURRENT_TIMESTAMP, 1, 55, 28, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oscar', 'Castillo', NULL, NULL, 26478252, CURRENT_TIMESTAMP, 1, 56, 38, 5, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jesus', 'Gil', NULL, NULL, 24177948, CURRENT_TIMESTAMP, 1, 57, 39, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Genesis', 'Dominguez', NULL, NULL, 20190173, CURRENT_TIMESTAMP, 1, 58, 40, 14, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jesus', 'E', NULL, NULL, 4863284, CURRENT_TIMESTAMP, 1, 59, 41, 14, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Rossana', 'Carpio', NULL, NULL, 13853462, CURRENT_TIMESTAMP, 1, 60, 42, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Johan', 'Carpio', NULL, NULL, 20005664, CURRENT_TIMESTAMP, 1, 61, 42, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Andrade', NULL, NULL, 25174644, CURRENT_TIMESTAMP, 1, 62, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yender', 'Cobi', NULL, NULL, 22942312, CURRENT_TIMESTAMP, 1, 63, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Simon', 'Fossi', NULL, NULL, 27007682, CURRENT_TIMESTAMP, 1, 64, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Roydiluet', 'Tortoza', NULL, NULL, 17041635, CURRENT_TIMESTAMP, 1, 65, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jailiana', 'Oropeza', NULL, NULL, 13828820, CURRENT_TIMESTAMP, 1, 66, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Mercedes', 'Torres', NULL, NULL, 22778059, CURRENT_TIMESTAMP, 1, 67, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oriana', 'Colina', NULL, NULL, 25523453, CURRENT_TIMESTAMP, 1, 68, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Scarlet', 'Romero', NULL, NULL, 27814050, CURRENT_TIMESTAMP, 1, 69, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jairim', 'Henriquez', NULL, NULL, 25575249, CURRENT_TIMESTAMP, 1, 70, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Victor', 'Oses', NULL, NULL, 14767590, CURRENT_TIMESTAMP, 1, 71, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jesus', 'Gutierrez', NULL, NULL, 19445582, CURRENT_TIMESTAMP, 1, 72, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Stephany', 'Chelhond', NULL, NULL, 26440892, CURRENT_TIMESTAMP, 1, 73, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Andrea', 'Machado', NULL, NULL, 21091602, CURRENT_TIMESTAMP, 1, 74, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('David', 'Velasquez', NULL, NULL, 20782300, CURRENT_TIMESTAMP, 1, 75, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Pedro', 'Hernandez', NULL, NULL, 5605855, CURRENT_TIMESTAMP, 1, 76, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Eduin', 'Carvallo', NULL, NULL, 22276065, CURRENT_TIMESTAMP, 1, 77, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Rafael', 'Gomez', NULL, NULL, 27347510, CURRENT_TIMESTAMP, 1, 78, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yeneika', 'Bolivar', NULL, NULL, 26763131, CURRENT_TIMESTAMP, 1, 79, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jesus', 'Mayora', NULL, NULL, 25575445, CURRENT_TIMESTAMP, 1, 80, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Katherinne', 'Fladung', NULL, NULL, 28132170, CURRENT_TIMESTAMP, 1, 81, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Nayet', 'Narvaez', NULL, NULL, 20005486, CURRENT_TIMESTAMP, 1, 82, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Angelo', 'Valenzuela', NULL, NULL, 27859454, CURRENT_TIMESTAMP, 1, 83, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Edgar', 'Rojas', NULL, NULL, 24880893, CURRENT_TIMESTAMP, 1, 84, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Santiago', 'Garrido', NULL, NULL, 28472510, CURRENT_TIMESTAMP, 1, 85, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Greimar', 'Aleman', NULL, NULL, 15830145, CURRENT_TIMESTAMP, 1, 86, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Juan', 'Gonzalez', NULL, NULL, 27225782, CURRENT_TIMESTAMP, 1, 87, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Katherine', 'Ledezma', NULL, NULL, 17959599, CURRENT_TIMESTAMP, 1, 88, 43, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yerfrin', 'Lemus', NULL, NULL, 19796355, CURRENT_TIMESTAMP, 1, 89, 44, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Wilfredo', 'Amaya', NULL, NULL, 6851652, CURRENT_TIMESTAMP, 1, 90, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Greyder', 'Arteaga', NULL, NULL, 18755879, CURRENT_TIMESTAMP, 1, 91, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Froilan', 'Camacho', NULL, NULL, 10583524, CURRENT_TIMESTAMP, 1, 92, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Humberto', 'Guanare', NULL, NULL, 14102901, CURRENT_TIMESTAMP, 1, 93, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Reinaldo', 'Millan', NULL, NULL, 16508437, CURRENT_TIMESTAMP, 1, 94, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Moya', NULL, NULL, 5876852, CURRENT_TIMESTAMP, 1, 95, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Henry', 'Nederr', NULL, NULL, 6498955, CURRENT_TIMESTAMP, 1, 96, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yorkfrank', 'Pacheco', NULL, NULL, 18910730, CURRENT_TIMESTAMP, 1, 97, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Juan', 'Ramos', NULL, NULL, 7998976, CURRENT_TIMESTAMP, 1, 98, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Grey', 'Rodriguez', NULL, NULL, 15779620, CURRENT_TIMESTAMP, 1, 99, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Miguel', 'Sanchez', NULL, NULL, 12165534, CURRENT_TIMESTAMP, 1, 100, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jose', 'Marcano', NULL, NULL, 12164183, CURRENT_TIMESTAMP, 1, 101, 18, 8, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jonathan', 'Hernadez', NULL, NULL, 24181714, CURRENT_TIMESTAMP, 1, 102, 45, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Angel', 'Tamargo', NULL, NULL, 6561593, CURRENT_TIMESTAMP, 1, 103, 12, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Orlando', 'Monascal', NULL, NULL, 6961113, CURRENT_TIMESTAMP, 1, 104, 46, 7, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Mayellin', 'Guerra', NULL, NULL, 15025753, CURRENT_TIMESTAMP, 1, 105, 47, 14, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Jhoana', 'Vergara', NULL, NULL, 17080077, CURRENT_TIMESTAMP, 1, 106, 48, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Alvin', 'Ochoa', NULL, NULL, 15180623, CURRENT_TIMESTAMP, 1, 107, 49, 4, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Manuel', 'Rodriguez', NULL, NULL, 9998630, CURRENT_TIMESTAMP, 1, 108, 50, 3, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Oscar', 'Manrique', NULL, NULL, 18819427, CURRENT_TIMESTAMP, 1, 109, 48, 3, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Frank', 'Zapata', NULL, NULL, 24204077, CURRENT_TIMESTAMP, 1, 110, 51, 5, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Yorge', 'Pereda', NULL, NULL, 16508529, CURRENT_TIMESTAMP, 1, 111, 52, 2, 1);
INSERT INTO Empleado (emp_nombre, emp_apellido, emp_correo_personal, emp_rif, emp_ci, emp_fecha_modif, emp_estatus, emp_usu_fk, emp_rol_fk, emp_dep_fk, emp_usu_modif_fk)
VALUES ('Ronald', 'González', NULL, NULL, 13563734, CURRENT_TIMESTAMP, 1, 112, 53, 4, 1);

-- Manuales de Administración --
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Calidad del Servicio.pdf', NULL, '/Administracion/Manual de Calidad del Servicio.pdf', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Normas y Procedimientos.pdf', NULL, '/Administracion/Manual de Normas y Procedimientos.pdf', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Organizacion y Funciones.pdf', NULL, '/Administracion/Manual de Organizacion y Funciones.pdf', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Politicas.pdf', NULL, '/Administracion/Manual de Politicas.pdf', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Seguridad y Salud Laboral.pdf', NULL, '/Administracion/Manual de Seguridad y Salud Laboral.pdf', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual Descriptivo de Cargos.pdf', NULL, '/Administracion/Manual Descriptivo de Cargos', CURRENT_TIMESTAMP, 'Administrativo', 1, 1);

-- Manuales de Operaciones --
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Animales Vivos.pdf', NULL, '/Operaciones/Manual de Animales Vivos.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Capacitacion', NULL, '/Operaciones/Manual de Capacitacion.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Despacho de Vuelos', NULL, '/Operaciones/Manual de Despacho de Vuelos.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Mantenimiento de Vehiculos', NULL, '/Operaciones/Manual de Mantenimiento de Vehiculos.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Mercancias Peligrosas', NULL, '/Operaciones/Manual de Mercancias Peligrosas.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Operaciones de Plataforma', NULL, '/Operaciones/Manual de Operaciones de Plataforma.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Planes de Emergencia', NULL, '/Operaciones/Manual de Planes de Emergencia.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Manual de Suministro de Combustible', NULL, '/Operaciones/Manual de Suministro de Combustible.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Programa de Facilitacion', NULL, '/Operaciones/Programa de Facilitacion.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Programa de FOD', NULL, '/Operaciones/Programa de FOD.pdf', CURRENT_TIMESTAMP, 'Operacional', 1, 1);

-- Formularios --
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Requisicion de Materiales y Servicios', NULL, '/Formularios/GERENCIA DE ADMINISTRACION Y FINANZAS/REG-ADM-001 Requisicion de Materiales y Servicios.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Analisis de Cotizaciones', NULL, '/Formularios/GERENCIA DE ADMINISTRACION Y FINANZAS/REG-ADM-002 Analisis de Cotizaciones.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Requisicion de Pago', NULL, '/Formularios/GERENCIA DE ADMINISTRACION Y FINANZAS/REG-ADM-003 Requisicion de Pago.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);

INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Programacion Mensual de Cursos', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-001 Programacion Mensual de Cursos.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Control de Asistencia', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-002 Control de Asistencia.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Guia para la Capacitacion en el Puesto de Trabajo', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-003 Guia para la Capacitacion en el Puesto de Trabajo.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Archivo de Capacitacion del Personal', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-004 Archivo de Capacitacion del Personal.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Evaluacion del Instructor', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-005 Evaluacion del Instructor.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Evaluacion Docente del Instructor', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-006 Evaluacion Docente del Instructor.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Registro de Calificaciones', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-007 Registro de Calificaciones.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Plan de Leccion', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-008 Plan de Leccion.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Practica de Seguridad en Plataforma', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-009 Practica de Seguridad en Plataforma.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Fase Practica de Capacitacion con Equipos de Soporte en Tierra', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-010 Fase Practica de Capacitacion con Equipos de Soporte en Tierra.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Fase Practica Individual de Capacitacion con Equipos de Apoyo de Soporte en Tierra', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-011 Fase Practica Individual de Capacitacion con Equipos de Apoyo de Soporte en Tierra.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Seleccion de Instructores', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-012 Seleccion de Instructores.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista Maestra de Entrenamiento y Capacitacion', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-013 Lista Maestra de Entrenamiento y Capacitacion.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Control de Instructores', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-014 Control de Instructores.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Certificado de Aprobacion', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-015 Certificado de Aprobacion.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Certificado de Asistencia', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-016 Certificado de Asistencia.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Fase Practica Individual de Capacitacion de Limpieza de Aeronaves', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-017 Fase Practica Individual de Capacitacion de Limpieza de Aeronaves.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Fase Practica Individual de Capacitacion para Señalizacion de Aeronaves y Equipos de Soporte en Tierra', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-018 Fase Practica Individual de Capacitacion para Señalizacion de Aeronaves y Equipos de Soporte en Tierra.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Control de Entrega de Certificados', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-019 Control de Entrega de Certificados.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Expediente de Instructores', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-020 Expediente de Instructores.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Fase Practica Individual de Capacitacion Trafico (Manejo de Pasajeros y su Equipaje)', NULL, '/Formularios/GERENCIA DE CAPACITACION Y DESARROLLO/REG-CAP-021 Fase Practica Individual de Capacitacion Trafico (Manejo de Pasajeros y su Equipaje).xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);

INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Reporte de Seguridad Operacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-001 Reporte de Seguridad Operacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Reporte de Peligro', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-002 Reporte de Peligro.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Reporte de Accidente o Incidente con Animales Vivos', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-003 Reporte de Accidente o Incidente con Animales Vivos.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Informe de Ocurrencia con Mercancias Peligrosas', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-004 Informe de Ocurrencia con Mercancias Peligrosas.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Evaluacion y Mitigacion de Riesgo', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-005 Evaluacion y Mitigacion de Riesgo.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Entrevista de Seguridad Operacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-006 Entrevista de Seguridad Operacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Informe de Investigacion de Seguridad Operacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-007 Informe de Investigacion de Seguridad Operacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Notificacion de Gestion del Cambio', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-008 Notificacion de Gestion del Cambio.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Evaluacion de Gestion del Cambio', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-009 Evaluacion de Gestion del Cambio.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Asistencia de Seguridad Operacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-010 Lista de Asistencia de Seguridad Operacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Minuta de Seguridad Operacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-011 Minuta de Seguridad Operacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Informacion del Pasajero Afectado de la Aerolinea Cliente', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-012 Informacion del Pasajero Afectado de la Aerolinea Cliente.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Informacion de la Llamada', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-013 Informacion de la Llamada.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List Comunicacional', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-014 Check List Comunicacional.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List Grupo de Investigacion de Emergencia', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-015 Check List Grupo de Investigacion de Emergencia.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List de Investigacion de Emergencia', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-016 Check List de Investigacion de Emergencia.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List de Administracion', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-017 Check List de Administracion.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List de Seguridad', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-018 Check List de Seguridad.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Check List de Equipo de Asistencia en Hotel', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-019 Check List de Equipo de Asistencia en Hotel.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion de Operaciones en Plataforma', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-020 Lista de Inspeccion de Operaciones en Plataforma.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion a Equipos de Apoyo en Tierra Motorizados', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-021 Lista de Inspeccion a Equipos de Apoyo en Tierra Motorizados.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion a Equipos de Apoyo en Tierra No Motorizados', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-022 Lista de Inspeccion a Equipos de Apoyo en Tierra No Motorizados.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion Servicio al Pasajero', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-023 Lista de Inspeccion Servicio al Pasajero.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion Empresas Contratadas', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-024 Lista de Inspeccion Empresas Contratadas.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Ficha Tecnica de Indicadores', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-025 Ficha Tecnica de Indicadores.xlsx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Inspeccion Despacho de Vuelo', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-026 Lista de Inspeccion Despacho de Vuelo.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);
INSERT INTO ArchivoGestionCalidad (agc_titulo, agc_descripcion, agc_direccion, agc_fecha_modif, agc_tipo , agc_estatus, agc_usu_modif_fk)
VALUES ('Lista de Pasajeros Supervivientes', NULL, '/Formularios/GERENCIA DE GESTION DE LA SEGURIDAD OPERACIONAL SMS/REG-SMS-027 Lista de Pasajeros Supervivientes.docx', CURRENT_TIMESTAMP, 'Formulario', 1, 1);


-- Departamentos a los que pertenecen los archivos --

-- Dirección --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (1, 16, 1, CURRENT_TIMESTAMP, 1);

-- Operaciones --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (2, 16, 1, CURRENT_TIMESTAMP, 1);

-- Recursos Humanos --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (3, 15, 1, CURRENT_TIMESTAMP, 1);

-- Administracion y Finanzas --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 17, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 18, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (4, 19, 1, CURRENT_TIMESTAMP, 1);

-- Teconologias de informacion --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (5, 13, 1, CURRENT_TIMESTAMP, 1);

-- Comercializacion --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (6, 15, 1, CURRENT_TIMESTAMP, 1);

-- Mantenimiento --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (7, 16, 1, CURRENT_TIMESTAMP, 1);

-- Servicio al Pasajero --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (8, 16, 1, CURRENT_TIMESTAMP, 1);

-- Despacho de vuelos --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (9, 16, 1, CURRENT_TIMESTAMP, 1);

-- Seguridad y Salud en el Trabajo --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (10, 16, 1, CURRENT_TIMESTAMP, 1);

-- Capacitación --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 16, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 20, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 21, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 22, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 23, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 24, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 25, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 26, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 27, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 28, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 29, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 30, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 31, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 32, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 33, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 34, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 35, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 36, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 37, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 38, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 39, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (11, 40, 1, CURRENT_TIMESTAMP, 1);

-- Seguridad Operacional --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 16, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 41, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 42, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 43, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 44, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 45, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 46, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 47, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 48, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 49, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 50, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 51, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 52, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 53, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 54, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 55, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 56, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 57, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 58, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 59, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 60, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 61, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 62, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 63, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 64, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 65, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 66, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (12, 67, 1, CURRENT_TIMESTAMP, 1);

-- Organizacion y Metodos --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (13, 16, 1, CURRENT_TIMESTAMP, 1);

-- Gestion de la Calidad --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 7, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 9, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 10, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 11, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 12, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 15, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 14, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (14, 16, 1, CURRENT_TIMESTAMP, 1);

-- Gestion y Recaudación de Cobros y Pagos --
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 1, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 2, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 3, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 4, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 5, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 6, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 8, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 13, 1, CURRENT_TIMESTAMP, 1);
INSERT INTO ArchivoGestionCalidad_Departamento (ae_dep_fk, ae_agc_fk, ae_estatus, ae_fecha_modif, ae_usu_modif_fk)
VALUES (15, 15, 1, CURRENT_TIMESTAMP, 1);