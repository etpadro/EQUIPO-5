-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2025 a las 18:28:47
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
  `descripcion_curso` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `horario_curso` varchar(50) NOT NULL,
  `costo_curso` decimal(10,2) NOT NULL,
  `cupo_curso` int(11) NOT NULL,
  `comentario_curso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL,
  `descripcion_departamento` varchar(255) DEFAULT NULL,
  `comentario_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre_equipo` varchar(100) NOT NULL,
  `descripcion_equipo` varchar(255) NOT NULL,
  `capacidad_memoria_equipo` varchar(50) DEFAULT NULL,
  `paquetes_software_equipo` varchar(255) DEFAULT NULL,
  `comentario_equipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_departamentos`
--

CREATE TABLE `equipos_departamentos` (
  `id_equipo_departamento` int(11) NOT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `comentario_equipo_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_requerimientos`
--

CREATE TABLE `equipos_requerimientos` (
  `id_equipo_requerimiento` int(11) NOT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `id_estado_equipo` int(11) NOT NULL,
  `comentario_equipo_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_equipo`
--

CREATE TABLE `estados_equipo` (
  `id_estado_equipo` int(11) NOT NULL,
  `nombre_estado_equipo` varchar(50) NOT NULL,
  `descripcion_estado_equipo` varchar(255) DEFAULT NULL,
  `comentario_estado_equipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_requerimiento`
--

CREATE TABLE `estados_requerimiento` (
  `id_estado_requerimiento` int(11) NOT NULL,
  `nombre_estado_requerimiento` varchar(50) NOT NULL,
  `descripcion_estado_requerimiento` varchar(255) DEFAULT NULL,
  `comentario_estado_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preinscripciones`
--

CREATE TABLE `preinscripciones` (
  `id_preinscripcion` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `fecha_inscripcion` date NOT NULL,
  `comentario_preinscripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id_reporte` int(11) NOT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `detalles_reporte` varchar(255) NOT NULL,
  `fecha_generacion` date NOT NULL,
  `comentario_reporte` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos`
--

CREATE TABLE `requerimientos` (
  `id_requerimiento` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_estado_requerimiento` int(11) NOT NULL,
  `descripcion_requerimiento` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `comentario_requerimiento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion_servicio` varchar(255) NOT NULL,
  `comentario_servicio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos_asignados`
--

CREATE TABLE `tecnicos_asignados` (
  `id_asignacion` int(11) NOT NULL,
  `id_requerimiento` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `fecha_asignacion` date NOT NULL DEFAULT current_timestamp(),
  `comentario_asignacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(50) NOT NULL,
  `descripcion_tipo_usuario` varchar(255) DEFAULT NULL,
  `comentario_tipo_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_departamentos`
--

CREATE TABLE `usuarios_departamentos` (
  `id_usuario_departamento` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `comentario_usuario_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tic`
--

CREATE TABLE `usuarios_tic` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(100) NOT NULL,
  `telefono_usuario` varchar(20) DEFAULT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `contraseña_usuario` varchar(255) NOT NULL,
  `comentario_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_requerimiento` (`id_requerimiento`);

--
-- Indices de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD PRIMARY KEY (`id_requerimiento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_estado_requerimiento` (`id_estado_requerimiento`);

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
  ADD KEY `id_tecnico` (`id_tecnico`);

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
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos_departamentos`
--
ALTER TABLE `equipos_departamentos`
  MODIFY `id_equipo_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos_requerimientos`
--
ALTER TABLE `equipos_requerimientos`
  MODIFY `id_equipo_requerimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados_equipo`
--
ALTER TABLE `estados_equipo`
  MODIFY `id_estado_equipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados_requerimiento`
--
ALTER TABLE `estados_requerimiento`
  MODIFY `id_estado_requerimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preinscripciones`
--
ALTER TABLE `preinscripciones`
  MODIFY `id_preinscripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  MODIFY `id_requerimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tecnicos_asignados`
--
ALTER TABLE `tecnicos_asignados`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_departamentos`
--
ALTER TABLE `usuarios_departamentos`
  MODIFY `id_usuario_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `preinscripciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `preinscripciones_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD CONSTRAINT `reportes_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimientos` (`id_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD CONSTRAINT `requerimientos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `requerimientos_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `requerimientos_ibfk_3` FOREIGN KEY (`id_estado_requerimiento`) REFERENCES `estados_requerimiento` (`id_estado_requerimiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tecnicos_asignados`
--
ALTER TABLE `tecnicos_asignados`
  ADD CONSTRAINT `tecnicos_asignados_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimientos` (`id_requerimiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tecnicos_asignados_ibfk_2` FOREIGN KEY (`id_tecnico`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_departamentos`
--
ALTER TABLE `usuarios_departamentos`
  ADD CONSTRAINT `usuarios_departamentos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_tic` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_departamentos_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_tic`
--
ALTER TABLE `usuarios_tic`
  ADD CONSTRAINT `usuarios_tic_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
