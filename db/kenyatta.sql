CREATE DATABASE  IF NOT EXISTS `sms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sms`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: sms
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `studentid` int(11) NOT NULL DEFAULT '0',
  `cat1` int(11) DEFAULT NULL,
  `cat2` int(11) DEFAULT NULL,
  `endterm` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `studentid_UNIQUE` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (0,78,87,87,87,'87');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppers`
--

DROP TABLE IF EXISTS `shoppers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppers` (
  `shop_name` varchar(90) DEFAULT NULL,
  `phone` varchar(90) DEFAULT NULL,
  `website` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `lineofbiz` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppers`
--

LOCK TABLES `shoppers` WRITE;
/*!40000 ALTER TABLE `shoppers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) NOT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `dayborder` varchar(45) DEFAULT NULL,
  `clas` varchar(45) DEFAULT NULL,
  `parentname` varchar(45) DEFAULT NULL,
  `prevschool` varchar(45) DEFAULT NULL,
  `kcpemarks` int(11) DEFAULT NULL,
  `health` text,
  PRIMARY KEY (`id`,`studentid`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `studentid_UNIQUE` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (86,1,'George Kagwe','Male','Day','Form 1','Peter Kagwe','Mc',300,'hghg'),(88,0,'0','0','0','0','0','0',0,'0'),(89,11,'Root','Male','Day','Form 1','Peter Kagwe','Mc',80,'bbb'),(91,8,'George Kagwe','Male','Day','Form 1','Peter Kagwe','Mc',300,'hjhjh'),(92,28,'George Kagwe','Male','Day','Form 1','Peter Kagwe','Mc',300,'hjhjh');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(900) NOT NULL,
  `email` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'George','6c92243b8e088b5e397280e528f70d54dcced06bff9d26b1a287c0993e0ec728','georgegkagwe@gmail.com','Maths'),(2,'Maryan','05fef1824cd132ef986b30d1779801448d9fb81a34da1cab4173cc8cf87318e7','maryann@gmail.com','');
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

-- Dump completed on 2015-08-16 17:31:38
