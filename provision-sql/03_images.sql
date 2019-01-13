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

-- Dumping structure for table vinyl_store.images
CREATE TABLE IF NOT EXISTS `images` (
  `image_id` int(50) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_id` int(50) NOT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `release_id` (`release_id`),
  KEY `FK_release_id` (`release_id`),
  CONSTRAINT `FK_images_releases` FOREIGN KEY (`release_id`) REFERENCES `releases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vinyl_store.images: ~15 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`image_id`, `image`, `release_id`) VALUES
	(4, '8c3b2d3ea1b58682c5893608727e2c61.jpeg', 6),
	(6, '72cde3ac79a49611e1380b9cbf6f8cd7.jpeg', 3),
	(7, '236ddb0a1f00fdb775feccc68fdbe0fb.jpeg', 1),
	(8, 'cb23e0e4e4e2629378f1a430a2d75723.jpeg', 2),
	(9, '462efb16c1cbcc3a5e9db7b545105d9a.jpeg', 8),
	(10, 'ffe6a6c9c29621415ff25052f056836c.jpeg', 9),
	(11, '3517b2ccd39b56d7f76a09cdab8bacdf.jpeg', 7),
	(12, 'eaf56cb8759226bfb008b607eed01ee2.jpeg', 10),
	(15, 'bc680a7df31c90772b99dd5debf7681a.jpeg', 11),
	(17, 'd5c40c882a90eabde82fff49e482a098.jpeg', 12),
	(19, '6a68031dbb8fffa36b1c0fba56b29329.jpeg', 14),
	(20, '7c9ced597abea2ae8f370def8dd7da28.jpeg', 13),
	(21, '6fd095064ddf2dd82c2ac225c8c4ed23.jpeg', 15),
	(23, '73fa76295c515eee056f1594fa792a2c.jpeg', 16),
	(31, '31f9f2ba70ed09b54398d22b564eb818.jpeg', 18);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
