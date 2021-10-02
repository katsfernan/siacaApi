USE [SIACA_INTRANET];
GO
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Direccion', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Operaciones', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Recursos Humanos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Administracion', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Tecnologia Informatica', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Relaciones Institucionales', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Mantenimiento', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Servicio al Pasajero', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Despacho de Vuelos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Seguridad y Salud en el Trabajo', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Capacitacion', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Seguridad Operacional', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Organizacion y Metodos', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Gestion de la Calidad', '', CURRENT_TIMESTAMP, 1, 1)
INSERT INTO Departamento (dep_nombre, dep_descripcion, dep_fecha_modif, dep_estatus, dep_usu_modif_fk)
VALUES ('Limpieza de Aeronaves', '', CURRENT_TIMESTAMP, 1, 1)
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