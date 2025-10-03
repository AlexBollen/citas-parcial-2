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

-- Volcando datos para la tabla citas.appointments_control_appointment: ~58 rows (aproximadamente)
INSERT INTO `appointments_control_appointment` (`id`, `scheduled_at`, `duration_minutes`, `reason`, `notes`, `status`, `created_at`, `doctor_id`, `patient_id`) VALUES
	(1, '2025-10-05 11:41:01.000000', 30, 'Chequeo general', 'Primera visita', 'scheduled', '2025-10-03 11:41:01.000000', 1, 1),
	(2, '2025-10-06 11:41:01.000000', 45, 'Dolor de cabeza frecuente', 'Paciente refiere mareos', 'scheduled', '2025-10-03 11:41:01.000000', 3, 2),
	(3, '2025-09-28 11:41:01.000000', 30, 'Consulta pediátrica', 'Control de vacunas', 'completed', '2025-10-03 11:41:01.000000', 2, 3),
	(4, '2025-09-29 01:00:00.000000', 30, 'Consulta número 1', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(5, '2025-09-29 02:00:00.000000', 30, 'Consulta número 2', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(6, '2025-09-29 03:00:00.000000', 30, 'Consulta número 3', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(7, '2025-09-29 04:00:00.000000', 30, 'Consulta número 4', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(8, '2025-09-29 05:00:00.000000', 30, 'Consulta número 5', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(9, '2025-09-29 06:00:00.000000', 30, 'Consulta número 6', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(10, '2025-09-29 07:00:00.000000', 30, 'Consulta número 7', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(11, '2025-09-29 08:00:00.000000', 30, 'Consulta número 8', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(12, '2025-09-29 09:00:00.000000', 30, 'Consulta número 9', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(13, '2025-09-29 10:00:00.000000', 30, 'Consulta número 10', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(14, '2025-09-29 11:00:00.000000', 30, 'Consulta número 11', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(15, '2025-09-29 12:00:00.000000', 30, 'Consulta número 12', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(16, '2025-09-29 13:00:00.000000', 30, 'Consulta número 13', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(17, '2025-09-29 14:00:00.000000', 30, 'Consulta número 14', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(18, '2025-09-29 15:00:00.000000', 30, 'Consulta número 15', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(19, '2025-09-29 16:00:00.000000', 30, 'Consulta número 16', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(20, '2025-09-29 17:00:00.000000', 30, 'Consulta número 17', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(21, '2025-09-29 18:00:00.000000', 30, 'Consulta número 18', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(22, '2025-09-29 19:00:00.000000', 30, 'Consulta número 19', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(23, '2025-09-29 20:00:00.000000', 30, 'Consulta número 20', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(24, '2025-09-29 21:00:00.000000', 30, 'Consulta número 21', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(25, '2025-09-29 22:00:00.000000', 30, 'Consulta número 22', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(26, '2025-09-29 23:00:00.000000', 30, 'Consulta número 23', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(27, '2025-09-30 00:00:00.000000', 30, 'Consulta número 24', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(28, '2025-09-30 01:00:00.000000', 30, 'Consulta número 25', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(29, '2025-09-30 02:00:00.000000', 30, 'Consulta número 26', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(30, '2025-09-30 03:00:00.000000', 30, 'Consulta número 27', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(31, '2025-09-30 04:00:00.000000', 30, 'Consulta número 28', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(32, '2025-09-30 05:00:00.000000', 30, 'Consulta número 29', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(33, '2025-09-30 06:00:00.000000', 30, 'Consulta número 30', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(34, '2025-09-30 07:00:00.000000', 30, 'Consulta número 31', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(35, '2025-09-30 08:00:00.000000', 30, 'Consulta número 32', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(36, '2025-09-30 09:00:00.000000', 30, 'Consulta número 33', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(37, '2025-09-30 10:00:00.000000', 30, 'Consulta número 34', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(38, '2025-09-30 11:00:00.000000', 30, 'Consulta número 35', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(39, '2025-09-30 12:00:00.000000', 30, 'Consulta número 36', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(40, '2025-09-30 13:00:00.000000', 30, 'Consulta número 37', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(41, '2025-09-30 14:00:00.000000', 30, 'Consulta número 38', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(42, '2025-09-30 15:00:00.000000', 30, 'Consulta número 39', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(43, '2025-09-30 16:00:00.000000', 30, 'Consulta número 40', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(44, '2025-09-30 17:00:00.000000', 30, 'Consulta número 41', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(45, '2025-09-30 18:00:00.000000', 30, 'Consulta número 42', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(46, '2025-09-30 19:00:00.000000', 30, 'Consulta número 43', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(47, '2025-09-30 20:00:00.000000', 30, 'Consulta número 44', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(48, '2025-09-30 21:00:00.000000', 30, 'Consulta número 45', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(49, '2025-09-30 22:00:00.000000', 30, 'Consulta número 46', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(50, '2025-09-30 23:00:00.000000', 30, 'Consulta número 47', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(51, '2025-10-01 00:00:00.000000', 30, 'Consulta número 48', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(52, '2025-10-01 01:00:00.000000', 30, 'Consulta número 49', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(53, '2025-10-01 02:00:00.000000', 30, 'Consulta número 50', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(54, '2025-10-01 03:00:00.000000', 30, 'Consulta número 51', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(55, '2025-10-01 04:00:00.000000', 30, 'Consulta número 52', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(56, '2025-10-01 05:00:00.000000', 30, 'Consulta número 53', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(57, '2025-10-01 06:00:00.000000', 30, 'Consulta número 54', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1),
	(58, '2025-10-01 07:00:00.000000', 30, 'Consulta número 55', 'Generada para prueba de bono', 'completed', '2025-10-03 11:41:58.000000', 1, 1);

-- Volcando datos para la tabla citas.appointments_control_bonus: ~2 rows (aproximadamente)
INSERT INTO `appointments_control_bonus` (`id`, `amount`, `awarded_at`, `reason`, `doctor_id`) VALUES
	(1, 500.00, '2025-10-03 11:41:01.000000', 'Excelente atención al paciente', 1),
	(2, 300.00, '2025-10-03 11:41:01.000000', 'Trabajo destacado en pediatría', 2);

-- Volcando datos para la tabla citas.appointments_control_doctor: ~3 rows (aproximadamente)
INSERT INTO `appointments_control_doctor` (`id`, `first_name`, `last_name`, `specialty`, `email`, `phone`, `created_at`, `total_bonus`) VALUES
	(1, 'Juan', 'Pérez', 'Cardiología', 'jperez@hospital.com', '555-111-222', '2025-10-03 11:41:01.000000', 0.00),
	(2, 'María', 'Gómez', 'Pediatría', 'mgomez@hospital.com', '555-333-444', '2025-10-03 11:41:01.000000', 0.00),
	(3, 'Luis', 'Martínez', 'Neurología', 'lmartinez@hospital.com', '555-555-666', '2025-10-03 11:41:01.000000', 0.00);

-- Volcando datos para la tabla citas.appointments_control_followup: ~2 rows (aproximadamente)
INSERT INTO `appointments_control_followup` (`id`, `scheduled_at`, `notes`, `created_at`, `doctor_id`, `original_appointment_id`, `patient_id`) VALUES
	(1, '2025-10-13 11:41:01.000000', 'Control posterior de hipertensión', '2025-10-03 11:41:01.000000', 1, 1, 1),
	(2, '2025-10-18 11:41:01.000000', 'Revisión por dolores recurrentes', '2025-10-03 11:41:01.000000', 3, 2, 2);

-- Volcando datos para la tabla citas.appointments_control_patient: ~3 rows (aproximadamente)
INSERT INTO `appointments_control_patient` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `date_of_birth`, `gender`, `insurance`, `emergency_contact`, `medical_history`, `allergies`, `current_medications`, `notes`, `created_at`) VALUES
	(1, 'Carlos', 'Ramírez', 'cramirez@gmail.com', '555-777-888', 'Av. Central 123', '1990-05-10', 'Masculino', 'Seguro VidaPlus', 'Ana Ramírez - 555-000-111', 'Hipertensión', 'Penicilina', 'Enalapril', 'Paciente estable', '2025-10-03 11:41:01.000000'),
	(2, 'Ana', 'López', 'alopez@gmail.com', '555-999-000', 'Calle Real 456', '1985-11-22', 'Femenino', 'Seguro MedicoTotal', 'Carlos López - 555-222-333', 'Asma', 'Polvo', 'Salbutamol', 'Requiere seguimiento frecuente', '2025-10-03 11:41:01.000000'),
	(3, 'Pedro', 'Méndez', 'pmendez@gmail.com', '555-123-456', 'Zona 5, Ciudad', '2000-03-15', 'Masculino', 'Seguro SaludMax', 'Marta Méndez - 555-444-555', 'Diabetes', 'Ninguna', 'Insulina', 'Paciente joven con buen control', '2025-10-03 11:41:01.000000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
