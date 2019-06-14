-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.5-10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for langata_cemetary
CREATE DATABASE IF NOT EXISTS `langata_cemetary` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `langata_cemetary`;


-- Dumping structure for table langata_cemetary.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `email`, `password`, `create_stamp`, `update_stamp`) VALUES
	(1, 'admin@langata.com', '$2y$10$yUzrSbroymTH3b/tVz8mNu4/WQ3q8ja5XRKdm84lWOUpQ19Tzh4Vy', '2019-05-26 01:32:17', '2019-05-26 01:32:17');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table langata_cemetary.burial_spots
CREATE TABLE IF NOT EXISTS `burial_spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=free,1=occupied',
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.burial_spots: ~7 rows (approximately)
/*!40000 ALTER TABLE `burial_spots` DISABLE KEYS */;
INSERT INTO `burial_spots` (`id`, `name`, `description`, `status`, `create_stamp`, `update_stamp`) VALUES
	(1, '1A', 'GS', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, '1B', 'Grassy &amp; wet', 1, '2019-05-26 03:51:10', '2019-05-26 03:51:10'),
	(5, '1C', 'South East', 0, '2019-05-26 06:09:09', '2019-05-26 06:09:09'),
	(6, 'ID', 'South West', 1, '2019-05-26 06:09:30', '2019-05-26 06:09:30'),
	(7, '2k', 'allocated', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, '7a', 'lower', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, '90', 'loaded', 0, '2019-06-02 14:26:00', '2019-06-02 14:26:00');
/*!40000 ALTER TABLE `burial_spots` ENABLE KEYS */;


-- Dumping structure for table langata_cemetary.deceased
CREATE TABLE IF NOT EXISTS `deceased` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `burial_spot_id` int(11) NOT NULL DEFAULT '-1',
  `names` varchar(255) NOT NULL DEFAULT '0',
  `age` varchar(255) NOT NULL DEFAULT '0',
  `photo` varchar(255) DEFAULT 'no.png',
  `d_o_birth` varchar(255) NOT NULL DEFAULT '0',
  `d_o_burial` varchar(255) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `owner` varchar(255) NOT NULL DEFAULT '0',
  `owner_info` tinytext NOT NULL,
  `burial_spot` varchar(255) NOT NULL DEFAULT ' ',
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.deceased: ~3 rows (approximately)
/*!40000 ALTER TABLE `deceased` DISABLE KEYS */;
INSERT INTO `deceased` (`id`, `burial_spot_id`, `names`, `age`, `photo`, `d_o_birth`, `d_o_burial`, `description`, `owner`, `owner_info`, `burial_spot`, `create_stamp`, `update_stamp`) VALUES
	(2, 1, 'Nolan Ross', '33', 'deceased-5ceaf2377a2bb.png', '01/04/1980', '26/05/2018', 'Tall Dark Male', 'Emily Thorne', '+023 900 456 6 , 123 South Hampton , New York', '1A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 8, 'penson', '23', 'no.png', '01/04/1980', '26/05/2018', 'tall', 'sharon', '07900000000', '7a', '2019-05-26 08:58:48', '2019-05-26 08:58:48'),
	(7, 4, 'too', '56', 'no.png', '12/6/1980', '26/05/2018', 'big', 'Emily', '866666666', '1B', '2019-05-26 09:01:58', '2019-05-26 09:01:58'),
	(8, 6, 'Declan Porter', '19', 'deceased-5ceaed2c58442.png', '06/04/1990', '26/05/2018', 'Small young boy', 'Jack Poter', '123 South Hamptons', 'ID', '2019-05-26 22:46:52', '2019-05-26 22:46:52');
/*!40000 ALTER TABLE `deceased` ENABLE KEYS */;


-- Dumping structure for table langata_cemetary.info
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.info: ~3 rows (approximately)
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` (`id`, `title`, `info`, `create_stamp`, `update_stamp`) VALUES
	(4, 'Size', '600ha', '2019-05-26 02:22:31', '2019-05-26 02:22:31'),
	(7, 'Length', '1km', '2019-05-26 06:56:32', '2019-05-26 06:56:32'),
	(8, 'langata upper', '500 ha', '2019-05-26 09:09:56', '2019-05-26 09:09:56');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;


-- Dumping structure for table langata_cemetary.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(250) NOT NULL DEFAULT '0',
  `national_id` varchar(250) NOT NULL DEFAULT '0',
  `phone` varchar(250) NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL DEFAULT '0',
  `address` varchar(250) NOT NULL DEFAULT '0',
  `designation` varchar(250) NOT NULL DEFAULT '0',
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `national_id` (`national_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `address` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.staff: ~1 rows (approximately)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`, `names`, `national_id`, `phone`, `description`, `address`, `designation`, `create_stamp`, `update_stamp`) VALUES
	(1, 'ben', '33938980', '0703107934', 'Tall Dark Male', '10 Lanet ,Nakuru', 'Maintenance', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;


-- Dumping structure for table langata_cemetary.visitor_requests
CREATE TABLE IF NOT EXISTS `visitor_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table langata_cemetary.visitor_requests: ~0 rows (approximately)
/*!40000 ALTER TABLE `visitor_requests` DISABLE KEYS */;
INSERT INTO `visitor_requests` (`id`, `names`, `request`, `phone`, `email`, `create_stamp`, `update_stamp`) VALUES
	(2, 'sigei', 'requesting  for burial allocation', '0703107934', 'admin@mksu.com', '2019-05-26 23:01:21', '2019-05-26 23:01:21');
/*!40000 ALTER TABLE `visitor_requests` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
