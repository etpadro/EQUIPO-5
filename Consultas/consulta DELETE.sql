--CONSULTA PARA DELETE

--1. Tabla cursos
DELETE FROM cursos WHERE fecha_inicio < CURDATE() AND cupo_curso = 0;

--2. Tabla departamentos
DELETE FROM departamentos WHERE id_departamento NOT IN 
(SELECT id_departamento FROM usuarios_departamentos);

--3. Tabla equipos
DELETE FROM equipos WHERE id_equipo IN 
(SELECT id_equipo FROM equipos_requerimientos WHERE id_estado_equipo = 
 (SELECT id_estado_equipo FROM estados_equipo WHERE nombre_estado_equipo = 'Desincorporado'));

--4. Tabla equipos_departamentos
DELETE FROM equipos_departamentos WHERE id_equipo IN 
(SELECT id_equipo FROM equipos_requerimientos WHERE id_estado_equipo = 
 (SELECT id_estado_equipo FROM estados_equipo WHERE nombre_estado_equipo = 'Desincorporado'));

--5. Tabla equipos_requerimientos
DELETE FROM equipos_requerimientos WHERE id_estado_equipo = 
(SELECT id_estado_equipo FROM estados_equipo WHERE nombre_estado_equipo = 'Resuelto');

--6. Tabla estados_equipo
DELETE FROM estados_equipo WHERE id_estado_equipo NOT IN 
(SELECT DISTINCT id_estado_equipo FROM equipos_requerimientos);

--7. Tabla estados_requerimiento
DELETE FROM estados_requerimiento WHERE id_estado_requerimiento NOT IN 
(SELECT DISTINCT id_estado_requerimiento FROM reportes);

--8. Tabla preinscripciones
DELETE FROM preinscripciones WHERE id_curso IN 
(SELECT id_curso FROM cursos WHERE fecha_inicio < CURDATE());

--9. Tabla requerimientos
DELETE FROM reportes WHERE fecha_generacion < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) 
AND id_estado_requerimiento = 3;

--10. Tabla reportes
DELETE FROM requerimientos WHERE fecha_creacion < '2024-01-01' 
AND estado_final_requerimiento IS NOT NULL;

--11. Tabla servicios
DELETE FROM servicios WHERE id_servicio NOT IN 
(SELECT DISTINCT id_servicio FROM requerimientos);

--12. Tabla tecnicos_asignados
DELETE FROM tecnicos_asignados WHERE id_requerimiento IN 
(SELECT id_requerimiento FROM requerimientos WHERE estado_final_requerimiento IS NOT NULL);

--13. Tabla tipos_usuario
DELETE FROM tipos_usuario WHERE id_tipo_usuario NOT IN 
(SELECT DISTINCT id_tipo_usuario FROM usuarios_tic);

--14. Tabla usuarios_departamentos
DELETE FROM usuarios_departamentos WHERE id_usuario_uc NOT IN 
(SELECT id_usuario_uc FROM preinscripciones) 
AND id_usuario_uc NOT IN 
(SELECT id_usuario_uc FROM usuarios_uc WHERE id_departamento IS NULL);

--15. Tabla usuarios_tic
DELETE FROM usuarios_tic WHERE id_tipo_usuario = 
(SELECT id_tipo_usuario FROM tipos_usuario WHERE nombre_tipo_usuario = 'Técnico_4') 
AND id_usuario NOT IN 
(SELECT id_usuario FROM tecnicos_asignados);

--16. Tabla usuarios_uc
DELETE FROM usuarios_uc WHERE id_usuario_uc NOT IN 
(SELECT id_usuario_uc FROM usuarios_departamentos) 
AND id_usuario_uc NOT IN 
(SELECT id_usuario_uc FROM preinscripciones);