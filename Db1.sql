-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
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


-- Dumping database structure for sellfish
CREATE DATABASE IF NOT EXISTS `sellfish` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sellfish`;

-- Dumping structure for table sellfish.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) DEFAULT NULL,
  `fish_code` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `purchase_code` varchar(500) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sellfish.cart: ~8 rows (approximately)
INSERT INTO `cart` (`cart_id`, `user_id`, `fish_code`, `price`, `quantity`, `total`, `purchase_code`, `stat`, `purchase_date`) VALUES
	(112, '5', 'CD2024Mar05010334ANCRI7G48UL', 500, 1, 500, 'L56TIC2024Mar05120312R7', 0, '2024-03-05 12:12:22'),
	(113, '5', 'CD2024Mar05010334ANCRI7G48UL', 500, 1, 500, '0ADFY52024Mar051203131L', 0, '2024-03-05 12:13:07'),
	(114, '5', 'CD2024Mar05010334ANCRI7G48UL', 500, 1, 500, '6ICF8N2024Mar05120313KR', 0, '2024-03-05 12:13:21'),
	(115, '5', 'CD2024Mar05010334ANCRI7G48UL', 500, 1, 500, '6MH0D72024Mar05120313ZE', 0, '2024-03-05 12:13:53'),
	(116, '5', 'CD2024Mar05130354RGOILP8MCND', 600, 1, 600, 'GCMK4R2024Mar05130359TY', 0, '2024-03-05 13:59:07'),
	(117, '5', 'CD2024Mar05140300KS02CYHON8M', 80, 1, 80, 'ETMPYI2024Mar05230345K1', 0, '2024-03-05 23:45:37'),
	(118, '5', 'CD2024Mar05140300KS02CYHON8M', 80, 1, 80, 'CRI3PG2024Mar0600032419', 0, '2024-03-06 00:24:20'),
	(119, '5', 'CD2024Mar05140300KS02CYHON8M', 80, 1, 80, 'ADLFO32024Mar06010314ZI', 0, '2024-03-06 01:14:26');

-- Dumping structure for table sellfish.fish
CREATE TABLE IF NOT EXISTS `fish` (
  `fish_id` int(11) NOT NULL AUTO_INCREMENT,
  `fish_code` varchar(200) DEFAULT NULL,
  `fish_name` varchar(1000) DEFAULT NULL,
  `fish_color` varchar(1000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  `fish_image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`fish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sellfish.fish: ~5 rows (approximately)
INSERT INTO `fish` (`fish_id`, `fish_code`, `fish_name`, `fish_color`, `price`, `quantity`, `description`, `date_added`, `stat`, `fish_image`) VALUES
	(5, 'CD2024Mar05010334ANCRI7G48UL', 'test fish', 'blue red yellow', 500, '6', 'desc', '2024-03-05 01:34:25', 0, 'img2024Mar05010334.jpg'),
	(6, 'CD2024Mar05130354RGOILP8MCND', 'Fish2', 'blue yellow orange', 600, '7', 'big', '2024-03-05 13:54:58', 0, 'img2024Mar05130354.jpg'),
	(7, 'CD2024Mar051303585Z6OST2YCMH', 'Long nose', 'gray', 300, '9', 'desc', '2024-03-05 13:58:28', 0, 'img2024Mar05130358.jpg'),
	(8, 'CD2024Mar05140300KS02CYHON8M', 'cute fiesh', 'orange', 80, '7', 'this is a sampple description 4 this is a sampple description 4 this is a sampple description 4 this is a sampple description 4this is a sampple description 4 this is a sampple description 4 this is a sampple description 4', '2024-03-05 14:00:20', 0, 'img2024Mar05140300.jpg'),
	(9, 'CD2024Mar06010313M8FU7SN9GRO', 'Brown fish', 'brown', 3000, '4', 'this is a sample brown fish', '2024-03-06 01:13:50', 0, 'img2024Mar06010313.webp');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
