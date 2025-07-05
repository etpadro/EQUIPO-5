-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2025 a las 01:56:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tic_proyeccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `nombre_profesor_curso` varchar(100) NOT NULL,
  `descripcion_curso` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `horario_curso` varchar(50) NOT NULL,
  `costo_curso` decimal(10,2) NOT NULL,
  `cupo_curso` int(11) NOT NULL,
  `detalle_curso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre_curso`, `nombre_profesor_curso`, `descripcion_curso`, `fecha_inicio`, `horario_curso`, `costo_curso`, `cupo_curso`, `detalle_curso`) VALUES
(1, 'Introducción a Python', 'Carlos López', 'Curso básico de programación en Python', '2025-06-01', 'Lunes y Miércoles 14:00-16:00', 150.00, 20, 'Para principiantes'),
(2, 'Excel Avanzado', 'María Gómez', 'Funciones avanzadas de Excel', '2025-06-05', 'Martes y Jueves 16:00-18:00', 120.00, 15, 'Se requiere conocimiento básico'),
(3, 'Redes Cisco', 'Juan Pérez', 'Fundamentos de redes CCNA', '2025-06-10', 'Viernes 08:00-12:00', 200.00, 10, 'Incluye materiales'),
(4, 'Diseño Gráfico', 'Ana Rodríguez', 'Photoshop e Illustrator', '2025-06-15', 'Sábados 09:00-13:00', 180.00, 12, 'Traer laptop'),
(5, 'Seguridad Informática', 'Luis Martínez', 'Conceptos básicos de ciberseguridad', '2025-06-20', 'Miércoles y Viernes 18:00-20:00', 160.00, 18, 'Para todo público');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL,
  `descripcion_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre_departamento`, `descripcion_departamento`) VALUES
(1, 'Informática', 'Departamento de sistemas y tecnología'),
(2, 'Recursos Humanos', 'Gestión de personal'),
(3, 'Esc. Quimica', 'Secretaria de Direccion'),
(4, 'Esc. Civil', 'Secretaria de Direccion'),
(5, 'Esc. Industrial', 'Secretaria de Direccion'),
(6, 'Administracion', 'Secretaria de Inventario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `modelo_cpu_equipo` varchar(100) NOT NULL,
  `serial_cpu_equipo` varchar(50) NOT NULL,
  `capacidad_memoria_equipo` varchar(50) DEFAULT NULL,
  `modelo_monitor_equipo` varchar(50) NOT NULL,
  `serial_monitor_equipo` varchar(50) NOT NULL,
  `modelo_mouse_equipo` varchar(50) NOT NULL,
  `serial_mouse_equipo` varchar(50) NOT NULL,
  `modelo_teclado_equipo` varchar(50) NOT NULL,
  `serial_teclado_equipo` varchar(50) NOT NULL,
  `paquetes_software_equipo` varchar(255) DEFAULT NULL,
  `descripcion_adicional_equipo` varchar(255) NOT NULL,
  `comentario_equipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `modelo_cpu_equipo`, `serial_cpu_equipo`, `capacidad_memoria_equipo`, `modelo_monitor_equipo`, `serial_monitor_equipo`, `modelo_mouse_equipo`, `serial_mouse_equipo`, `modelo_teclado_equipo`, `serial_teclado_equipo`, `paquetes_software_equipo`, `descripcion_adicional_equipo`, `comentario_equipo`) VALUES
(1, 'Dell OptiPlex 7080', 'DEL123456', '16GB', 'Dell P2419H', 'DEL654321', 'Dell MS116', 'DEL111222', 'Dell KB216', 'DEL333444', 'Office 2019, Windows 10', 'Equipo nuevo', 'Asignado a Dep. Informatica'),
(2, 'HP EliteDesk 800', 'HP987654', '8GB', 'HP 24m', 'HP123789', 'HP X400', 'HP555666', 'HP K1500', 'HP777888', 'Windows 10, Photoshop', 'Equipo diseño', 'Necesita más RAM'),
(3, 'Lenovo ThinkCentre', 'LEN456123', '32GB', 'Lenovo L24q', 'LEN789456', 'Lenovo M100', 'LEN222333', 'Lenovo KU-0225', 'LEN444555', 'Windows 11, AutoCAD', 'Estación de trabajo', 'Jefe de Departamento'),
(4, 'Apple iMac 27\"', 'APP123789', '16GB', 'Integrado', 'APP456123', 'Magic Mouse', 'APP777888', 'Magic Keyboard', 'APP999000', 'macOS, Final Cut', 'Edición de video', 'Eduipo Cultura'),
(5, 'Acer Aspire TC', 'ACE789123', '8GB', 'Acer R240Y', 'ACE321654', 'Acer OM220', 'ACE666777', 'Acer KU-0513', 'ACE888999', 'Windows 10', 'Equipo básico', 'Para recepción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_departamentos`
--

CREATE TABLE `equipos_departamentos` (
  `id_equipo_departamento` int(11) NOT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `detalle_equipo_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos_departamentos`
--

INSERT INTO `equipos_departamentos` (`id_equipo_departamento`, `id_equipo`, `id_departamento`, `detalle_equipo_departamento`) VALUES
(1, 1, 1, 'Equipo principal del departamento'),
(2, 2, 5, 'Dep. Dibujo Mecanico'),
(3, 3, 1, 'Servidor Cultura'),
(4, 4, 4, 'Dibujo Grafico'),
(5, 5, 2, 'Equipo de RRHH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_requerimientos`
--

CREATE TABLE `equipos_requerimientos` (
  `id_equipo_requerimiento` int(11) NOT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `id_estado_equipo` int(11) NOT NULL,
  `detalle_equipo_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos_requerimientos`
--

INSERT INTO `equipos_requerimientos` (`id_equipo_requerimiento`, `id_requerimiento`, `id_equipo`, `id_estado_equipo`, `detalle_equipo_requerimiento`) VALUES
(1, 1, 1, 1, 'Equipo reparado completamente'),
(2, 2, 2, 1, 'Software instalado correctamente'),
(3, 3, 3, 2, 'En espera de piezas'),
(4, 4, 4, 1, 'Configuración completada'),
(5, 5, 5, 3, 'Requiere reemplazo de disco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_equipo`
--

CREATE TABLE `estados_equipo` (
  `id_estado_equipo` int(11) NOT NULL,
  `nombre_estado_equipo` varchar(50) NOT NULL,
  `descripcion_estado_equipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_equipo`
--

INSERT INTO `estados_equipo` (`id_estado_equipo`, `nombre_estado_equipo`, `descripcion_estado_equipo`) VALUES
(1, 'Operativo', 'Funcionando correctamente, actualizacion de software'),
(2, 'En mantenimiento', 'En reparación'),
(3, 'En Enciende', 'Requiere reparación mayor'),
(4, 'Fuente de Poder', 'Necesita reemplazo'),
(5, 'Desincorporado', 'Dado de baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_requerimiento`
--

CREATE TABLE `estados_requerimiento` (
  `id_estado_requerimiento` int(11) NOT NULL,
  `nombre_estado_requerimiento` varchar(50) NOT NULL,
  `descripcion_estado_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados_requerimiento`
--

INSERT INTO `estados_requerimiento` (`id_estado_requerimiento`, `nombre_estado_requerimiento`, `descripcion_estado_requerimiento`) VALUES
(1, 'Pendiente', 'Requiere atención'),
(2, 'En proceso', 'Siendo atendido'),
(3, 'Resuelto', 'Solución implementada'),
(4, 'Cancelado', 'No posee Serial UC'),
(5, 'Rechazado', 'No procede');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripciones`
--

CREATE TABLE `preinscripciones` (
  `id_preinscripcion` int(11) NOT NULL,
  `id_usuario_uc` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `fecha_inscripcion` date NOT NULL,
  `detalle_preinscripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preinscripciones`
--

INSERT INTO `preinscripciones` (`id_preinscripcion`, `id_usuario_uc`, `id_curso`, `fecha_inscripcion`, `detalle_preinscripcion`) VALUES
(1, 1, 1, '2025-05-20', 'Interesado en programación'),
(2, 2, 2, '2025-05-21', 'Necesita para trabajo'),
(3, 3, 3, '2025-05-22', 'Ampliación de conocimientos'),
(4, 4, 4, '2025-05-23', 'Para área de marketing'),
(5, 5, 5, '2025-05-24', 'Curso requerido por empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `id_usuario_departamento` int(11) DEFAULT NULL,
  `id_equipo_departamento` int(11) DEFAULT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `id_estado_requerimiento` int(11) DEFAULT NULL,
  `id_asignacion` int(11) DEFAULT NULL,
  `detalles_reporte` varchar(255) NOT NULL,
  `fecha_generacion` date NOT NULL,
  `detalle_final_reporte` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id_reporte`, `id_usuario_departamento`, `id_equipo_departamento`, `id_requerimiento`, `id_estado_requerimiento`, `id_asignacion`, `detalles_reporte`, `fecha_generacion`, `detalle_final_reporte`) VALUES
(1, 1, 1, 1, 3, 1, 'Equipo no enciende', '2025-05-01', 'Reparado cambiando fuente de poder'),
(2, 2, 2, 2, 3, 2, 'Necesita software contable', '2025-05-02', 'Software instalado y capacitación dada'),
(3, 3, 3, 3, 2, 3, 'Problemas con conexión WiFi', '2025-05-03', 'En proceso de reparación'),
(4, 4, 4, 4, 1, 4, 'Solicitud de capacitación', '2025-05-04', 'Programado para próxima semana'),
(5, 5, 5, 5, 2, 5, 'Desarrollo aplicación', '2025-05-05', 'En fase de análisis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos`
--

CREATE TABLE `requerimientos` (
  `id_requerimiento` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_usuario_departamento` int(11) DEFAULT NULL,
  `descripcion_inicial_requerimiento` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado_final_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `requerimientos`
--

INSERT INTO `requerimientos` (`id_requerimiento`, `id_usuario`, `id_servicio`, `id_usuario_departamento`, `descripcion_inicial_requerimiento`, `fecha_creacion`, `estado_final_requerimiento`) VALUES
(1, 2, 1, 1, 'Equipo no enciende', '2025-05-01', 'Reparado cambiando fuente'),
(2, 4, 2, 2, 'Instalar software matlab', '2025-05-02', 'Software instalado y configurado'),
(3, 2, 3, 3, 'Problema con red WiFi', '2025-05-03', 'Router reemplazado'),
(4, 3, 4, 4, 'Capacitación en CRM', '2025-05-04', 'Curso programado'),
(5, 2, 5, 5, 'Desarrollo aplicación interna', '2025-05-05', 'En proceso de desarrollo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion_servicio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `descripcion_servicio`) VALUES
(1, 'Soporte Tecnico', 'Reparación y mantenimiento de equipos'),
(2, 'Soporte Software', 'Instalación y configuración de programas'),
(3, 'Redes', 'Configuración y mantenimiento de red'),
(4, 'Capacitación', 'Cursos de formación'),
(5, 'Desarrollo_Web', 'Creación de paginas y publicidad web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos_asignados`
--

CREATE TABLE `tecnicos_asignados` (
  `id_asignacion` int(11) NOT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_asignacion` date NOT NULL DEFAULT current_timestamp(),
  `detalle_asignacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tecnicos_asignados`
--

INSERT INTO `tecnicos_asignados` (`id_asignacion`, `id_requerimiento`, `id_usuario`, `fecha_asignacion`, `detalle_asignacion`) VALUES
(1, 1, 2, '2025-03-01', 'Asignado a DTIC'),
(2, 2, 4, '2025-05-02', 'Asignado a DTIC'),
(3, 3, 2, '2025-01-03', 'Asignado a DTIC'),
(4, 4, 3, '2025-03-04', 'Asignado a DTIC'),
(5, 5, 2, '2025-04-05', 'Asignado a DTIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(50) NOT NULL,
  `detalle_tipo_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id_tipo_usuario`, `nombre_tipo_usuario`, `detalle_tipo_usuario`) VALUES
(1, 'Administrador', 'Acceso completo al sistema'),
(2, 'Técnico_1', 'Personal de soporte técnico'),
(3, 'Técnico_2', 'Personal de soporte técnico'),
(4, 'Técnico_3', 'Personal de soporte técnico'),
(5, 'Técnico_4', 'Personal de soporte técnico'),
(6, 'Analista Web', 'Acceso completo al sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_departamentos`
--

CREATE TABLE `usuarios_departamentos` (
  `id_usuario_departamento` int(11) NOT NULL,
  `id_usuario_uc` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `descripcion_usuario_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_departamentos`
--

INSERT INTO `usuarios_departamentos` (`id_usuario_departamento`, `id_usuario_uc`, `id_departamento`, `descripcion_usuario_departamento`) VALUES
(1, 1, 1, 'Jefe de departamento'),
(2, 2, 2, 'Analista de RH'),
(3, 3, 3, 'Secretaria'),
(4, 4, 4, 'Secretaria'),
(5, 5, 5, 'Secretaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tic`
--

CREATE TABLE `usuarios_tic` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `apellido_usuario` varchar(100) NOT NULL,
  `cedula_usuario` int(11) NOT NULL,
  `email_usuario` varchar(100) NOT NULL,
  `telefono_usuario` varchar(20) DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `contraseña_usuario` varchar(255) NOT NULL,
  `comentario_nombre_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_tic`
--

INSERT INTO `usuarios_tic` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `cedula_usuario`, `email_usuario`, `telefono_usuario`, `id_tipo_usuario`, `contraseña_usuario`, `comentario_nombre_usuario`) VALUES
(1, 'Maria', 'Sanchez', 10345678, 'mysanchez@uc.edu.ve', '04241234567', 1, 'hashed_password_1', 'Administrador principal'),
(2, 'Dimas', 'Guedez', 23456789, 'dguedez@uc.edu.ve', '04241234567', 2, 'hashed_password_2', 'Técnico senior_1'),
(3, 'Mauricio', 'Andrades', 14567890, 'mauandrades@uc.edu.ve', '04161234567', 3, 'hashed_password_3', 'Técnico senior_2'),
(4, 'Analis', 'Rodríguez', 15678901, 'arodeiguez@uc.edu.ve', '04261234567', 2, 'hashed_password_4', 'Técnico senior_3'),
(5, 'Luis', 'Martínez', 26789012, 'lmartinez@uc.edu.ve', '04141234567', 5, 'hashed_password_5', 'Analista Web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_uc`
--

CREATE TABLE `usuarios_uc` (
  `id_usuario_uc` int(11) NOT NULL,
  `nombre_usuario_uc` varchar(100) NOT NULL,
  `apellido_usuario_uc` varchar(100) NOT NULL,
  `cedula_usuario_uc` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `comentario_usuario_uc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_uc`
--

INSERT INTO `usuarios_uc` (`id_usuario_uc`, `nombre_usuario_uc`, `apellido_usuario_uc`, `cedula_usuario_uc`, `id_departamento`, `comentario_usuario_uc`) VALUES
(1, 'Monica', 'González', 7890123, 1, 'Jefe de Departamento'),
(2, 'Laura', 'Hernández', 11258964, 2, 'Recursos Humanos'),
(3, 'Yeliana', 'Díaz', 12546398, 3, 'Secretaria'),
(4, 'Sofía', 'Morales', 90123456, 4, 'Secretaria'),
(5, 'Jorge', 'Rojas', 11223344, 5, 'Lic. en Compra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `equipos_departamentos`
--
ALTER TABLE `equipos_departamentos`
  ADD PRIMARY KEY (`id_equipo_departamento`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `equipos_requerimientos`
--
ALTER TABLE `equipos_requerimientos`
  ADD PRIMARY KEY (`id_equipo_requerimiento`),
  ADD KEY `id_requerimiento` (`id_requerimiento`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `id_estado_equipo` (`id_estado_equipo`);

--
-- Indices de la tabla `estados_equipo`
--
ALTER TABLE `estados_equipo`
  ADD PRIMARY KEY (`id_estado_equipo`),
  ADD UNIQUE KEY `nombre_estado_equipo` (`nombre_estado_equipo`);

--
-- Indices de la tabla `estados_requerimiento`
--
ALTER TABLE `estados_requerimiento`
  ADD PRIMARY KEY (`id_estado_requerimiento`),
  ADD UNIQUE KEY `nombre_estado_requerimiento` (`nombre_estado_requerimiento`);

--
-- Indices de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD PRIMARY KEY (`id_preinscripcion`),
  ADD KEY `id_usuario_uc` (`id_usuario_uc`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_usuario_departamento` (`id_usuario_departamento`),
  ADD KEY `id_estado_requerimiento` (`id_estado_requerimiento`),
  ADD KEY `id_asignacion` (`id_asignacion`),
  ADD KEY `id_equipo_departamento` (`id_equipo_departamento`),
  ADD KEY `id_requerimiento` (`id_requerimiento`);

--
-- Indices de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD PRIMARY KEY (`id_requerimiento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_usuario_departamento` (`id_usuario_departamento`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tecnicos_asignados`
--
ALTER TABLE `tecnicos_asignados`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `id_requerimiento` (`id_requerimiento`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`),
  ADD UNIQUE KEY `nombre_tipo_usuario` (`nombre_tipo_usuario`);

--
-- Indices de la tabla `usuarios_departamentos`
--
ALTER TABLE `usuarios_departamentos`
  ADD PRIMARY KEY (`id_usuario_departamento`),
  ADD KEY `id_usuario_uc` (`id_usuario_uc`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- Indices de la tabla `usuarios_uc`
--
ALTER TABLE `usuarios_uc`
  ADD PRIMARY KEY (`id_usuario_uc`),
  ADD UNIQUE KEY `cedula_usuario_uc` (`cedula_usuario_uc`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipos_departamentos`
--
ALTER TABLE `equipos_departamentos`
  MODIFY `id_equipo_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipos_requerimientos`
--
ALTER TABLE `equipos_requerimientos`
  MODIFY `id_equipo_requerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados_equipo`
--
ALTER TABLE `estados_equipo`
  MODIFY `id_estado_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados_requerimiento`
--
ALTER TABLE `estados_requerimiento`
  MODIFY `id_estado_requerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  MODIFY `id_preinscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  MODIFY `id_requerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tecnicos_asignados`
--
ALTER TABLE `tecnicos_asignados`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios_departamentos`
--
ALTER TABLE `usuarios_departamentos`
  MODIFY `id_usuario_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios_uc`
--
ALTER TABLE `usuarios_uc`
  MODIFY `id_usuario_uc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos_departamentos`
--
ALTER TABLE `equipos_departamentos`
  ADD CONSTRAINT `equipos_departamentos_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_departamentos_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos_requerimientos`
--
ALTER TABLE `equipos_requerimientos`
  ADD CONSTRAINT `equipos_requerimientos_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimientos` (`id_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_requerimientos_ibfk_2` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_requerimientos_ibfk_3` FOREIGN KEY (`id_estado_equipo`) REFERENCES `estados_equipo` (`id_estado_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  ADD CONSTRAINT `preinscripciones_ibfk_1` FOREIGN KEY (`id_usuario_uc`) REFERENCES `usuarios_uc` (`id_usuario_uc`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `preinscripciones_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`id_usuario_departamento`) REFERENCES `usuarios_departamentos` (`id_usuario_departamento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_2` FOREIGN KEY (`id_equipo_departamento`) REFERENCES `equipos_departamentos` (`id_equipo_departamento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_3` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimientos` (`id_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_4` FOREIGN KEY (`id_estado_requerimiento`) REFERENCES `estados_requerimiento` (`id_estado_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reportes_ibfk_5` FOREIGN KEY (`id_asignacion`) REFERENCES `tecnicos_asignados` (`id_asignacion`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD CONSTRAINT `requerimientos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `requerimientos_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `requerimientos_ibfk_3` FOREIGN KEY (`id_usuario_departamento`) REFERENCES `usuarios_departamentos` (`id_usuario_departamento`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `tecnicos_asignados`
--
ALTER TABLE `tecnicos_asignados`
  ADD CONSTRAINT `tecnicos_asignados_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimientos` (`id_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tecnicos_asignados_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_departamentos`
--
ALTER TABLE `usuarios_departamentos`
  ADD CONSTRAINT `usuarios_departamentos_ibfk_1` FOREIGN KEY (`id_usuario_uc`) REFERENCES `usuarios_uc` (`id_usuario_uc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_departamentos_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  ADD CONSTRAINT `usuarios_tic_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_uc`
--
ALTER TABLE `usuarios_uc`
  ADD CONSTRAINT `usuarios_uc_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
