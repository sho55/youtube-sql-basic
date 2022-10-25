# ************************************************************
# Sequel Ace SQL dump
# バージョン 20031
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# ホスト: localhost (MySQL 8.0.30)
# データベース: mysql-basic
# 生成時間: 2022-10-25 06:03:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ orders
# ------------------------------------------------------------

CREATE TABLE `orders` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ship_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_flag` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `create_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `ship_address`, `complete_flag`, `total_price`, `create_time`)
VALUES
	(1,3,'東京都杉並区',0,11600,NULL),
	(2,10,'神奈川県横浜市',1,12300,'2022-08-01 22:43:15'),
	(3,5,'埼玉県春日部市',0,2400,'2022-08-23 23:05:43'),
	(4,1,'福岡県福岡市',0,7300,'2022-09-10 23:07:23'),
	(5,8,'千葉県松戸市',1,4000,'2022-09-10 23:11:13'),
	(6,10,'神奈川県横浜市',0,5000,'2022-09-29 23:12:38'),
	(7,2,'東京都八王子市',1,3300,'2022-10-04 23:14:21'),
	(8,9,'北海道札幌市',0,2400,'2022-10-10 23:21:03');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
