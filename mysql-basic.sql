# ************************************************************
# Sequel Ace SQL dump
# バージョン 20031
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# ホスト: localhost (MySQL 8.0.30)
# データベース: mysql-basic
# 生成時間: 2022-09-20 12:43:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ item_orders
# ------------------------------------------------------------

CREATE TABLE `item_orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT '0',
  `unit` int DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `item_orders` WRITE;
/*!40000 ALTER TABLE `item_orders` DISABLE KEYS */;

INSERT INTO `item_orders` (`id`, `item_id`, `order_id`, `price`, `unit`, `create_time`)
VALUES
	(1,'1','1',2500,1,'2022-09-19 22:44:19'),
	(2,'2','1',8300,1,'2022-09-19 22:44:32'),
	(3,'5','1',800,1,'2022-09-19 22:45:12'),
	(4,'2','2',8300,1,'2022-09-19 23:04:25'),
	(5,'3','2',4000,1,'2022-09-19 23:04:25'),
	(6,'5','3',800,3,'2022-09-19 23:06:06'),
	(7,'3','4',4000,1,'2022-09-19 23:08:05'),
	(8,'4','4',3300,1,'2022-09-19 23:08:18'),
	(9,'3','5',4000,1,'2022-09-19 23:11:37'),
	(10,'1','6',2500,2,'2022-09-19 23:13:01'),
	(11,'4','7',3300,1,'2022-09-19 23:14:39'),
	(12,'5','8',800,3,'2022-09-19 23:20:20');

/*!40000 ALTER TABLE `item_orders` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ items
# ------------------------------------------------------------

CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `name`, `size`, `price`, `create_time`)
VALUES
	(1,'T-シャツ','S-L',2500,'2022-09-19 22:16:24'),
	(2,'バックパック','free',8300,'2022-09-19 22:36:24'),
	(3,'スニーカー','S-LL',4000,'2022-09-19 22:37:12'),
	(4,'ペット用スニーカー','SS-L',3300,'2022-09-19 22:38:06'),
	(5,'靴下','23~25,25~27',800,'2022-09-19 22:39:25');

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ orders
# ------------------------------------------------------------

CREATE TABLE `orders` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ship_adresses` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_flag` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `ship_adresses`, `complete_flag`, `total_price`, `create_time`)
VALUES
	(1,3,'東京都杉並区',0,11600,NULL),
	(2,10,'神奈川県横浜市',1,12300,'2022-09-19 22:43:15'),
	(3,5,'埼玉県春日部市',0,2400,'2022-09-19 23:05:43'),
	(4,1,'福岡県福岡市',0,7300,'2022-09-19 23:07:23'),
	(5,8,'千葉県松戸市',1,4000,'2022-09-19 23:11:13'),
	(6,10,'神奈川県横浜市',0,5000,'2022-09-19 23:12:38'),
	(7,2,'東京都八王子市',1,3300,'2022-09-19 23:14:21'),
	(8,9,'北海道札幌市',0,2400,'2022-09-19 23:21:03');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint DEFAULT '0',
  `gender` smallint DEFAULT '0',
  `memo` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `age`, `gender`, `memo`, `create_time`)
VALUES
	(1,'山田太郎',25,1,'今日もいい天気','2022-09-19 18:47:28'),
	(2,'佐藤花子',24,2,NULL,'2022-09-19 18:47:28'),
	(3,'田中次郎',39,1,'hello YouTube','2022-09-19 18:47:28'),
	(4,'高橋よしこ',34,2,'水曜日は不在','2022-09-19 18:49:42'),
	(5,'鈴木裕貴',18,1,NULL,'2022-09-19 18:50:43'),
	(6,'山本もんじゃ',3,0,'柴犬','2022-09-19 18:51:13'),
	(7,'小林マイク',29,1,'来月イギリス帰国','2022-09-19 18:51:13'),
	(8,'山本ハツ江',89,2,NULL,'2022-09-19 18:53:51'),
	(9,'松本幸太郎',54,1,'日中は携帯へ。','2022-09-19 18:54:47'),
	(10,'木村アリサ',17,2,NULL,'2022-09-19 18:56:01');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
