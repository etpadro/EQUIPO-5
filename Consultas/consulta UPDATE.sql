--CONSULTA PARA UPDATE

--1. Tabla cursos
UPDATE cursos SET cupo_curso = 25, horario_curso = 'Martes y Jueves 16:00-18:00' 
WHERE id_curso = 3;

--2. Tabla departamentos
UPDATE departamentos SET descripcion_departamento = 'Gestión de talento humano y desarrollo organizacional' 
WHERE id_departamento = 2;

--3. Tabla equipos
UPDATE equipos SET capacidad_memoria_equipo = '32GB', paquetes_software_equipo = CONCAT(paquetes_software_equipo, ', Visual Studio') 
WHERE id_equipo = 1;

--4. Tabla equipos_departamentos
UPDATE equipos_departamentos SET detalle_equipo_departamento = 'Reasignado al laboratorio de cómputo' 
WHERE id_equipo_departamento = 3;

--5. Tabla equipos_requerimientos
UPDATE equipos_requerimientos SET id_estado_equipo = 3, detalle_equipo_requerimiento = 'Requiere reemplazo de tarjeta madre' 
WHERE id_equipo_requerimiento = 3;

--6. Tabla estados_equipo
UPDATE estados_equipo SET descripcion_estado_equipo = 'Equipo funcionando correctamente con todas sus capacidades' 
WHERE nombre_estado_equipo = 'Operativo';

--7. Tabla estados_requerimiento
UPDATE estados_requerimiento SET descripcion_estado_requerimiento = 'Solicitud completada satisfactoriamente' 
WHERE nombre_estado_requerimiento = 'Resuelto';

--8. Tabla preinscripciones
UPDATE preinscripciones SET detalle_preinscripcion = 'Cambio de curso por horario' 
WHERE id_preinscripcion = 2;

--9. Tabla requerimientos
UPDATE reportes SET detalle_final_reporte = 'Problema resuelto con actualización de drivers', id_estado_requerimiento = 3 
WHERE id_reporte = 3;

--10. Tabla reportes
UPDATE requerimientos SET estado_final_requerimiento = 'Configuración de VLAN completada' 
WHERE id_requerimiento = 3;

--11. Tabla servicios
UPDATE servicios SET descripcion_servicio = 'Diseño, desarrollo y mantenimiento de aplicaciones web y móviles' 
WHERE nombre_servicio = 'Desarrollo_Web';

--12. Tabla tecnicos_asignados
UPDATE tecnicos_asignados SET detalle_asignacion = 'Reasignado por carga de trabajo' 
WHERE id_asignacion = 4;

--13. Tabla tipos_usuario
UPDATE tipos_usuario SET detalle_tipo_usuario = 'Personal con acceso completo a todos los módulos del sistema' 
WHERE nombre_tipo_usuario = 'Administrador';

--14. Tabla usuarios_departamentos
UPDATE usuarios_departamentos SET descripcion_usuario_departamento = 'Jefe de laboratorio de cómputo' 
WHERE id_usuario_departamento = 1;

--15. Tabla usuarios_tic
UPDATE usuarios_tic SET telefono_usuario = '04241234567', email_usuario = 'msanchez_new@uc.edu.ve' 
WHERE id_usuario = 1;

--16. Tabla usuarios_uc
UPDATE usuarios_uc SET id_departamento = 3, comentario_usuario_uc = 'Reasignado a Esc. Quimica' 
WHERE id_usuario_uc = 4;