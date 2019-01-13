-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.54-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table vinyl_store.snipcart_data
CREATE TABLE IF NOT EXISTS `snipcart_data` (
  `release_id` int(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`release_id`),
  CONSTRAINT `FK_snipcart_data_releases` FOREIGN KEY (`release_id`) REFERENCES `releases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vinyl_store.snipcart_data: ~15 rows (approximately)
/*!40000 ALTER TABLE `snipcart_data` DISABLE KEYS */;
INSERT INTO `snipcart_data` (`release_id`, `price`, `description`) VALUES
	(1, 12.00, 'dark beats from tricky'),
	(2, 8.00, 'classic single from the exterminator album'),
	(3, 20.00, 'great arctic monkeys album'),
	(6, 20.00, 'absolute classic from steve earle'),
	(7, 15.00, 'smashing remix album from the men from unkle'),
	(8, 25.00, 'Debut fleet foxes album. Mint.'),
	(9, 10.00, 'great new order remix of a classic tune'),
	(10, 8.00, 'great tracks from g.p.'),
	(11, 15.00, 'class album from mark'),
	(12, 6.00, 'absolutely great single from the cure'),
	(13, 20.00, 'great album from trentemoller'),
	(14, 8.00, 'opening track from never neverland'),
	(15, 4.00, 'great remix from shed of a classic'),
	(16, 2.00, 'great chemical bros. tunes taken from come with us.'),
	(18, 20.00, 'BRMC double album full of great tunes');
/*!40000 ALTER TABLE `snipcart_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
