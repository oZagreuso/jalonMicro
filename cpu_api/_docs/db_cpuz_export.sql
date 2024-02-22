-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table db_cpuz.doctrine_migration_versions : ~1 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240219085411', '2024-02-19 08:54:28', 27);

-- Listage des données de la table db_cpuz.microprocesseur : ~9 rows (environ)
INSERT INTO `microprocesseur` (`id`, `marque`, `nom_famille`, `nom_modele`, `frequence_ghz`, `prix`) VALUES
	(101, 'AMD', 'Ryzen 3', '3200G', 3.6, 99),
	(102, 'AMD', 'Ryzen 5', '3600', 3.6, 129),
	(103, 'AMD', 'Ryzen 5', '5600G', 3.9, 149),
	(104, 'AMD', 'Ryzen 7', '5800X', 3.8, 249),
	(105, 'AMD', 'Ryzen 7', '7800X3D', 4.2, 499),
	(201, 'INTEL', 'Core i5', '13500', 2.5, 139),
	(202, 'INTEL', 'Core i5', '13600K', 3.5, 159),
	(203, 'INTEL', 'Core i7', '13700K', 3.4, 169),
	(204, 'INTEL', 'Core i7', '4790', 3.6, 79);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
