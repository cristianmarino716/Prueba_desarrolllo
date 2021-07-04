-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.38-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para horario
CREATE DATABASE IF NOT EXISTS `horario` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `horario`;


-- Volcando estructura para tabla horario.horario
CREATE TABLE IF NOT EXISTS `horario` (
  `id_materia` int(11) DEFAULT NULL,
  `horario_dia` varchar(50) NOT NULL,
  `horario_hora` varchar(50) NOT NULL,
  KEY `FK_horario_materia` (`id_materia`),
  CONSTRAINT `FK_horario_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla horario.horario: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` (`id_materia`, `horario_dia`, `horario_hora`) VALUES
	(10, 'lunes', '7pm-10pm'),
	(8, 'miercoles', '7pm-10pm'),
	(5, 'viernes', '7pm-10pm'),
	(5, 'lunes', '7pm-10pm'),
	(11, 'martes', '8am-12am'),
	(11, 'jueves', '8am_12am'),
	(1, 'lunes', '8am-12am'),
	(1, 'viernes', '8am-12am'),
	(2, 'miercoles', '8am-12am'),
	(2, 'martes', '8am_12am'),
	(3, 'lunes', '2pm-6pm'),
	(3, 'martes', '2pm-6pm'),
	(4, 'miercoles', '8am-12am'),
	(6, 'lunes', '8am--12am'),
	(6, 'martes', '2pm-6pm'),
	(7, 'miercoles', '2pm-6pm'),
	(9, 'jueves', '2pm-6pm'),
	(9, 'jueves', '7pm-10pm');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;


-- Volcando estructura para tabla horario.materia
CREATE TABLE IF NOT EXISTS `materia` (
  `id` int(11) NOT NULL,
  `Profesor` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `numero_creditos` int(11) DEFAULT NULL,
  `salon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla horario.materia: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` (`id`, `Profesor`, `nombre`, `numero_creditos`, `salon`) VALUES
	(1, 'profe 1', 'calculo integral', 4, 'd2'),
	(2, 'profe 2', 'calculo vectorial', 5, 'd3'),
	(3, 'profe 3', 'matematicas especiales', 4, 'd43'),
	(4, 'profe 4', 'matematicas discretas', 5, 'b23'),
	(5, 'profe 5', 'algebra lineal', 4, 'd34'),
	(6, 'profe 6', 'informatica', 3, 'b2'),
	(7, 'profe 7', 'algebra', 3, 'b3'),
	(8, 'profe 8', 'bodega', 3, 'd32'),
	(9, 'profe 9', 'introduccion', 4, 'd12'),
	(10, 'profe 10', 'comida', 4, 'b21'),
	(11, 'pro', 'calculo diferencial', 5, 'd3');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
