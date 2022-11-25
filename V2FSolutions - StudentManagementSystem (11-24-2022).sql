-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- Pungak V2 hahahaha!
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for student_management_system_db
CREATE DATABASE IF NOT EXISTS `student_management_system_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `student_management_system_db`;

-- Dumping structure for table student_management_system_db.accountings
CREATE TABLE IF NOT EXISTS `accountings` (
  `accounting_id` int(11) NOT NULL AUTO_INCREMENT,
  `accounting_description` varchar(50) NOT NULL,
  `accounting_status` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`accounting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.accountings: ~0 rows (approximately)
/*!40000 ALTER TABLE `accountings` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountings` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.assessments
CREATE TABLE IF NOT EXISTS `assessments` (
  `assessment_id` int(11) NOT NULL AUTO_INCREMENT,
  `sy_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.assessments: ~0 rows (approximately)
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.classes
CREATE TABLE IF NOT EXISTS `classes` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `sy_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.classes: ~0 rows (approximately)
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.faculties
CREATE TABLE IF NOT EXISTS `faculties` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.faculties: ~0 rows (approximately)
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.faculties_viewings
CREATE TABLE IF NOT EXISTS `faculties_viewings` (
  `faculties_viewing_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `ob_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`faculties_viewing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.faculties_viewings: ~0 rows (approximately)
/*!40000 ALTER TABLE `faculties_viewings` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculties_viewings` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.grade_levels
CREATE TABLE IF NOT EXISTS `grade_levels` (
  `grade_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_level_description` varchar(50) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`grade_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.grade_levels: ~0 rows (approximately)
/*!40000 ALTER TABLE `grade_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_levels` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.outstanding_balances
CREATE TABLE IF NOT EXISTS `outstanding_balances` (
  `ob_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.outstanding_balances: ~0 rows (approximately)
/*!40000 ALTER TABLE `outstanding_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `outstanding_balances` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.parent_guardians_viewings
CREATE TABLE IF NOT EXISTS `parent_guardians_viewings` (
  `parent_guardians_viewing_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `ob_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parent_guardians_viewing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.parent_guardians_viewings: ~0 rows (approximately)
/*!40000 ALTER TABLE `parent_guardians_viewings` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_guardians_viewings` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.parent_guardian_infos
CREATE TABLE IF NOT EXISTS `parent_guardian_infos` (
  `guardian_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`guardian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.parent_guardian_infos: ~0 rows (approximately)
/*!40000 ALTER TABLE `parent_guardian_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_guardian_infos` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.schedules
CREATE TABLE IF NOT EXISTS `schedules` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.schedules: ~0 rows (approximately)
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.school_years
CREATE TABLE IF NOT EXISTS `school_years` (
  `sy_id` int(11) NOT NULL AUTO_INCREMENT,
  `sy_description` varchar(50) NOT NULL,
  `sy_status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.school_years: ~0 rows (approximately)
/*!40000 ALTER TABLE `school_years` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_years` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.sections
CREATE TABLE IF NOT EXISTS `sections` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_code` varchar(50) NOT NULL,
  `section_description` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.sections: ~0 rows (approximately)
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.students_viewings
CREATE TABLE IF NOT EXISTS `students_viewings` (
  `students_viewing_id` int(11) NOT NULL AUTO_INCREMENT,
  `ob_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`students_viewing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.students_viewings: ~0 rows (approximately)
/*!40000 ALTER TABLE `students_viewings` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_viewings` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.student_enrollment_stats
CREATE TABLE IF NOT EXISTS `student_enrollment_stats` (
  `stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.student_enrollment_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_enrollment_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_enrollment_stats` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.student_informations
CREATE TABLE IF NOT EXISTS `student_informations` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.student_informations: ~0 rows (approximately)
/*!40000 ALTER TABLE `student_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_informations` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.subjects
CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(50) NOT NULL,
  `subject_description` varchar(50) NOT NULL,
  `nunmber_of_units` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.subjects: ~0 rows (approximately)
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;

-- Dumping structure for table student_management_system_db.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table student_management_system_db.user_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
