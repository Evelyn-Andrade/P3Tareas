-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2025 a las 21:33:18
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
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `carnet_alumno` varchar(15) NOT NULL,
  `nombre_alumno` varchar(45) DEFAULT NULL,
  `direccion_alumno` varchar(45) DEFAULT NULL,
  `telefono_alumno` varchar(45) DEFAULT NULL,
  `email_alumno` varchar(20) DEFAULT NULL,
  `estatus_alumno` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`carnet_alumno`, `nombre_alumno`, `direccion_alumno`, `telefono_alumno`, `email_alumno`, `estatus_alumno`) VALUES
('0178', 'Julio Mendez Cardona', 'Lomas del norte Zona 17', '4706-6690', 'JMendez@miumg.edu.gt', '1'),
('0890', 'Gabriela Pinto Garcia', 'Zona 18 Limon', '3456-7890', 'gpinto@miumg.edu.gt', '1'),
('1224', 'Sofia Andrade Luna', 'Canalitos Zona 24', '5272-1772', 'eandradel2@miumg.edu', '1'),
('1700', 'Pedro Luna Rodriguez', 'Residencial Fernando Zona 17', '7890-0060', 'PLunaR@miumg.edu.gt', '1'),
('2299', 'Esperanza Ortiz Alvarez', 'Los Arboles Zacapa,zacapa', '5000-4010', 'eOrtiz@miumg.edu.gt', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursomaestro`
--

CREATE TABLE `asignacioncursomaestro` (
  `CODIGO_CARRERA` varchar(5) NOT NULL,
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `CODIGO_SECCION` varchar(5) NOT NULL,
  `CODIGO_AULA` varchar(5) NOT NULL,
  `CODIGO_CURSO` varchar(5) NOT NULL,
  `CARNET_MAESTRO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursomaestro`
--

INSERT INTO `asignacioncursomaestro` (`CODIGO_CARRERA`, `CODIGO_SEDE`, `CODIGO_JORNADA`, `CODIGO_SECCION`, `CODIGO_AULA`, `CODIGO_CURSO`, `CARNET_MAESTRO`) VALUES
('1100', '00456', '300', 'A700', '8003', '900', '1045'),
('1300', '09956', '302', 'E704', '8021', '904', '9876'),
('1400', '07890', '301', 'C702', '8012', '901', '7900');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumno`
--

CREATE TABLE `asignacioncursosalumno` (
  `CODIGO_CARRERA` varchar(5) NOT NULL,
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `CODIGO_SECCION` varchar(5) NOT NULL,
  `CODIGO_AULA` varchar(5) NOT NULL,
  `CODIGO_CURSO` varchar(5) NOT NULL,
  `CARNET_ALUMNO` varchar(15) NOT NULL,
  `NOTA_ASIGNACIONCURSOALUMNOS` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosalumno`
--

INSERT INTO `asignacioncursosalumno` (`CODIGO_CARRERA`, `CODIGO_SEDE`, `CODIGO_JORNADA`, `CODIGO_SECCION`, `CODIGO_AULA`, `CODIGO_CURSO`, `CARNET_ALUMNO`, `NOTA_ASIGNACIONCURSOALUMNOS`) VALUES
('1100', '00456', '300', 'A700', '8003', '900', '0178', 61.00),
('1300', '09956', '302', 'E704', '8021', '904', '1700', 72.00),
('1400', '07890', '301', 'C702', '8012', '901', '1224', 98.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `codigo_aula` varchar(5) NOT NULL,
  `nombre_aula` varchar(45) DEFAULT NULL,
  `estatus_aula` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`codigo_aula`, `nombre_aula`, `estatus_aula`) VALUES
('8003', 'C500', '1'),
('8012', 'D400', '1'),
('8021', 'E600', '1'),
('8030', 'A300', '1'),
('8045', 'B900', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `codigo_carrera` varchar(5) NOT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `codigo_facultad` varchar(5) DEFAULT NULL,
  `estatus_carrera` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`codigo_carrera`, `nombre_carrera`, `codigo_facultad`, `estatus_carrera`) VALUES
('1100', 'Ingenieria Civil', '00001', '1'),
('1200', 'Ingenieria en Sistemas', '00001', '1'),
('1300', 'Ingenieria Industrial', '00001', '1'),
('1400', 'Ingenieria en Alimentos', '00001', '1'),
('1500', 'Ingenieria Mecanica', '00001', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(5) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `estatus_curso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`codigo_curso`, `nombre_curso`, `estatus_curso`) VALUES
('900', 'Metodos Numericos', '1'),
('901', 'Estadistica II', '1'),
('902', 'Contabilidad', '1'),
('903', 'Calculo', '1'),
('904', 'Termodinamica', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `codigo_facultad` varchar(5) NOT NULL,
  `nombre_facultad` varchar(45) DEFAULT NULL,
  `estatus_facultad` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`codigo_facultad`, `nombre_facultad`, `estatus_facultad`) VALUES
('00001', 'Ingenieria y Matematica', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `codigo_jornada` varchar(5) NOT NULL,
  `nombre_jornada` varchar(45) DEFAULT NULL,
  `estatus_jornada` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`codigo_jornada`, `nombre_jornada`, `estatus_jornada`) VALUES
('300', 'Matutina', '1'),
('301', 'Vispertina', '1'),
('302', 'Fin de Semana', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `carnet_maestro` varchar(15) NOT NULL,
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `direccion_maestro` varchar(45) DEFAULT NULL,
  `telefono_maestro` varchar(45) DEFAULT NULL,
  `email_maestro` varchar(20) DEFAULT NULL,
  `estatus_maestro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`carnet_maestro`, `nombre_maestro`, `direccion_maestro`, `telefono_maestro`, `email_maestro`, `estatus_maestro`) VALUES
('1045', 'Josue Florian', 'La Petapa zona 12', '3015-0282', 'JMflorian@miumg.edu.', '1'),
('6123', 'Tatiana Vallejo', 'Castillo Zona 11', '5695-8591', 'Tatvallejo@miumg.edu', '1'),
('7900', 'Andrea Andrade', 'El Maestro Zona 2', '3962-1952', 'Andand9@miumg.edu.gt', '1'),
('9678', 'Francisco Ramirez', 'Pinares Zona 18', '3064-3363', 'Framirez@miumg.edu.g', '1'),
('9876', 'Donald Poz', 'San Jose del Golfo', '5015-8376', 'Dpoz@miumg.edu.gt', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `codigo_seccion` varchar(5) NOT NULL,
  `nombre_seccion` varchar(45) DEFAULT NULL,
  `estatus_seccion` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`codigo_seccion`, `nombre_seccion`, `estatus_seccion`) VALUES
('A700', 'A', '1'),
('B701', 'B', '1'),
('C702', 'C', '1'),
('D703', 'D', '1'),
('E704', 'E', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `codigo_sede` varchar(5) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `estatus_sede` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`codigo_sede`, `nombre_sede`, `estatus_sede`) VALUES
('00456', 'Naranjo', '1'),
('03456', 'Zacapa', '1'),
('07890', 'San Jose Pinula', '1'),
('08007', 'Antigua Guatemala', '1'),
('09956', 'Portales', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`carnet_alumno`);

--
-- Indices de la tabla `asignacioncursomaestro`
--
ALTER TABLE `asignacioncursomaestro`
  ADD PRIMARY KEY (`CODIGO_CARRERA`,`CODIGO_SEDE`,`CODIGO_JORNADA`,`CODIGO_SECCION`,`CODIGO_AULA`,`CODIGO_CURSO`,`CARNET_MAESTRO`),
  ADD KEY `CODIGO_SEDE` (`CODIGO_SEDE`),
  ADD KEY `CODIGO_JORNADA` (`CODIGO_JORNADA`),
  ADD KEY `CODIGO_SECCION` (`CODIGO_SECCION`),
  ADD KEY `CODIGO_AULA` (`CODIGO_AULA`),
  ADD KEY `CODIGO_CURSO` (`CODIGO_CURSO`),
  ADD KEY `CARNET_MAESTRO` (`CARNET_MAESTRO`);

--
-- Indices de la tabla `asignacioncursosalumno`
--
ALTER TABLE `asignacioncursosalumno`
  ADD PRIMARY KEY (`CODIGO_CARRERA`,`CODIGO_SEDE`,`CODIGO_JORNADA`,`CODIGO_SECCION`,`CODIGO_AULA`,`CODIGO_CURSO`,`CARNET_ALUMNO`),
  ADD KEY `CODIGO_SEDE` (`CODIGO_SEDE`),
  ADD KEY `CODIGO_JORNADA` (`CODIGO_JORNADA`),
  ADD KEY `CODIGO_SECCION` (`CODIGO_SECCION`),
  ADD KEY `CODIGO_AULA` (`CODIGO_AULA`),
  ADD KEY `CODIGO_CURSO` (`CODIGO_CURSO`),
  ADD KEY `CARNET_ALUMNO` (`CARNET_ALUMNO`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`codigo_aula`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`codigo_carrera`),
  ADD KEY `codigo_facultad` (`codigo_facultad`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo_curso`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`codigo_facultad`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`codigo_jornada`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`carnet_maestro`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`codigo_seccion`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`codigo_sede`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacioncursomaestro`
--
ALTER TABLE `asignacioncursomaestro`
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_1` FOREIGN KEY (`CODIGO_CARRERA`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_2` FOREIGN KEY (`CODIGO_SEDE`) REFERENCES `sedes` (`codigo_sede`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_3` FOREIGN KEY (`CODIGO_JORNADA`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_4` FOREIGN KEY (`CODIGO_SECCION`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_5` FOREIGN KEY (`CODIGO_AULA`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_6` FOREIGN KEY (`CODIGO_CURSO`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacioncursomaestro_ibfk_7` FOREIGN KEY (`CARNET_MAESTRO`) REFERENCES `maestros` (`carnet_maestro`);

--
-- Filtros para la tabla `asignacioncursosalumno`
--
ALTER TABLE `asignacioncursosalumno`
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_1` FOREIGN KEY (`CODIGO_CARRERA`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_2` FOREIGN KEY (`CODIGO_SEDE`) REFERENCES `sedes` (`codigo_sede`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_3` FOREIGN KEY (`CODIGO_JORNADA`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_4` FOREIGN KEY (`CODIGO_SECCION`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_5` FOREIGN KEY (`CODIGO_AULA`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_6` FOREIGN KEY (`CODIGO_CURSO`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacioncursosalumno_ibfk_7` FOREIGN KEY (`CARNET_ALUMNO`) REFERENCES `alumnos` (`carnet_alumno`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`codigo_facultad`) REFERENCES `facultad` (`codigo_facultad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
