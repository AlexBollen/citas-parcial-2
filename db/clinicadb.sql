-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para clinicadb
CREATE DATABASE IF NOT EXISTS `clinicadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinicadb`;

-- Volcando estructura para tabla clinicadb.bonomedico
CREATE TABLE IF NOT EXISTS `bonomedico` (
  `id_bono` int NOT NULL AUTO_INCREMENT,
  `id_medico` int NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `fecha_asignacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_bono`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `bonomedico_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla clinicadb.bonomedico: ~1 rows (aproximadamente)
INSERT INTO `bonomedico` (`id_bono`, `id_medico`, `cantidad`, `fecha_asignacion`) VALUES
	(1, 1, 500.00, '2025-10-03 17:07:27');

-- Volcando estructura para tabla clinicadb.cita
CREATE TABLE IF NOT EXISTS `cita` (
  `id_cita` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int NOT NULL,
  `id_medico` int NOT NULL,
  `fecha_cita` datetime NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `estado` enum('Pendiente','Completada','Cancelada') DEFAULT 'Pendiente',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cita`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla clinicadb.cita: ~5 rows (aproximadamente)
INSERT INTO `cita` (`id_cita`, `id_paciente`, `id_medico`, `fecha_cita`, `motivo`, `estado`, `fecha_registro`) VALUES
	(1, 1, 1, '2025-10-05 09:00:00', 'Chequeo general', 'Pendiente', '2025-10-03 17:07:27'),
	(2, 2, 2, '2025-10-05 10:30:00', 'Dolor en el pecho', 'Pendiente', '2025-10-03 17:07:27'),
	(3, 3, 3, '2025-10-06 11:00:00', 'Dolor de cabeza', 'Pendiente', '2025-10-03 17:07:27'),
	(4, 4, 1, '2025-10-06 14:00:00', 'Consulta de pediatría', 'Pendiente', '2025-10-03 17:07:27'),
	(5, 1, 3, '2025-10-07 08:00:00', 'Revisión general', 'Pendiente', '2025-10-03 17:07:27'),
	(6, 5, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(7, 6, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(8, 7, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(9, 8, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(10, 9, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(11, 10, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(12, 11, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(13, 12, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(14, 13, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(15, 14, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(16, 15, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(17, 16, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(18, 17, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(19, 18, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(20, 19, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(21, 20, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(22, 21, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(23, 22, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(24, 23, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(25, 24, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(26, 25, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(27, 26, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(28, 27, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(29, 28, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(30, 29, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(31, 30, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(32, 31, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(33, 32, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(34, 33, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(35, 34, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(36, 35, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(37, 36, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(38, 37, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(39, 38, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(40, 39, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(41, 40, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(42, 41, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(43, 42, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(44, 43, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(45, 44, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(46, 45, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(47, 46, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(48, 47, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(49, 48, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(50, 49, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(51, 50, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(52, 51, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(53, 52, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(54, 53, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(55, 54, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25'),
	(56, 55, 1, '2025-09-29 08:00:00', 'Chequeo general', 'Completada', '2025-10-03 17:10:25');

-- Volcando estructura para tabla clinicadb.medico
CREATE TABLE IF NOT EXISTS `medico` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla clinicadb.medico: ~3 rows (aproximadamente)
INSERT INTO `medico` (`id_medico`, `nombre`, `apellido`, `especialidad`, `telefono`, `correo`, `estado`, `fecha_registro`) VALUES
	(1, 'Luis', 'Martínez', 'Pediatría', '40010010', 'luis.martinez@hospital.com', 'Activo', '2025-10-03 17:07:27'),
	(2, 'Sofía', 'Hernández', 'Cardiología', '40020020', 'sofia.hernandez@hospital.com', 'Activo', '2025-10-03 17:07:27'),
	(3, 'Pedro', 'Castillo', 'Medicina General', '40030030', 'pedro.castillo@hospital.com', 'Activo', '2025-10-03 17:07:27');

-- Volcando estructura para tabla clinicadb.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `genero` enum('M','F','Otro') DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla clinicadb.paciente: ~55 rows (aproximadamente)
INSERT INTO `paciente` (`id_paciente`, `nombre`, `apellido`, `fecha_nacimiento`, `telefono`, `correo`, `direccion`, `genero`, `estado`, `fecha_registro`) VALUES
	(1, 'Juan', 'Pérez', '1990-05-14', '5551234', 'juan.perez@example.com', 'Zona 1, Ciudad', 'M', 'Activo', '2025-10-03 17:07:27'),
	(2, 'María', 'López', '1985-10-20', '5555678', 'maria.lopez@example.com', 'Zona 10, Ciudad', 'F', 'Activo', '2025-10-03 17:07:27'),
	(3, 'Carlos', 'González', '2000-01-01', '5559876', 'carlos.g@example.com', 'Mixco, Guatemala', 'M', 'Activo', '2025-10-03 17:07:27'),
	(4, 'Ana', 'Ramírez', '1995-03-30', '5554321', 'ana.r@example.com', 'Villa Nueva, Guatemala', 'F', 'Activo', '2025-10-03 17:07:27'),
	(5, 'Paciente5', 'Prueba', '1990-01-01', '5550000', 'paciente5@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(6, 'Paciente6', 'Prueba', '1990-01-01', '5550000', 'paciente6@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(7, 'Paciente7', 'Prueba', '1990-01-01', '5550000', 'paciente7@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(8, 'Paciente8', 'Prueba', '1990-01-01', '5550000', 'paciente8@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(9, 'Paciente9', 'Prueba', '1990-01-01', '5550000', 'paciente9@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(10, 'Paciente10', 'Prueba', '1990-01-01', '5550000', 'paciente10@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(11, 'Paciente11', 'Prueba', '1990-01-01', '5550000', 'paciente11@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(12, 'Paciente12', 'Prueba', '1990-01-01', '5550000', 'paciente12@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(13, 'Paciente13', 'Prueba', '1990-01-01', '5550000', 'paciente13@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(14, 'Paciente14', 'Prueba', '1990-01-01', '5550000', 'paciente14@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(15, 'Paciente15', 'Prueba', '1990-01-01', '5550000', 'paciente15@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(16, 'Paciente16', 'Prueba', '1990-01-01', '5550000', 'paciente16@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(17, 'Paciente17', 'Prueba', '1990-01-01', '5550000', 'paciente17@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(18, 'Paciente18', 'Prueba', '1990-01-01', '5550000', 'paciente18@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(19, 'Paciente19', 'Prueba', '1990-01-01', '5550000', 'paciente19@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(20, 'Paciente20', 'Prueba', '1990-01-01', '5550000', 'paciente20@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(21, 'Paciente21', 'Prueba', '1990-01-01', '5550000', 'paciente21@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(22, 'Paciente22', 'Prueba', '1990-01-01', '5550000', 'paciente22@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(23, 'Paciente23', 'Prueba', '1990-01-01', '5550000', 'paciente23@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(24, 'Paciente24', 'Prueba', '1990-01-01', '5550000', 'paciente24@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(25, 'Paciente25', 'Prueba', '1990-01-01', '5550000', 'paciente25@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(26, 'Paciente26', 'Prueba', '1990-01-01', '5550000', 'paciente26@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(27, 'Paciente27', 'Prueba', '1990-01-01', '5550000', 'paciente27@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(28, 'Paciente28', 'Prueba', '1990-01-01', '5550000', 'paciente28@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(29, 'Paciente29', 'Prueba', '1990-01-01', '5550000', 'paciente29@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(30, 'Paciente30', 'Prueba', '1990-01-01', '5550000', 'paciente30@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(31, 'Paciente31', 'Prueba', '1990-01-01', '5550000', 'paciente31@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(32, 'Paciente32', 'Prueba', '1990-01-01', '5550000', 'paciente32@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(33, 'Paciente33', 'Prueba', '1990-01-01', '5550000', 'paciente33@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(34, 'Paciente34', 'Prueba', '1990-01-01', '5550000', 'paciente34@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(35, 'Paciente35', 'Prueba', '1990-01-01', '5550000', 'paciente35@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(36, 'Paciente36', 'Prueba', '1990-01-01', '5550000', 'paciente36@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(37, 'Paciente37', 'Prueba', '1990-01-01', '5550000', 'paciente37@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(38, 'Paciente38', 'Prueba', '1990-01-01', '5550000', 'paciente38@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(39, 'Paciente39', 'Prueba', '1990-01-01', '5550000', 'paciente39@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(40, 'Paciente40', 'Prueba', '1990-01-01', '5550000', 'paciente40@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(41, 'Paciente41', 'Prueba', '1990-01-01', '5550000', 'paciente41@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(42, 'Paciente42', 'Prueba', '1990-01-01', '5550000', 'paciente42@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(43, 'Paciente43', 'Prueba', '1990-01-01', '5550000', 'paciente43@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(44, 'Paciente44', 'Prueba', '1990-01-01', '5550000', 'paciente44@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(45, 'Paciente45', 'Prueba', '1990-01-01', '5550000', 'paciente45@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(46, 'Paciente46', 'Prueba', '1990-01-01', '5550000', 'paciente46@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(47, 'Paciente47', 'Prueba', '1990-01-01', '5550000', 'paciente47@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(48, 'Paciente48', 'Prueba', '1990-01-01', '5550000', 'paciente48@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(49, 'Paciente49', 'Prueba', '1990-01-01', '5550000', 'paciente49@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(50, 'Paciente50', 'Prueba', '1990-01-01', '5550000', 'paciente50@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(51, 'Paciente51', 'Prueba', '1990-01-01', '5550000', 'paciente51@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(52, 'Paciente52', 'Prueba', '1990-01-01', '5550000', 'paciente52@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(53, 'Paciente53', 'Prueba', '1990-01-01', '5550000', 'paciente53@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(54, 'Paciente54', 'Prueba', '1990-01-01', '5550000', 'paciente54@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25'),
	(55, 'Paciente55', 'Prueba', '1990-01-01', '5550000', 'paciente55@mail.com', 'Ciudad', 'M', 'Activo', '2025-10-03 17:10:25');

-- Volcando estructura para tabla clinicadb.reconsulta
CREATE TABLE IF NOT EXISTS `reconsulta` (
  `id_reconsulta` int NOT NULL AUTO_INCREMENT,
  `id_cita_original` int NOT NULL,
  `id_cita_reconsulta` int NOT NULL,
  `fecha_asignacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_reconsulta`),
  KEY `id_cita_original` (`id_cita_original`),
  KEY `id_cita_reconsulta` (`id_cita_reconsulta`),
  CONSTRAINT `reconsulta_ibfk_1` FOREIGN KEY (`id_cita_original`) REFERENCES `cita` (`id_cita`),
  CONSTRAINT `reconsulta_ibfk_2` FOREIGN KEY (`id_cita_reconsulta`) REFERENCES `cita` (`id_cita`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla clinicadb.reconsulta: ~1 rows (aproximadamente)
INSERT INTO `reconsulta` (`id_reconsulta`, `id_cita_original`, `id_cita_reconsulta`, `fecha_asignacion`) VALUES
	(1, 1, 5, '2025-10-03 17:07:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
