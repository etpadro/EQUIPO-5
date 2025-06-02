--CONSULTA PARA READ

--1. Tabla cursos
SELECT * FROM cursos WHERE costo_curso BETWEEN 100.00 AND 200.00 ORDER BY fecha_inicio DESC;

--2. Tabla departamentos
SELECT id_departamento, nombre_departamento FROM departamentos 
WHERE nombre_departamento NOT LIKE 'Esc.%';

--3. Tabla equipos
SELECT modelo_cpu_equipo, capacidad_memoria_equipo FROM equipos 
WHERE paquetes_software_equipo LIKE '%AutoCAD%' 
ORDER BY capacidad_memoria_equipo DESC;

--4. Tabla equipos_departamentos
SELECT e.modelo_cpu_equipo, d.nombre_departamento, ed.detalle_equipo_departamento
FROM equipos_departamentos ed
JOIN equipos e ON ed.id_equipo = e.id_equipo
JOIN departamentos d ON ed.id_departamento = d.id_departamento;

--5. Tabla equipos_requerimientos
SELECT er.id_equipo_requerimiento, e.modelo_cpu_equipo, r.descripcion_inicial_requerimiento, ee.nombre_estado_equipo
FROM equipos_requerimientos er
JOIN equipos e ON er.id_equipo = e.id_equipo
JOIN requerimientos r ON er.id_requerimiento = r.id_requerimiento
JOIN estados_equipo ee ON er.id_estado_equipo = ee.id_estado_equipo;

--6. Tabla estados_equipo
SELECT * FROM estados_equipo ORDER BY id_estado_equipo;

--7. Tabla estados_requerimiento
SELECT * FROM estados_requerimiento WHERE nombre_estado_requerimiento NOT IN ('Cancelado', 'Rechazado');

--8. Tabla preinscripciones
SELECT p.id_preinscripcion, u.nombre_usuario_uc, c.nombre_curso, p.fecha_inscripcion
FROM preinscripciones p
JOIN usuarios_uc u ON p.id_usuario_uc = u.id_usuario_uc
JOIN cursos c ON p.id_curso = c.id_curso
WHERE c.fecha_inicio > CURDATE();

--9. Tabla requerimientos
SELECT r.id_reporte, d.nombre_departamento, e.modelo_cpu_equipo, er.nombre_estado_requerimiento, r.detalles_reporte
FROM reportes r
JOIN usuarios_departamentos ud ON r.id_usuario_departamento = ud.id_usuario_departamento
JOIN departamentos d ON ud.id_departamento = d.id_departamento
JOIN equipos_departamentos ed ON r.id_equipo_departamento = ed.id_equipo_departamento
JOIN equipos e ON ed.id_equipo = e.id_equipo
JOIN estados_requerimiento er ON r.id_estado_requerimiento = er.id_estado_requerimiento;

--10. Tabla reportes
SELECT r.id_requerimiento, s.nombre_servicio, u.nombre_usuario, ud.descripcion_usuario_departamento, r.descripcion_inicial_requerimiento
FROM requerimientos r
JOIN servicios s ON r.id_servicio = s.id_servicio
JOIN usuarios_tic u ON r.id_usuario = u.id_usuario
JOIN usuarios_departamentos ud ON r.id_usuario_departamento = ud.id_usuario_departamento
WHERE r.estado_final_requerimiento IS NULL;

--11. Tabla servicios
SELECT * FROM servicios ORDER BY nombre_servicio;

--12. Tabla tecnicos_asignados
SELECT ta.id_asignacion, u.nombre_usuario, r.descripcion_inicial_requerimiento, ta.fecha_asignacion
FROM tecnicos_asignados ta
JOIN usuarios_tic u ON ta.id_usuario = u.id_usuario
JOIN requerimientos r ON ta.id_requerimiento = r.id_requerimiento
ORDER BY ta.fecha_asignacion DESC;

--13. Tabla tipos_usuario
INSERT INTO tipos_usuario (nombre_tipo_usuario, detalle_tipo_usuario)
VALUES ('Soporte Nivel 2', 'Técnicos con capacidades para resolver problemas complejos');

--14. Tabla usuarios_departamentos
SELECT ud.id_usuario_departamento, u.nombre_usuario_uc, d.nombre_departamento, ud.descripcion_usuario_departamento
FROM usuarios_departamentos ud
JOIN usuarios_uc u ON ud.id_usuario_uc = u.id_usuario_uc
JOIN departamentos d ON ud.id_departamento = d.id_departamento;

--15. Tabla usuarios_tic
SELECT u.id_usuario, u.nombre_usuario, u.apellido_usuario, t.nombre_tipo_usuario, u.email_usuario
FROM usuarios_tic u
JOIN tipos_usuario t ON u.id_tipo_usuario = t.id_tipo_usuario
ORDER BY u.apellido_usuario;

--16. Tabla usuarios_uc
SELECT u.id_usuario_uc, u.nombre_usuario_uc, u.apellido_usuario_uc, d.nombre_departamento
FROM usuarios_uc u
LEFT JOIN departamentos d ON u.id_departamento = d.id_departamento
WHERE u.id_departamento IS NOT NULL;
