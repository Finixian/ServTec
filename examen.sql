-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2020 at 03:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examen`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `actualizaPresento`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaPresento` (IN `x` INT)  BEGIN
update aspirante set presento=1 where idAspirante=x;
END$$

DROP PROCEDURE IF EXISTS `registraResultado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `registraResultado` (IN `t` INT, IN `x1` INT, IN `x2` INT, IN `x3` INT, IN `x4` INT, IN `x5` INT, IN `x6` INT, IN `x7` INT, IN `x8` INT, IN `x9` INT, IN `x10` INT, IN `id` INT)  BEGIN
insert into resultado (fecha,totalRespuestas,resultadoA1,resultadoA2,resultadoA3,resultadoA4,resultadoA5,resultadoA6, resultadoA7 ,resultadoA8, resultadoA9, resultadoA10, idAspirante) 
values (NOW(), t, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, id);
END$$

--
-- Functions
--
DROP FUNCTION IF EXISTS `cuentaErrores`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `cuentaErrores` (`x` INT, `y` INT) RETURNS INT(11) BEGIN
  DECLARE r INT;
  SET r = y - x;
  RETURN r;
END$$

DROP FUNCTION IF EXISTS `porcentaje`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `porcentaje` (`a` INT, `b` INT) RETURNS INT(11) BEGIN
	DECLARE x INT;
	DECLARE y INT;
 	SET x = a * 100;
	SET y = x / b;
 	RETURN y;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `idArea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`idArea`, `nombre`) VALUES
(1, 'Ãrea 1'),
(2, 'Ãrea 2'),
(3, 'Ãrea 3'),
(4, 'Ãrea 4'),
(5, 'Ãrea 5'),
(6, 'Ãrea 6'),
(7, 'Ãrea 7'),
(8, 'Ãrea 8'),
(9, 'Ãrea 9'),
(10, 'Ãrea 10');

-- --------------------------------------------------------

--
-- Table structure for table `aspirante`
--

DROP TABLE IF EXISTS `aspirante`;
CREATE TABLE IF NOT EXISTS `aspirante` (
  `idAspirante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paterno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `materno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `folio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `presento` int(11) DEFAULT '0',
  `idInstitucion` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idAspirante`,`idInstitucion`),
  UNIQUE KEY `folio_UNIQUE` (`folio`),
  KEY `fk_Aspirante_Institucion1_idx` (`idInstitucion`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `aspirante`
--

INSERT INTO `aspirante` (`idAspirante`, `nombre`, `paterno`, `materno`, `fnacimiento`, `folio`, `password`, `correo`, `status`, `presento`, `idInstitucion`) VALUES
(1, 'Administrador', NULL, NULL, '1993-04-02', 'admin', 'fakepass', 'contacto@gmail.com', 0, 0, 1),
(21, 'ad', 'asd', 'asd', '2019-10-29', '12312312', 'pass', 'adelaid.acevedo15@tectijuana.edu.mx', 1, 1, 1),
(20, 'Adelaid', 'Acevedo', 'Cardona', '2019-11-12', '16211957', 'pass', 'adelaid.acevedo16@tectijuana.edu.mx', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `idExamen` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idExamen`,`idUsuario`),
  KEY `fk_Examen_Usuario1_idx` (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
CREATE TABLE IF NOT EXISTS `institucion` (
  `idInstitucion` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CCT` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idInstitucion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `institucion`
--

INSERT INTO `institucion` (`idInstitucion`, `nombre`, `direccion`, `CCT`, `telefono`) VALUES
(1, 'INSTITUTO TECNOLOGICO DE TIJUANA', 'Av Castillo de Chapultepec 562, Tomas Aquino, 22414 Tijuana, B.C.', '02DIT0021M', '(664) 607-8400');

-- --------------------------------------------------------

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE IF NOT EXISTS `pregunta` (
  `idPregunta` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuesta1` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor1` int(11) DEFAULT NULL,
  `respuesta2` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor2` int(11) DEFAULT NULL,
  `respuesta3` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor3` int(11) DEFAULT NULL,
  `respuesta4` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor4` int(11) DEFAULT NULL,
  `idExamen` int(11) NOT NULL DEFAULT '1',
  `idArea` int(11) NOT NULL,
  PRIMARY KEY (`idPregunta`,`idExamen`,`idArea`),
  KEY `fk_Pregunta_Examen1_idx` (`idExamen`),
  KEY `fk_Pregunta_Area1_idx` (`idArea`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `pregunta`
--

INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES
(87, 'Â¿CuÃ¡ntas horas de servicio social como mÃ­nimo se requieren hacer?', NULL, '300', 0, '480', 1, '450', 0, 'Ninguna de las anteriores.', 0, 1, 7),
(88, 'La carta de terminaciÃ³n de servicio social, Â¿Como se tiene que entregar?', NULL, 'Transcrita en el papel oficial del organismo.', 1, 'Con los datos remplazados, tal como estÃ¡ en el formato.', 0, 'El formato y transcrita.', 0, 'Ninguna de las anteriores.', 0, 1, 7),
(86, 'Del Formato del Plan de Actividades, Â¿De quiÃ©n la firma no se ocupa original?', NULL, 'Del responsable del programa.', 0, 'El prestador del Servicio Social.', 0, 'Ninguno.', 1, 'Ninguna de las anteriores.', 0, 1, 7),
(85, 'Si ya â€œestas haciendo el servicio socialâ€ pero no has completado los 5 crÃ©ditos complementarios, Â¿Sigue valiendo ese periodo?', NULL, 'Si, se guarda para cuando los consigas.', 0, 'No, solo hasta conseguir los crÃ©ditos complementarios puedes iniciarlo formalmente.', 1, 'Solo hasta conseguir los crÃ©ditos complementarios puedes iniciarlo formalmente, pero se deja a discreciÃ³n de los involucrados .', 0, 'Ninguna de las anteriores.', 0, 1, 7),
(83, 'En el reporte bimestral, Â¿Cuantas horas puedes â€œhacerâ€ mÃ¡ximo?', NULL, '150', 0, '120', 0, '160', 1, 'Ninguna de las anteriores.', 0, 1, 6),
(84, 'Â¿QuÃ© formato no se tiene que transcribir de alguna manera?', NULL, 'Solicitud de Servicio Social.', 1, 'Carta de TerminaciÃ³n del Servicio Social.', 0, 'Carta de AceptaciÃ³n del Servicio Social.', 0, 'Ninguno de los anteriores.', 0, 1, 6),
(82, 'Â¿CuÃ¡l es el objetivo del servicio social?', NULL, 'Apoyar en los problemas socioeconÃ³micos regionales o nacionales, hacia el desarrollo social.', 0, 'Complementar la formaciÃ³n profesional de los estudiantes o egresados.', 1, 'Ayudar a la comunidad como profesionista, cumpliendo con las normativas y estÃ¡ndares de la instituciÃ³n', 0, 'Todas las anteriores.', 0, 1, 6),
(80, 'Documento no necesario para iniciar un expediente de servicio social:', NULL, 'Formato de Solicitud de servicio social.', 0, 'Carta de presentaciÃ³n', 1, 'Solicitud de prestadores', 0, 'Ninguna de las anteriores.', 0, 1, 6),
(81, 'Â¿CuÃ¡l es el correo de servicio social?', NULL, 'ServicioSocial@tectijuana.mx', 0, 'ServicioSocial@tectijuana.edu.mx', 1, 'Servicio.Social@tectijuana.edu.mx', 0, 'Ninguna de las anteriores.', 0, 1, 6),
(79, 'Â¿QuÃ© dato no se te pide en la solicitud de prestadores?', NULL, 'Fax.', 1, 'No. Control.', 0, 'Nombre.', 0, 'Ninguna de las anteriores.', 0, 1, 5),
(77, 'Del Formato para EvaluaciÃ³n y Reporte Bimestral de Servicio Social, Â¿cuÃ¡l criterio de evaluaciÃ³n te pide tener una actitud proactiva?', NULL, 'Numero 2', 0, 'Numero 6', 0, 'Numero 7', 1, 'Ninguna de las anteriores.', 0, 1, 5),
(78, 'Del Formato para EvaluaciÃ³n y Reporte Bimestral de Servicio Social, del Formato de evaluaciÃ³n de las actividades por el prestador de servicio social, que punto te pide analizar la viabilidad futura del proyecto', NULL, 'Numero 3', 0, 'Numero 7', 1, 'Numero 1', 0, 'Ninguna de las anteriores.', 0, 1, 5),
(76, 'En el Formato Carta de AceptaciÃ³n del Servicio Social, Â¿que se tiene que hacer?', NULL, 'Imprimir y llenar', 0, 'Leer y llenar la oficial', 0, 'Imprimir, llenar y transcribir a la oficial', 1, 'Ninguna de las anteriores.', 0, 1, 5),
(75, 'Â¿QuÃ© formatos se tienen que llenar para realizar el servicio social?', NULL, 'Formato Plan de Actividades y Formato Carta de TerminaciÃ³n Servicio Social.', 0, 'Formato Carta de AceptaciÃ³n Servicio Social y Formato para Solicitud de Servicio Social.', 0, 'Todos los formatos disponibles.', 1, 'Ninguna de las anteriores.', 0, 1, 5),
(74, 'Â¿QuÃ© pasa si mi Servicio Social se ve interrumpido por causas externas?', NULL, 'El jefe de la oficina del servicio social deberÃ¡ justificar y generar un oficio, donde indique el nÃºmero de horas cumplidas al momento de la interrupciÃ³n.', 1, 'Lo comento a mi coordinador de carrera.', 0, 'Lo vuelvo a dar de alta cuando lo vuelva a llevar.', 0, 'Todas las anteriores.', 0, 1, 4),
(73, 'Â¿Por quÃ© necesito tener liberado el servicio social?', NULL, 'Es requisito obligatorio para los estudiantes, ademÃ¡s se les extiende una constancia de liberaciÃ³n la cual deberÃ¡n presentar para su proceso de titulaciÃ³n. ', 1, 'Porque puedo reprobar.', 0, 'Porque todos lo hacen y lo liberan.', 0, 'Todas las anteriores.', 0, 1, 4),
(72, 'Â¿A quiÃ©n se entrega la carta de liberaciÃ³n de servicio social?', NULL, 'Debe ser entregada a la coordinadora del departamento o a la secretaria que dirige la titulaciÃ³n de la carrera.', 1, 'Al encargado de la dependencia donde se realizÃ³ el servicio social.', 0, 'Es para archivo propio.', 0, 'Ninguna de las anteriores.', 0, 1, 4),
(71, 'Â¿QuÃ© documento confirma la conclusiÃ³n de servicio social? ', NULL, 'Carta de terminaciÃ³n.', 0, 'Carta de liberaciÃ³n de servicio social.', 1, 'Certificado.', 0, 'Todas las anteriores.', 0, 1, 4),
(69, 'Â¿CuÃ¡les son los documentos a entregar, una vez iniciado el servicio social?', NULL, 'Carta de AceptaciÃ³n y reportes bimestrales.', 1, 'Reporte de actividades.', 0, 'Reporte de control de asistencia a la dependencia.', 0, 'Todas las anteriores.', 0, 1, 3),
(70, 'Â¿CuÃ¡les son los documentos a entregar para concluir el servicio social?', NULL, 'Copia de credencial de elector y carta de terminaciÃ³n.', 0, 'Carta de terminaciÃ³n y Kardex.', 0, 'Carta de terminaciÃ³n de servicio social y Reporte Final.', 1, 'Todas las anteriores.', 0, 1, 4),
(68, 'Â¿CuÃ¡l es el siguiente paso, una vez que se abriÃ³ el expediente del servicio social?', NULL, 'Presentarse la dependencia.', 0, 'Esperar a que se expida la carta de presentaciÃ³n.', 1, 'Tramitar la carta de aceptaciÃ³n por parte de la dependencia.', 0, 'Todas las anteriores.', 0, 1, 3),
(67, 'Â¿DÃ³nde se pueden obtener los formatos para el servicio social?', NULL, 'En la oficina de CoordinaciÃ³n de la carrera correspondiente.', 0, 'En la pÃ¡gina http://tectijuana.edu.mx/servicio-social/', 1, 'En la oficina de Servicios Escolares.', 0, 'Todas las anteriores.', 0, 1, 3),
(66, 'Â¿CuÃ¡les son los formatos y documentos necesarios para abrir un expediente de servicio social?', NULL, 'Carta de presentaciÃ³n, Copia de credencial de elector, Kardex y Acta de Nacimiento.', 0, 'Copia de Credencial de elector, Acta de Nacimiento y solicitud de empleo.', 0, 'Folio de servicio social, Kardex, Solicitud de servicio social con fotografÃ­a, Carta compromiso, Plan de actividades y Formato de solicitud unidad receptora.', 1, 'Todas las anteriores', 0, 1, 3),
(64, 'Â¿CuÃ¡l es el tiempo estimado para la realizaciÃ³n del servicio social?', NULL, 'MÃ­nimo 6 meses y no mayor a dos aÃ±os.', 1, 'SegÃºn corresponda a la carrera.', 0, '1 aÃ±o.', 0, 'Todas las anteriores.', 0, 1, 2),
(65, 'Â¿CuÃ¡les son los requisitos a cumplir por parte de los prestadores que trabajen en dependencias pÃºblicas?', NULL, 'Solo reportar el programa al encargado de servicio social.', 0, 'AcreditaciÃ³n como trabajador, reporte de labores realizadas, Obligaciones del prestador de servicio social y el informe final.', 1, 'Ninguna de las anteriores.', 0, 'Todas las anteriores.', 0, 1, 3),
(63, 'Â¿CuÃ¡l es el valor del servicio social y su equivalente en horas?', NULL, '10 crÃ©ditos equivalente a 500 horas.', 1, '5 crÃ©ditos equivalente a 480 horas.', 0, 'SegÃºn corresponda a la carrera.', 0, 'Todas las anteriores. ', 0, 1, 2),
(62, 'Â¿CuÃ¡ndo se puede iniciar el servicio social?', NULL, 'Al ingresar al nivel Media Superior.', 0, 'Una vez aprobado el 70d de crÃ©ditos en avance reticular y 5 crÃ©ditos complementarios.', 1, 'Cuando estÃ© cursando 7mo. Semestre.', 0, 'Todas las anteriores.', 0, 1, 2),
(61, 'Â¿CuÃ¡les son los programas de Servicio Social profesionalizante?', NULL, 'De investigaciÃ³n, De InnovaciÃ³n tecnolÃ³gica y Emprendimiento.', 1, 'Actividades de responsabilidad social.', 0, 'Programas de capacitaciÃ³n.', 0, 'Todas las anteriores.', 0, 1, 2),
(60, 'Â¿CuÃ¡les son los programas de Servicio Social comunitario?', NULL, 'Limpieza de la escuela y calles de la ciudad.', 0, 'EducaciÃ³n para adultos, programas de contingencia, apoyo a la salud, etc.', 1, 'DonaciÃ³n de despensas, juguetes, artÃ­culos de aseo personal, etc.', 0, 'Todas las anteriores.', 0, 1, 2),
(59, 'Â¿DÃ³nde realizar el servicio social?', NULL, 'En dependencias pÃºblicas y organismos privados que cuenten con programas de asistencia social y desarrollo comunitario establecidos en el Plan Nacional de Desarrollo Vigente.', 1, 'Empresas privadas.', 0, 'Empresas de origen familiar.', 0, 'Todas las anteriores.', 0, 1, 1),
(58, 'Â¿CuÃ¡l es la finalidad de realizar el servicio social?', NULL, 'Para complementar la formaciÃ³n Profesional.', 0, 'Es fortalecer la formaciÃ³n integral del estudiante, desarrollando una conciencia de solidaridad y compromiso con la sociedad a la que pertenece', 1, 'Gestionar recursos personales.', 0, 'Todas las anteriores.', 0, 1, 1),
(57, 'Â¿QuÃ© es el servicio social?', NULL, 'Es el trabajo de carÃ¡cter temporal y obligatorio, que institucionalmente presten y ejecuten los estudiantes en beneficio de la sociedad.', 1, 'El desarrollo econÃ³mico personal.', 0, 'El desarrollo social y cultural de la entidad.', 0, 'Todas las anteriores.', 0, 1, 1),
(56, 'Â¿CuÃ¡l es el fundamento legal?', NULL, 'Reglamento escolar.', 0, 'Reglamento de titulaciÃ³n.', 0, 'Ley Reglamentaria del ArtÃ­culo 5Â° Constitucional, Ley General de EducaciÃ³n, Reglamento de la Ley Reglamentaria del ArtÃ­culo 5Â° Constitucional y Reglamento para la PrestaciÃ³n del Servicio Social.', 1, 'Todas las anteriores. ', 0, 1, 1),
(55, 'Â¿CuÃ¡l es el alcance del servicio social?', NULL, 'Aplica a todos los Institutos, Unidades y Centros adscritos al TecNM.', 1, 'Para todos los jÃ³venes de 18 a 20 aÃ±os.', 0, 'Los estudiantes de carreras Media Superior.', 0, 'Todas las anteriores. ', 0, 1, 1),
(89, 'Â¿QuÃ© documento no requiere de ningÃºn tipo de sellado?', NULL, 'Carta compromiso del servicio Social.', 1, 'Memoria final del servicio social.', 0, 'Plan de actividades', 0, 'Ninguna de las anteriores.', 0, 1, 7),
(90, 'Â¿QuÃ© diferencia hay entre la solicitud interna (Unidad Receptora) y la solicitud externa (Unidad Receptora)?', NULL, 'La forma en la que se llena.', 0, 'Los requerimientos que tiene.', 0, 'El nombre de interna y externa.', 1, 'Ninguna de las anteriores.', 0, 1, 8),
(91, 'Si no colocas correctamente tu informaciÃ³n (nombre y apellidos) entonces el certificadoâ€¦', NULL, 'Se tendrÃ¡ que corregir y te llamaran a hablar.', 0, 'SerÃ¡ vÃ¡lido, pero no te servirÃ¡ de nada.', 1, 'Ambas.', 0, 'Ninguna de las anteriores.', 0, 1, 8),
(92, 'Si por accidente llevas un documento mal, lo entregas asÃ­ y no te dicen nada, Â¿QuÃ© sucede?', NULL, 'Nada, al aceptarlos se toman como vÃ¡lidos igualmente.', 0, 'Cuando se revisen serÃ¡n rechazados y se te puede cancelar el expediente.', 1, 'Se te llama cordialmente a que los corrijas.', 0, 'Ninguna de las anteriores.', 0, 1, 8),
(93, 'Una vez acabado por completo el servicio social, Â¿que tienes que hacer cuando se vea reflejado en el sistema (Kardex)?', NULL, 'Nada, pues ya se encuentra en el sistema.', 0, 'Ir lo mÃ¡s pronto posible por la carta de liberaciÃ³n de servicio social.', 1, 'Cuando estÃ© en proceso de titulaciÃ³n, tienes que ir a sacar una constancia de finalizaciÃ³n del servicio social.', 0, 'Ninguna de las anteriores.', 0, 1, 8),
(94, 'Los cursos de inducciÃ³n que se realizan son para:', NULL, 'Las carreras de la unidad donde se realizan.', 1, 'Para cualquier carrera.', 0, 'Cada carrera tiene su propio curso.', 0, 'Ninguna de las anteriores.', 0, 1, 8),
(95, 'Â¿QuÃ© departamento se encarga del servicio social?', NULL, 'GestiÃ³n tecnolÃ³gica y vinculaciÃ³n.', 1, 'CoordinaciÃ³n de la carrera.', 0, 'Servicios escolares.', 0, 'Ninguna de las anteriores.', 0, 1, 9),
(96, 'Â¿QuÃ© pasa si no finalizas con Ã©xito el servicio social?', NULL, 'No se te da como finalizado y puedes volver a empezarlo.', 1, 'Ya no te puedes titular.', 0, 'No puedes fracasar en el servicio.', 0, 'Ninguna de las anteriores.', 0, 1, 9),
(97, 'Â¿Puedes realizarlo en una empresa privada?', NULL, 'Si.', 0, 'Solo si estÃ¡ afiliada al organismo al que pertenece el tecnolÃ³gico.', 0, 'No.', 1, 'Solo si el coordinador de tu carrera lo acepta.', 0, 1, 9),
(98, 'Si por error lo realizaste en algÃºn centro lucrativo o empresa multinacional, Â¿puedes entregarlo de todas formas?', NULL, 'Si.', 0, 'Si, pero en titulaciÃ³n te lo anularan.', 1, 'No.', 1, 'Si, pero en tu coordinaciÃ³n te lo anularan.', 0, 1, 9),
(99, 'Si realizas tu servicio en un centro de caridad (Ejemplo: TeletÃ³n), Â¿quÃ© trabajos no puedes realizar?', NULL, 'Trabajo pesado (Carga y descarga, mudanzas, etc.)', 0, 'Colectas o ventas (Botear, vender pulseras, etc.)', 1, 'Nada, Todo lo que puedas realizar tienes que hacerlo.', 0, 'Ninguna de las anteriores.', 0, 1, 9),
(100, 'Al escribir tu nombre, es muy importante queâ€¦', NULL, 'Lo escribas en MAYÃšSCULAS TODO.', 0, 'Coloques los acentos pertinentes', 1, 'Todas los anteriores.', 0, 'Ninguna de las anteriores.', 0, 1, 10),
(101, 'Si por alguna razÃ³n te falto algÃºn documento al generar tu expediente, puedesâ€¦', NULL, 'Dejarlo asÃ­, si ya estÃ¡ generado es porque estÃ¡ completo.', 0, 'Pedir que te anexen los documentos faltantes.', 0, 'Llevar los documentos faltantes y pedir que los anexen.', 1, 'Ninguna de las anteriores.', 0, 1, 10),
(102, 'Si adelantaste el servicio puedesâ€¦', NULL, 'Llenar los informes equivalentes al periodo mÃ­nimo y se tomaran en cuenta cuando se cumplan las fechas.', 1, 'Formalmente tienes que realizar tu servicio y por las horas correspondientes una vez abierto el expediente..', 0, 'Todas las anteriores.', 0, 'Ninguna de las anteriores.', 0, 1, 10),
(103, 'Â¿Puedes realizar el servicio social con mÃ¡s del 60d del avance, pero sin los crÃ©ditos complementarios?', NULL, 'Si.', 0, 'Si, pero solo dentro del tecnolÃ³gico.', 1, 'No.', 0, 'Si, pero solo fuera del tecnolÃ³gico. ', 0, 1, 10),
(104, 'Si acabas el servicio a final de semestre, Â¿cuÃ¡ndo se hace valido?', NULL, 'Ese mismo semestre.', 0, 'A finales del siguiente semestre.', 0, 'A inicios del siguiente semestre.', 1, 'Ninguna de las anteriores.', 0, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
CREATE TABLE IF NOT EXISTS `resultado` (
  `idResultado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `totalRespuestas` int(11) NOT NULL,
  `resultadoA1` int(11) NOT NULL,
  `resultadoA2` int(11) NOT NULL,
  `resultadoA3` int(11) NOT NULL,
  `resultadoA4` int(11) NOT NULL,
  `resultadoA5` int(11) NOT NULL,
  `resultadoA6` int(11) NOT NULL,
  `resultadoA7` int(11) NOT NULL,
  `resultadoA8` int(11) NOT NULL,
  `resultadoA9` int(11) NOT NULL,
  `resultadoA10` int(11) NOT NULL,
  `idAspirante` int(11) NOT NULL,
  `idExamen` int(11) NOT NULL,
  PRIMARY KEY (`idResultado`,`idAspirante`,`idExamen`),
  KEY `fk_Resultado_Aspirante1_idx` (`idAspirante`),
  KEY `fk_Resultado_Examen1_idx` (`idExamen`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `resultado`
--

INSERT INTO `resultado` (`idResultado`, `fecha`, `totalRespuestas`, `resultadoA1`, `resultadoA2`, `resultadoA3`, `resultadoA4`, `resultadoA5`, `resultadoA6`, `resultadoA7`, `resultadoA8`, `resultadoA9`, `resultadoA10`, `idAspirante`, `idExamen`) VALUES
(8, '2019-11-19', 15, 2, 2, 2, 2, 2, 1, 2, 0, 1, 1, 21, 0),
(10, '2020-03-13', 13, 1, 1, 0, 2, 1, 2, 1, 2, 1, 2, 20, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
