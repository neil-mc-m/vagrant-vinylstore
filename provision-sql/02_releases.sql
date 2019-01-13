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

-- Dumping structure for table vinyl_store.releases
CREATE TABLE IF NOT EXISTS `releases` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `catno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `released_on` date NOT NULL,
  `date_added` date DEFAULT NULL,
  `media_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catno` (`catno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vinyl_store.releases: ~15 rows (approximately)
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
INSERT INTO `releases` (`id`, `catno`, `title`, `artist`, `format`, `label`, `released_on`, `date_added`, `media_condition`, `sleeve_condition`, `notes`, `genre`, `quantity`) VALUES
	(1, '12BRW340', 'christiansands', 'tricky', '12" Lp', '4th and broadway', '2001-04-03', '2017-01-03', 'vg+', 'vg+', 'great ep from tricky with a quality remix of christiansands. First single taken from Pre millenium tension album', 'electronic', 1),
	(2, 'CRE326T', 'swastika eyes', 'primal scream', '12" single', 'creation', '2000-03-11', '2017-01-03', 'vg+', 'vg+', 'great tune taken from exterminator.', 'electronic', 1),
	(3, 'WIGLP188', 'favourite worst nightmare', 'arctic monkeys', '12" Lp', 'domino', '2008-10-03', '2017-02-03', 'mint', 'mint', 'classic album', 'rock', 1),
	(6, 'MCF 3426', 'copperhead road', 'steve earle', '12" Lp', 'MCA', '1998-12-03', '2017-03-03', 'mint', 'mint', 'one of the all-time classics from steve earle', 'rock', 1),
	(7, 'DBRLP005', 'def beat remixes vol 5', 'U.N.K.L.E.', '12" Lp', 'Def Beat', '2007-02-03', '2017-03-03', 'mint', 'mint', 'some great remixes on here', 'electronic', 1),
	(8, 'SP781', 'fleet foxes', 'fleet foxes', '12" Lp', 'sub pop', '2013-08-03', '2017-03-03', 'mint', 'mint', 'debut album from FF', 'rock', 1),
	(9, 'Fac 183R', 'true faith remix', 'new order', '12" single', 'factory records', '1987-06-03', '2017-05-03', 'vg+', 'vg+', 'great remix with inner picture. One of the classic new order tracks.', 'rock', 1),
	(10, 'CNFR17', 'suprema', 'gaetano parisio', '12" single', 'conform', '2002-06-04', '2017-05-04', 'vg', 'vg', 'great tracks from g.p.', 'electronic', 1),
	(11, 'BBQCD237', 'bubblegum', 'mark lanegan band', '12" Lp', 'beggars banquet', '2004-02-04', '2017-08-04', 'vg+', 'vg+', 'great album from a great artist. one of the best rock and roll voices out there.', 'rock', 1),
	(12, '8719907', 'lullaby', 'the cure', '7" single', 'fiction records', '1988-09-03', '2018-11-04', 'vg+', 'vg', 'what a great song. slightly extended version on this.', 'rock', 1),
	(13, 'PFRLP18', 'the last resort', 'trentemoller', '12" Double Lp', 'poker flat recordings', '2006-07-05', '2017-07-05', 'mint', 'mint', 'absolutely brilliant album from trentemoller. every track quality here. vinyl in excellent condition.', 'electronic', 1),
	(14, '12IS826', 'eye for an eye', 'U.N.K.L.E.', '12" single', 'island records', '2003-01-05', '2017-07-05', 'vg+', 'vg+', 'great track which opens the classic never neverland album. quite a good b-side too.', 'electronic', 0),
	(15, 'rekids031', 'tantakatan(the drunken shed mix)', 'radioslave', '12" single', 'rekids', '2008-01-05', '2019-07-05', 'vg+', 'vg+', 'shed remix of the radioslave classic.', 'electronic', 1),
	(16, 'chemst12', 'it began in afrika', 'the chemical brothers', '12" single', 'virgin records', '2001-02-05', '2019-07-05', 'vg', 'vg', 'great tune from the chems. turn it up! Vinyl has some fairly obvious scratches/scuffs, plays through with a little noise though.', 'electronic', 1),
	(18, 'CSDLP1159', 'baby 81', 'black rebel motorcycle club', '12" Double Lp', 'abstract dragon', '2011-06-02', '2017-06-17', 'ex', 'ex', 'great album from BRMC, and definitely my pick out of all their albums. Not really a bad song on here, although, as noted on discogs, the sound is a little muddy. Could be the pressing or could be the way its meant to sound!', 'rock', 1);
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
