# Host: 127.0.0.1  (Version 5.5.32)
# Date: 2016-12-29 12:27:48
# Generator: MySQL-Front 5.3  (Build 5.39)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `kodemotor` varchar(11) NOT NULL DEFAULT '',
  `merk` varchar(50) DEFAULT NULL,
  `tipe` varchar(50) NOT NULL DEFAULT '',
  `warna` varchar(25) DEFAULT NULL,
  `harga` varchar(25) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodemotor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES ('M010101','Honda','Supra X 125 FI CW','Energetic Black','17000000','energetic-suprax-2015.png'),('M010102','Honda','Supra X 125 FI CW','Razor White','17000000','razor-suprax-2015.png'),('M010201','Honda','Beat FI eSP CW','Dance White','14000000','1.png');

#
# Structure for table "order_items"
#

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `kodemotor` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `harga` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(5) NOT NULL,
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "order_items"
#

INSERT INTO `order_items` VALUES (21,'M010102','17000000',1),(21,'M010201','14000000',1),(22,'M010102','17000000',1),(22,'M010201','14000000',1),(23,'M010102','17000000',1),(23,'M010201','14000000',1),(24,'M010102','17000000',1),(25,'M010101','17000000',1),(26,'M010102','17000000',1),(27,'M010102','17000000',1),(28,'M010201','14000000',1);

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `total` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('Di Periksa','Di Proses','Pengiriman','Terkirim') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Di Periksa',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (21,'2016-12-28 18:12:02',3,'31000000','Di Proses'),(22,'2016-12-28 18:12:15',3,'31000000','Di Periksa'),(23,'2016-12-28 18:12:34',3,'31000000','Di Periksa'),(24,'2016-12-28 18:12:52',3,'17000000','Di Periksa'),(25,'2016-12-28 18:12:59',3,'17000000','Di Periksa'),(26,'2016-12-28 20:12:26',3,'17000000','Di Periksa'),(27,'2016-12-29 05:12:38',3,'17000000','Di Periksa'),(28,'2016-12-29 12:23:58',3,'14000000','Di Periksa');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `level_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_Id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'hengki.cahya@ymail.com','Hengki Cahya Wijaya','06535687fe9f87055a858572e6f04382','TANGERANG','089689266239','admin'),(2,'herlambang@ymail.com','Herlambang','d3839fa7e7e7d3926b6a90a434a24475','Tangerang','089689909827','member'),(3,'lele@ymail.com','Lele','4141505a1859c8333a5f50a7cd8aee59','Kolam Ikan','089689909890','member');
