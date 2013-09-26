-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2013 a las 18:45:55
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bartolome`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE IF NOT EXISTS `actividad` (
  `codigo_actividad` int(11) NOT NULL DEFAULT '0',
  `nombre_actividad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`codigo_actividad`, `nombre_actividad`) VALUES
(1, 'BAILE'),
(2, 'CANTO'),
(3, 'NATACION '),
(4, 'BEISBOL'),
(5, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `indice_persona` int(11) NOT NULL,
  `estatus_administrador` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`indice_persona`, `estatus_administrador`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alergia`
--

CREATE TABLE IF NOT EXISTS `alergia` (
  `codigo_alergia` int(11) NOT NULL DEFAULT '0',
  `nombre_alergia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_alergia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alergia`
--

INSERT INTO `alergia` (`codigo_alergia`, `nombre_alergia`) VALUES
(1, 'penicilina'),
(2, 'ibuprofeno'),
(3, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
  `indice_persona` int(11) NOT NULL,
  `lugar_nacimiento_alumno` varchar(50) DEFAULT NULL,
  `ingreso_familiar_alumno` float DEFAULT NULL,
  `peso_alumno` float DEFAULT NULL,
  `estatura_alumno` float DEFAULT NULL,
  `beca_alumno` tinyint(4) DEFAULT NULL,
  `codigo_religion` int(11) NOT NULL,
  PRIMARY KEY (`indice_persona`),
  KEY `codigo_religion` (`codigo_religion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`indice_persona`, `lugar_nacimiento_alumno`, `ingreso_familiar_alumno`, `peso_alumno`, `estatura_alumno`, `beca_alumno`, `codigo_religion`) VALUES
(2, 'valencia ', 3000, 55, 1.56, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_actividad`
--

CREATE TABLE IF NOT EXISTS `alumno_actividad` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `codigo_actividad` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`,`codigo_actividad`),
  KEY `codigo_actividad` (`codigo_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_alergia`
--

CREATE TABLE IF NOT EXISTS `alumno_alergia` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `codigo_alergia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`,`codigo_alergia`),
  KEY `codigo_alergia` (`codigo_alergia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_enfermedad`
--

CREATE TABLE IF NOT EXISTS `alumno_enfermedad` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `codigo_enfermedad` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`,`codigo_enfermedad`),
  KEY `codigo_enfermedad` (`codigo_enfermedad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_impedimentofisico`
--

CREATE TABLE IF NOT EXISTS `alumno_impedimentofisico` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `codigo_impedimentofisico` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`,`codigo_impedimentofisico`),
  KEY `codigo_impedimentofisico` (`codigo_impedimentofisico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_intervencionquirurgica`
--

CREATE TABLE IF NOT EXISTS `alumno_intervencionquirurgica` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `codigo_intervencionquirurgica` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`,`codigo_intervencionquirurgica`),
  KEY `codigo_intervencionquirurgica` (`codigo_intervencionquirurgica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_representante`
--

CREATE TABLE IF NOT EXISTS `alumno_representante` (
  `indice_persona_alumno` int(11) NOT NULL DEFAULT '0',
  `indice_persona_representante` int(11) NOT NULL DEFAULT '0',
  `parentesco` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`indice_persona_alumno`,`indice_persona_representante`),
  KEY `indice_persona_representante` (`indice_persona_representante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno_representante`
--

INSERT INTO `alumno_representante` (`indice_persona_alumno`, `indice_persona_representante`, `parentesco`) VALUES
(2, 3, 'SOBRINO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE IF NOT EXISTS `auditoria` (
  `numero_auditoria` int(11) NOT NULL,
  `accion_auditoria` varchar(50) NOT NULL DEFAULT '',
  `fecha_auditoria` date DEFAULT NULL,
  `hora_entrada_auditoria` datetime DEFAULT NULL,
  `hora_salida_auditoria` datetime DEFAULT NULL,
  `indice_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero_auditoria`),
  KEY `indice_persona` (`indice_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `codigo_direccion` int(11) NOT NULL DEFAULT '0',
  `ubicacion_direccion` text,
  `codigo_parroquia` int(11) DEFAULT NULL,
  `codigo_tipovivienda` int(11) DEFAULT NULL,
  `indice_persona` int(11) NOT NULL,
  PRIMARY KEY (`codigo_direccion`),
  KEY `indice_persona` (`indice_persona`),
  KEY `codigo_parroquia` (`codigo_parroquia`),
  KEY `codigo_tipovivienda` (`codigo_tipovivienda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad`
--

CREATE TABLE IF NOT EXISTS `enfermedad` (
  `codigo_enfermedad` int(11) NOT NULL DEFAULT '0',
  `nombre_enfermedad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_enfermedad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enfermedad`
--

INSERT INTO `enfermedad` (`codigo_enfermedad`, `nombre_enfermedad`) VALUES
(1, 'ANEMICO'),
(2, 'ASMA'),
(3, 'BRONQUITIS'),
(4, 'RUBEOLA'),
(5, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `codigo_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`codigo_estado`, `nombre_estado`) VALUES
(1, 'Carabobo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evalua`
--

CREATE TABLE IF NOT EXISTS `evalua` (
  `indice_persona_alumno` int(11) NOT NULL DEFAULT '0',
  `codigo_materia` int(11) NOT NULL DEFAULT '0',
  `codigo_seccion` int(11) NOT NULL DEFAULT '0',
  `codigo_grado` int(11) DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `indice_persona_profesor` int(11) NOT NULL,
  PRIMARY KEY (`indice_persona_alumno`,`codigo_materia`,`codigo_seccion`),
  KEY `codigo_seccion` (`codigo_seccion`),
  KEY `codigo_materia` (`codigo_materia`),
  KEY `indice_persona_profesor` (`indice_persona_profesor`),
  KEY `codigo_grado` (`codigo_grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evalua`
--

INSERT INTO `evalua` (`indice_persona_alumno`, `codigo_materia`, `codigo_seccion`, `codigo_grado`, `calificacion`, `indice_persona_profesor`) VALUES
(2, 102, 2, 1, 19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
  `codigo_grado` int(11) NOT NULL DEFAULT '0',
  `nombre_grado` varchar(30) DEFAULT NULL,
  `codigo_periodo` int(11) NOT NULL,
  PRIMARY KEY (`codigo_grado`),
  KEY `codigo_periodo` (`codigo_periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`codigo_grado`, `nombre_grado`, `codigo_periodo`) VALUES
(1, 'PRIMER AÑO', 1),
(2, 'SEGUNDO AÑO', 1),
(3, 'TERCER AÑO', 1),
(4, 'CUARTO AÑO', 1),
(5, 'QUINTO AÑO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradoinstruccion`
--

CREATE TABLE IF NOT EXISTS `gradoinstruccion` (
  `codigo_gradoinstruccion` int(11) NOT NULL DEFAULT '0',
  `nombre_gradoinstruccion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_gradoinstruccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gradoinstruccion`
--

INSERT INTO `gradoinstruccion` (`codigo_gradoinstruccion`, `nombre_gradoinstruccion`) VALUES
(1, 'BACHILLER'),
(2, 'TSU'),
(3, 'LICENCIADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impedimentofisico`
--

CREATE TABLE IF NOT EXISTS `impedimentofisico` (
  `codigo_impedimentofisico` int(11) NOT NULL DEFAULT '0',
  `nombre_impedimentofisico` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_impedimentofisico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `impedimentofisico`
--

INSERT INTO `impedimentofisico` (`codigo_impedimentofisico`, `nombre_impedimentofisico`) VALUES
(1, 'DIFICULTAD MOTORA'),
(2, 'DIFICULTAD VISUAL'),
(3, 'DIFICULTAD AUDITIVA'),
(4, 'AUSENCIA DE EXTREMIDAD'),
(5, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervencionquirurgica`
--

CREATE TABLE IF NOT EXISTS `intervencionquirurgica` (
  `codigo_intervencionquirurgica` int(11) NOT NULL DEFAULT '0',
  `nombre_intervencionquirurgica` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_intervencionquirurgica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `intervencionquirurgica`
--

INSERT INTO `intervencionquirurgica` (`codigo_intervencionquirurgica`, `nombre_intervencionquirurgica`) VALUES
(1, 'APENDICITIS'),
(2, 'AMIGDALITIS'),
(3, 'FRACTURAS'),
(4, 'HERNIA'),
(5, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `codigo_materia` int(11) NOT NULL DEFAULT '0',
  `nombre_materia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`codigo_materia`, `nombre_materia`) VALUES
(101, 'CASTELLANOS Y LITERATURA'),
(102, 'INGLES'),
(103, 'MATEMATICAS'),
(104, 'ESTUDIO DE LA NATURALEZA'),
(105, 'HISTORIA DE VENEZUELA'),
(106, 'EDUCACION FAMILIAR'),
(107, 'GOEGRAFIA GENERAL'),
(108, 'EDUCACION ARTISTICA'),
(109, 'EDUCACION FISICA DEPORTE'),
(110, 'DIBUJO'),
(111, 'EDUCACION PARA EL TRABAJO ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `codigo_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_municipio` varchar(30) NOT NULL DEFAULT '',
  `codigo_estado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo_municipio`),
  KEY `codigo_estado` (`codigo_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`codigo_municipio`, `nombre_municipio`, `codigo_estado`) VALUES
(1, 'BEJUMA', 1),
(2, 'CARLO ARVELO', 1),
(3, 'DIEGO IBARRA', 1),
(4, 'GUACARA', 1),
(5, 'JUAN JOSE MORA', 1),
(6, 'LIBERTADOR', 1),
(7, 'LOS GUAYOS', 1),
(8, 'MIRANDA', 1),
(9, 'MONTALBAN', 1),
(10, 'NAGUANAGUA ', 1),
(11, 'PUERTO CABELLO', 1),
(12, 'SAN DIEGO', 1),
(13, 'SAN JOAQUIN ', 1),
(14, 'VALENCIA ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE IF NOT EXISTS `parroquia` (
  `codigo_parroquia` int(11) NOT NULL DEFAULT '0',
  `nombre_parroquia` varchar(30) DEFAULT NULL,
  `codigo_municipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_parroquia`),
  KEY `codigo_municipio` (`codigo_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`codigo_parroquia`, `nombre_parroquia`, `codigo_municipio`) VALUES
(1, 'CANDELARIA', 14),
(2, 'CATEDRAL', 14),
(3, 'EL SOCORRO', 14),
(4, 'MIGUEL PEÑA', 14),
(5, 'RAFAEL URDANETA ', 14),
(6, 'NEGRO PRIMERO', 14),
(7, 'SAN BLAS ', 14),
(8, 'SAN JOSE', 14),
(9, 'SANTA ROSA', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `codigo_periodo` int(11) NOT NULL DEFAULT '0',
  `inicio_periodo` date DEFAULT NULL,
  `fin_periodo` date DEFAULT NULL,
  PRIMARY KEY (`codigo_periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`codigo_periodo`, `inicio_periodo`, `fin_periodo`) VALUES
(1, '2012-09-17', '2013-07-25'),
(2, '2013-09-16', '2014-07-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `indice_persona` int(11) NOT NULL DEFAULT '0',
  `apellido_persona` varchar(30) DEFAULT NULL,
  `nombre_persona` varchar(30) DEFAULT NULL,
  `cedula_persona` int(11) DEFAULT NULL,
  `sexo_persona` char(1) DEFAULT NULL,
  `email_persona` varchar(100) DEFAULT NULL,
  `nacionalidad_persona` char(1) DEFAULT NULL,
  `telefono_persona` varchar(50) DEFAULT NULL,
  `fecha_nacimiento_persona` date DEFAULT NULL,
  `observaciones_persona` text,
  `contrasena_usuario_persona` varchar(50) DEFAULT NULL,
  `rango_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`indice_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`indice_persona`, `apellido_persona`, `nombre_persona`, `cedula_persona`, `sexo_persona`, `email_persona`, `nacionalidad_persona`, `telefono_persona`, `fecha_nacimiento_persona`, `observaciones_persona`, `contrasena_usuario_persona`, `rango_persona`) VALUES
(1, 'perdomo', 'nancy', 18087859, 'F', 'perdomooriana88@gmail.com', 'v', '04269496458', '1988-09-18', 'medio loca', '123456', 1),
(2, 'jauregui', 'alerxis', 20180217, 'M', 'elalerxi@gmail.com', 'v', '04125099586', '1988-09-20', 'medio loco', '123', 2),
(3, 'soto', 'daile', 12345678, 'F', 'sotodaile@gmail.com', 'v', '02418581174', '1988-07-23', 'ESTUDIANTE ', '0000', 3),
(4, 'Chacon', 'jose', 20344166, 'M', 'gabrielchacon8@gmail.com', 'v', '04166774523', '1989-05-10', 'frito', 'virus', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `indice_persona` int(11) NOT NULL,
  `estatus_profesor` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indice_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`indice_persona`, `estatus_profesor`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `religion`
--

CREATE TABLE IF NOT EXISTS `religion` (
  `codigo_religion` int(11) NOT NULL DEFAULT '0',
  `nombre_religion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_religion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `religion`
--

INSERT INTO `religion` (`codigo_religion`, `nombre_religion`) VALUES
(1, 'ateo'),
(2, 'catolico'),
(3, 'cristiano'),
(4, 'testigo de jehova'),
(5, 'mormon'),
(6, 'santero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representante`
--

CREATE TABLE IF NOT EXISTS `representante` (
  `indice_persona` int(11) NOT NULL,
  `empresa_representante` varchar(50) DEFAULT NULL,
  `telefono_trabajo_representante` int(11) DEFAULT NULL,
  `codigo_gradoinstruccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`indice_persona`),
  KEY `codigo_gradoinstruccion` (`codigo_gradoinstruccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `representante`
--

INSERT INTO `representante` (`indice_persona`, `empresa_representante`, `telefono_trabajo_representante`, `codigo_gradoinstruccion`) VALUES
(3, 'POLAR', 2147483647, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `codigo_seccion` int(11) NOT NULL DEFAULT '0',
  `cantidadalumno_seccion` int(11) DEFAULT NULL,
  `codigo_grado` int(11) NOT NULL,
  PRIMARY KEY (`codigo_seccion`),
  KEY `codigo_grado` (`codigo_grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`codigo_seccion`, `cantidadalumno_seccion`, `codigo_grado`) VALUES
(1, 0, 1),
(2, 0, 1),
(3, 0, 2),
(4, 0, 2),
(5, 0, 3),
(6, 0, 3),
(7, 0, 4),
(8, 0, 4),
(9, 0, 5),
(10, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovivienda`
--

CREATE TABLE IF NOT EXISTS `tipovivienda` (
  `codigo_tipovivienda` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipovivienda` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_tipovivienda`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipovivienda`
--

INSERT INTO `tipovivienda` (`codigo_tipovivienda`, `nombre_tipovivienda`) VALUES
(1, 'rancho'),
(2, 'casa'),
(3, 'apartamento'),
(4, 'quinta'),
(5, 'apartoquinta');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`);

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`codigo_religion`) REFERENCES `religion` (`codigo_religion`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`);

--
-- Filtros para la tabla `alumno_actividad`
--
ALTER TABLE `alumno_actividad`
  ADD CONSTRAINT `alumno_actividad_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_actividad_ibfk_2` FOREIGN KEY (`codigo_actividad`) REFERENCES `actividad` (`codigo_actividad`);

--
-- Filtros para la tabla `alumno_alergia`
--
ALTER TABLE `alumno_alergia`
  ADD CONSTRAINT `alumno_alergia_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_alergia_ibfk_2` FOREIGN KEY (`codigo_alergia`) REFERENCES `alergia` (`codigo_alergia`);

--
-- Filtros para la tabla `alumno_enfermedad`
--
ALTER TABLE `alumno_enfermedad`
  ADD CONSTRAINT `alumno_enfermedad_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_enfermedad_ibfk_2` FOREIGN KEY (`codigo_enfermedad`) REFERENCES `enfermedad` (`codigo_enfermedad`);

--
-- Filtros para la tabla `alumno_impedimentofisico`
--
ALTER TABLE `alumno_impedimentofisico`
  ADD CONSTRAINT `alumno_impedimentofisico_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_impedimentofisico_ibfk_2` FOREIGN KEY (`codigo_impedimentofisico`) REFERENCES `impedimentofisico` (`codigo_impedimentofisico`);

--
-- Filtros para la tabla `alumno_intervencionquirurgica`
--
ALTER TABLE `alumno_intervencionquirurgica`
  ADD CONSTRAINT `alumno_intervencionquirurgica_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_intervencionquirurgica_ibfk_2` FOREIGN KEY (`codigo_intervencionquirurgica`) REFERENCES `intervencionquirurgica` (`codigo_intervencionquirurgica`);

--
-- Filtros para la tabla `alumno_representante`
--
ALTER TABLE `alumno_representante`
  ADD CONSTRAINT `alumno_representante_ibfk_1` FOREIGN KEY (`indice_persona_alumno`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `alumno_representante_ibfk_2` FOREIGN KEY (`indice_persona_representante`) REFERENCES `representante` (`indice_persona`);

--
-- Filtros para la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`codigo_parroquia`) REFERENCES `municipio` (`codigo_municipio`),
  ADD CONSTRAINT `direccion_ibfk_2` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`),
  ADD CONSTRAINT `direccion_ibfk_3` FOREIGN KEY (`codigo_parroquia`) REFERENCES `parroquia` (`codigo_parroquia`),
  ADD CONSTRAINT `direccion_ibfk_4` FOREIGN KEY (`codigo_tipovivienda`) REFERENCES `tipovivienda` (`codigo_tipovivienda`);

--
-- Filtros para la tabla `evalua`
--
ALTER TABLE `evalua`
  ADD CONSTRAINT `evalua_ibfk_1` FOREIGN KEY (`codigo_seccion`) REFERENCES `seccion` (`codigo_seccion`),
  ADD CONSTRAINT `evalua_ibfk_2` FOREIGN KEY (`codigo_materia`) REFERENCES `materia` (`codigo_materia`),
  ADD CONSTRAINT `evalua_ibfk_3` FOREIGN KEY (`indice_persona_alumno`) REFERENCES `alumno` (`indice_persona`),
  ADD CONSTRAINT `evalua_ibfk_4` FOREIGN KEY (`indice_persona_profesor`) REFERENCES `profesor` (`indice_persona`),
  ADD CONSTRAINT `evalua_ibfk_5` FOREIGN KEY (`codigo_grado`) REFERENCES `grado` (`codigo_grado`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`codigo_periodo`) REFERENCES `periodo` (`codigo_periodo`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`codigo_estado`) REFERENCES `estado` (`codigo_estado`);

--
-- Filtros para la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD CONSTRAINT `parroquia_ibfk_1` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipio` (`codigo_municipio`),
  ADD CONSTRAINT `parroquia_ibfk_2` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipio` (`codigo_municipio`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`);

--
-- Filtros para la tabla `representante`
--
ALTER TABLE `representante`
  ADD CONSTRAINT `representante_ibfk_1` FOREIGN KEY (`codigo_gradoinstruccion`) REFERENCES `gradoinstruccion` (`codigo_gradoinstruccion`),
  ADD CONSTRAINT `representante_ibfk_2` FOREIGN KEY (`indice_persona`) REFERENCES `persona` (`indice_persona`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `seccion_ibfk_1` FOREIGN KEY (`codigo_grado`) REFERENCES `grado` (`codigo_grado`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
