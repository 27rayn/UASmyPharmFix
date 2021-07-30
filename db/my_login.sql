-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: my_login
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id_category` int(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Pakaian'),(2,'Pills');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id_product` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `product_deskripsi` varchar(255) NOT NULL,
  `harga_product` int(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_category` int(1) NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (13,23,'Weight Mass','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi est sit amet facilisis magna etiam tempor. Et ultrices neque ornare aenean euismod elementum nisi quis. Dolor sit amet consect',2400000,35,'7_14.png',0),(14,23,'Nykotine','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi scelerisque. Cras pulvinar mattis nunc sed blandit. Consectetur a erat nam at lectus ur',500000,10,'250-Nycotine3.png',0),(15,23,'Conette Cosmetic','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam purus sit amet luctus venenatis lectus magna fringilla. Consectetur lorem donec massa sapien. Odio eu feugiat pretium nibh ',255450,35,'jar-15_1.png',0),(16,21,'Nerve','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus et molestie. Erat velit scelerisque in dictum non consectetur a erat nam. Hac habi',350450,21,'Nerve.png',0),(17,24,'A7 - Digital Thermometer','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus et molestie. Erat velit scelerisque in dictum non consectetur a erat nam. Hac habi',155642,100,'Thermo.png',0),(18,24,'Omron Arm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At consectetur lorem donec massa sapien faucibus et molestie. Erat velit scelerisque in dictum non consectetur a erat nam. Hac habi',300000,30,'toppng.png',0),(19,25,'The Ordinary - Skincare','With 100% nature ingredients, our product will bless your skin with beauty',450000,21,'valeriia-miller-_42NKYROG7g-unsplash.jpg',0),(20,25,'OUAI - Skincare','100% nature ingredients that makes your skin better',560700,45,'mathilde-langevin-GcGV3XWEByg-unsplash.jpg',0),(21,27,'Cruology','Lorem Ipsum dolor sit amet',560700,30,'La_Bellza_1.jpg',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id_review` int(1) NOT NULL AUTO_INCREMENT,
  `id_user` int(1) NOT NULL,
  `id_product` int(1) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` int(1) NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_review`),
  KEY `id_userR` (`id_user`),
  KEY `id_productR` (`id_product`),
  CONSTRAINT `id_productR` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_userR` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (33,22,18,'Test',5,'2021-07-12 00:27:42'),(34,22,18,'42342',3,'2021-07-12 01:07:44'),(35,23,18,'1111',3,'2021-07-12 01:07:44'),(36,22,13,'464647',5,'2021-07-12 01:46:46'),(37,22,18,'tjh54ru5u5',5,'2021-07-12 01:53:26'),(38,22,20,'Good product, the real from 100% nature. It really helps my skin to glow',5,'2021-07-15 12:34:36'),(39,22,20,'Will repeat order soon',4,'2021-07-15 12:35:11'),(40,22,20,'not good for my skin, sorry',3,'2021-07-15 12:35:47'),(41,22,20,'Love it',4,'2021-07-15 12:36:30'),(42,27,21,'Test',3,'2021-07-18 02:53:54'),(43,27,21,'Test2',2,'2021-07-18 02:54:11'),(44,27,21,'343655',1,'2021-07-18 02:54:29'),(45,22,20,'trhjr',1,'2021-07-18 03:34:48');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (21,'Dian','Dirman','dianresky@gmail.com','1500-Foto05.jpg','$2y$10$DeH8Vf.NeuU3TDww9wXaheuSrCQblnphkadUKTauicgJ5Twb69AdG',1,1,1625885792),(22,'Rayyan','Anugerah','rayyananugerah2001@gmail.com','1500-Foto06.jpg','$2y$10$N3ZjGkDIboKHrLjW17.PBeu.GUCbagPQfu7iZb/5a5U7xLGc2gtIK',2,1,1625990920),(23,'Inama','Pharmacy','inamapharmacy@gmail.com','Open_Eye11.jpg','$2y$10$qf3WPqtBbByBT9zHJIHERORmzdzPALVMzgEriVLH5VrxliU5ofBjC',2,1,1625991028),(24,'California','Pharmacy','calpharm@gmail.com','1500-Foto021.jpg','$2y$10$DKz0DuUs/sKffiPjUVBAo.L8RENtGofJMbTZCPUj/cTZsikHc0AIG',1,1,1626046711),(25,'NewYork','Pharmacy','newyork@gmail.com','Amanda_1.jpg','$2y$10$MG9itnQj2ah2MxmE7JVcYuUyH3sIhpR9zmuBszCPrUPW/MieV/PGm',1,1,1626351701),(26,'Yan','Yan','yanyan@gmail.com','1500-Foto051.jpg','$2y$10$HI0UwFWScCaDDYSTHeAa5ebI4GQd2hSsgI.oRwOK4HDtC1Kt9VBHO',2,1,1626576699),(27,'YY','Y','yy@gmail.com','1500-Foto061.jpg','$2y$10$m68nT3CNH2qFkfa3KlcQOOQN48KqN0Z9cvGTqnDM30s0yvRgJQ8cO',1,1,1626576751);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_user` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'seller'),(2,'member');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-18 11:43:38
