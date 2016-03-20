CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	5.6.27-0ubuntu0.15.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` varchar(45) DEFAULT NULL,
  `daystart` date DEFAULT NULL,
  `dayend` date DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `client_number` varchar(45) DEFAULT NULL,
  `client_id` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (70,'101','2015-12-10','2015-12-10',94500,94500,'George Githiri Kagwe','0719717058','10221096',0),(71,'109','2015-12-01','2015-12-01',135000,135000,'George Githiri Kagwe','0719717058','10221096',0),(72,'104','2015-12-11','2015-12-11',4500,4500,'George Githiri Kagwe','0719717058','10221096',0),(73,'100','2015-12-11','2015-12-11',9000,9000,'George Githiri Kagwe','0719717058','10221096',0),(74,'113','2015-12-11','2015-12-11',31500,31500,'George Githiri Kagwe','0719717058','10221096',0),(75,'104','2015-12-31','2015-12-31',135000,135000,'Catherine Kagwe','0707911912','320000000',0),(76,'101','2015-12-07','2015-12-07',45000,45000,'Catherine Kagwe','0719717058','320000000',0),(77,'109','2015-12-07','2015-12-07',0,0,'Catherine Kagwe','0707911912','320000000',0),(78,'104','2015-12-16','2015-12-16',36000,36000,'George Githiri Kagwe','0719717058','10221096',0),(79,'100','0000-00-00','0000-00-00',4500,4500,'Catherine Kagwe','0719717058','28395126',0),(80,'113','2015-12-09','2015-12-09',9000,9000,'Catherine Kagwe','0719717058','320000000',0),(81,'101','2015-12-08','2015-12-08',67500,67500,'Catherine Kagwe','0707911912','320000000',0),(82,'101','2015-12-03','2015-12-03',31500,31500,'George Githiri Kagwe','0719717058','320000000',1);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor` varchar(45) DEFAULT NULL,
  `number` varchar(45) NOT NULL,
  `features` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (35,'First Floor','101','EXECUTIVE ROOM','6x6',4500,1),(36,'1','109','1','1',4500,0),(37,'1','104','1','1',4500,0),(38,'1','100','EXECUTIVE ROOM','6x6',4500,0),(39,'1','113','EXECUTIVE ROOM','6x6',4500,0);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1,'Lantern','lantern@gmail.com','resort');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `userscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-09 18:54:24
