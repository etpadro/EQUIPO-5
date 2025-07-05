--INSERT INTO
INSERT INTO cursos (nombre_curso, nombre_profesor_curso, descripcion_curso, fecha_inicio, horario_curso, costo_curso, cupo_curso, detalle_curso)
VALUES ('Programación Web Avanzada', 'Pedro Fernández', 'Curso de desarrollo web con React y Node.js', '2025-07-10', 'Lunes y Jueves 18:00-20:00', 200.00, 15, 'Se requiere conocimiento básico de HTML y JavaScript');

-- SELECT
SELECT r.id_requerimiento, u.nombre_usuario AS solicitante, s.nombre_servicio, 
       er.nombre_estado_requerimiento AS estado, r.descripcion_inicial_requerimiento, 
       r.fecha_creacion
FROM requerimientos r
JOIN usuarios_tic u ON r.id_usuario = u.id_usuario
JOIN servicios s ON r.id_servicio = s.id_servicio
JOIN estados_requerimiento er ON r.id_requerimiento IN (
    SELECT id_requerimiento FROM reportes WHERE id_estado_requerimiento = er.id_estado_requerimiento
)
WHERE er.nombre_estado_requerimiento = 'Pendiente';

- UPDATE
UPDATE equipos_requerimientos
SET id_estado_equipo = (
    SELECT id_estado_equipo FROM estados_equipo WHERE nombre_estado_equipo = 'Operativo'
), 
detalle_equipo_requerimiento = 'Equipo reparado y actualizado'
WHERE id_equipo_requerimiento = 3;

-- DELETE
DELETE FROM preinscripciones 
WHERE id_preinscripcion = 5 
AND id_curso = (SELECT id_curso FROM cursos WHERE nombre_curso = 'Seguridad Informática');

-- CONSULTA COMPLEJA
SELECT e.id_equipo, d.nombre_departamento, 
       e.modelo_cpu_equipo, e.serial_cpu_equipo, 
       ee.nombre_estado_equipo AS estado_equipo,
       er.detalle_equipo_requerimiento AS ultimo_mantenimiento
FROM equipos e
JOIN equipos_departamentos ed ON e.id_equipo = ed.id_equipo
JOIN departamentos d ON ed.id_departamento = d.id_departamento
LEFT JOIN equipos_requerimientos er ON e.id_equipo = er.id_equipo
LEFT JOIN estados_equipo ee ON er.id_estado_equipo = ee.id_estado_equipo
WHERE d.nombre_departamento = 'Informática'
ORDER BY e.id_equipo;