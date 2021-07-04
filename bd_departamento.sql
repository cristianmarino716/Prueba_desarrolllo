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

-- Volcando estructura de base de datos para departamento
CREATE DATABASE IF NOT EXISTS `departamento` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `departamento`;


-- Volcando estructura para tabla departamento.unic_department
CREATE TABLE IF NOT EXISTS `unic_department` (
  `id` int(10) NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `department_city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla departamento.unic_department: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_department` DISABLE KEYS */;
INSERT INTO `unic_department` (`id`, `department_name`, `department_city`) VALUES
	(0, 'archivo', 'popayan'),
	(1, 'Talento humano', 'popayan'),
	(2, 'Sistemas', 'popayan'),
	(3, 'bodega', 'popayan'),
	(4, 'soporte', 'popayan'),
	(6, 'hola', 'hello');
/*!40000 ALTER TABLE `unic_department` ENABLE KEYS */;


-- Volcando estructura para tabla departamento.unic_educationlevel
CREATE TABLE IF NOT EXISTS `unic_educationlevel` (
  `id` int(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla departamento.unic_educationlevel: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_educationlevel` DISABLE KEYS */;
INSERT INTO `unic_educationlevel` (`id`, `description`) VALUES
	(0, 'primaria'),
	(1, 'secundaria'),
	(2, 'tecnico'),
	(3, 'tecnologo');
/*!40000 ALTER TABLE `unic_educationlevel` ENABLE KEYS */;


-- Volcando estructura para tabla departamento.unic_employee
CREATE TABLE IF NOT EXISTS `unic_employee` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `educationlevel_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_unic_employee_unic_department` (`department_id`),
  KEY `FK_unic_employee_unic_educationlevel` (`educationlevel_id`),
  CONSTRAINT `FK_unic_employee_unic_department` FOREIGN KEY (`department_id`) REFERENCES `unic_department` (`id`),
  CONSTRAINT `FK_unic_employee_unic_educationlevel` FOREIGN KEY (`educationlevel_id`) REFERENCES `unic_educationlevel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla departamento.unic_employee: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_employee` DISABLE KEYS */;
INSERT INTO `unic_employee` (`id`, `firstname`, `lastname`, `department_id`, `salary`, `educationlevel_id`) VALUES
	(0, 'leo', 'leito', 1, 23, 1),
	(1, 'cristian', 'marino', 2, 1000, 3),
	(2, 'luis', 'vivas', 2, 1000, 0),
	(3, 'mateo', 'ordoñez', 2, 1000, 3),
	(4, 'pepe', 'perez', 3, 2000, 0),
	(5, 'simon', 'leo', 3, 2000, 0),
	(6, 'pana', 'panita', 0, 200, 1),
	(7, 'james', 'rodriguez', 4, 2334, 1),
	(8, 'leones', 'Nariño', 4, 232, 1);
/*!40000 ALTER TABLE `unic_employee` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
