--CONSULTA CON CREATE

--1. Tabla cursos
INSERT INTO cursos (nombre_curso, nombre_profesor_curso, descripcion_curso, fecha_inicio, horario_curso, costo_curso, cupo_curso, detalle_curso)
VALUES ('Bases de Datos Avanzadas', 'Carlos Mendoza', 'Curso de diseño y optimización de bases de datos', '2025-08-15', 'Martes y Viernes 16:00-18:00', 220.00, 12, 'Se requiere conocimiento básico de SQL');

INSERT INTO cursos (nombre_curso, nombre_profesor_curso, descripcion_curso, fecha_inicio, horario_curso, costo_curso, cupo_curso, detalle_curso)
VALUES ('Inteligencia Artificial', 'Dr. Pérez', 'Fundamentos de IA y machine learning', '2025-09-10', 'Lunes y Miércoles 18:00-20:00', 250.00, 15, 'Se requiere conocimiento de Python');

--2. Tabla departamentos
INSERT INTO departamentos (nombre_departamento, descripcion_departamento)
VALUES ('Computacion', 'Computacion I y Computacion II');

INSERT INTO departamentos (nombre_departamento, descripcion_departamento)
VALUES ('Dibujo', 'Departamento de Dibujo I, Dubujo II y Dibujo Mecanico');

--3. Tabla equipos
INSERT INTO equipos (modelo_cpu_equipo, serial_cpu_equipo, capacidad_memoria_equipo, modelo_monitor_equipo, serial_monitor_equipo, modelo_mouse_equipo, serial_mouse_equipo, modelo_teclado_equipo, serial_teclado_equipo, paquetes_software_equipo, descripcion_adicional_equipo, comentario_equipo)
VALUES ('HP ProDesk 600', 'HP654321', '32GB', 'HP EliteDisplay E243', 'HP987654', 'HP Z3700', 'HP111333', 'HP Elite Keyboard', 'HP444666', 'Windows 11, Office 365', 'Equipo para diseño gráfico', 'Asignado al Dep. Dibujo');

INSERT INTO equipos (modelo_cpu_equipo, serial_cpu_equipo, capacidad_memoria_equipo, modelo_monitor_equipo, serial_monitor_equipo, modelo_mouse_equipo, serial_mouse_equipo, modelo_teclado_equipo, serial_teclado_equipo, paquetes_software_equipo, descripcion_adicional_equipo, comentario_equipo)
VALUES ('Lenovo ThinkStation', 'LEN789123', '64GB', 'Lenovo ThinkVision', 'LEN456789', 'Lenovo Mouse', 'LEN123456', 'Lenovo Keyboard', 'LEN654321', 'Windows 11 Pro, AutoCAD, MATLAB', 'Estación de trabajo para ingeniería', 'Asignar al Dep. Dibujo');

--4. Tabla equipos_departamentos
INSERT INTO equipos_departamentos (id_equipo, id_departamento, detalle_equipo_departamento)
VALUES (5, 1, 'Equipo asignado al área de recepción del departamento');

INSERT INTO equipos_departamentos (id_equipo, id_departamento, detalle_equipo_departamento)
VALUES (4, 5, 'Equipo asignado al Direccion de Estacion');

--5. Tabla equipos_requerimientos
INSERT INTO equipos_requerimientos (id_requerimiento, id_equipo, id_estado_equipo, detalle_equipo_requerimiento)
VALUES (4, 2, 1, 'Actualización de software completada satisfactoriamente');

INSERT INTO equipos_requerimientos (id_requerimiento, id_equipo, id_estado_equipo, detalle_equipo_requerimiento)
VALUES (3, 1, 2, ' Cambio de router en espera por dep. Reduc');

--6. Tabla estados_equipo
INSERT INTO estados_equipo (nombre_estado_equipo, descripcion_estado_equipo)
VALUES ('En préstamo', 'Equipo asignado temporalmente a otro departamento');

INSERT INTO estados_equipo (nombre_estado_equipo, descripcion_estado_equipo)
VALUES ('Desincorporacion', 'Equipo desincorporado del departamento');

--7. Tabla estados_requerimiento
INSERT INTO estados_requerimiento (nombre_estado_requerimiento, descripcion_estado_requerimiento)
VALUES ('En validación', 'Requiere aprobación del supervisor antes de proceder');

INSERT INTO estados_requerimiento (nombre_estado_requerimiento, descripcion_estado_requerimiento)
VALUES ('Desincorporacion', 'Requiere aprobación del dep. Administracion para proceder');


--8. Tabla usuarios_tic
INSERT INTO usuarios_tic (nombre_usuario, apellido_usuario, cedula_usuario, email_usuario, telefono_usuario, id_tipo_usuario, contraseña_usuario, comentario_nombre_usuario)
VALUES ('Ana', 'Fernández', 28987654, 'afernandez@uc.edu.ve', '04128765432', 2, 'hashed_password_6', 'Nuevo técnico asignado');

INSERT INTO usuarios_tic (nombre_usuario, apellido_usuario, cedula_usuario, email_usuario, telefono_usuario, id_tipo_usuario, contraseña_usuario, comentario_nombre_usuario)
VALUES ('Roberto', 'García', 29876543, 'rbgarcia@uc.edu.ve', '04168765432', 4, 'hashed_password_7', 'Nuevo técnico de soporte');

--9. Tabla requerimientos
INSERT INTO requerimientos (id_usuario, id_servicio, id_usuario_departamento, descripcion_inicial_requerimiento, fecha_creacion, estado_final_requerimiento)
VALUES (3, 1, 2, 'El equipo no reconoce el teclado', '2025-05-30', NULL);

INSERT INTO requerimientos (id_usuario, id_servicio, id_usuario_departamento, descripcion_inicial_requerimiento, fecha_creacion, estado_final_requerimiento)
VALUES (4, 3, 3, 'Problemas de conectividad en la red del laboratorio 4', '2025-05-30', NULL);

--10. Tabla preinscripciones
INSERT INTO preinscripciones (id_usuario_uc, id_curso, fecha_inscripcion, detalle_preinscripcion)
VALUES (3, 4, '2025-05-28', 'Inscripción para curso obligatorio de la carrera');

INSERT INTO preinscripciones (id_usuario_uc, id_curso, fecha_inscripcion, detalle_preinscripcion)
VALUES (2, 4, '2025-05-28', 'Inscripción para curso obligatorio de la carrera');

--11. Tabla reportes
INSERT INTO reportes (id_usuario_departamento, id_equipo_departamento, id_requerimiento, id_estado_requerimiento, id_asignacion, detalles_reporte, fecha_generacion, detalle_final_reporte)
VALUES (2, 2, 2, 1, 4, 'Software instalado correctamente', '2025-05-29', 'Usuario capacitado en el uso del software');

INSERT INTO reportes (id_usuario_departamento, id_equipo_departamento, id_requerimiento, id_estado_requerimiento, id_asignacion, detalles_reporte, fecha_generacion, detalle_final_reporte)
VALUES (4, 5, 5, 3, 2, 'Software instalado correctamente', '2025-05-29', 'Usuario capacitado en el uso del software');

--12. Tabla servicios
INSERT INTO servicios (nombre_servicio, descripcion_servicio)
VALUES ('Virtualización', 'Configuración y mantenimiento de entornos virtuales');

INSERT INTO servicios (nombre_servicio, descripcion_servicio)
VALUES ('Adiestramiento', 'Entrenamiento de nuevos miembros al departamento');

--13. Tabla tecnicos_asignados
INSERT INTO tecnicos_asignados (id_requerimiento, id_usuario, fecha_asignacion, detalle_asignacion)
VALUES (5, 3, '2025-05-30', 'Asignado para desarrollo de aplicación interna');

INSERT INTO tecnicos_asignados (id_requerimiento, id_usuario, fecha_asignacion, detalle_asignacion)
VALUES (6, 5, '2025-06-05', 'Asignado para digitalizacion de documentos');

--14. Tabla tipos_usuario
INSERT INTO tipos_usuario (nombre_tipo_usuario, detalle_tipo_usuario)
VALUES ('Soporte Nivel 2', 'Técnicos con capacidades para resolver problemas complejos');

INSERT INTO tipos_usuario (nombre_tipo_usuario, detalle_tipo_usuario)
VALUES ('Programador', 'Técnicos con capacidades para digitalizacion, publicacion web');

--15. Tabla usuarios_departamentos
INSERT INTO usuarios_departamentos (id_usuario_uc, id_departamento, descripcion_usuario_departamento)
VALUES (5, 1, 'Coordinador de proyectos tecnológicos');

INSERT INTO usuarios_departamentos (id_usuario_uc, id_departamento, descripcion_usuario_departamento)
VALUES (6, 4, 'Supervisor');

--16. Tabla usuarios_uc
INSERT INTO usuarios_uc (nombre_usuario_uc, apellido_usuario_uc, cedula_usuario_uc, id_departamento, comentario_usuario_uc)
VALUES ('Carmen', 'Rivas', 22334455, 6, 'Responsable de inventario tecnológico');

INSERT INTO usuarios_uc (nombre_usuario_uc, apellido_usuario_uc, cedula_usuario_uc, id_departamento, comentario_usuario_uc)
VALUES ('Faride', 'Camacho', 29587456, 3, 'Supervisor');