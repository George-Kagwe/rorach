CREATE DATABASE  IF NOT EXISTS `b2b` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `b2b`;
-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: b2b
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

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
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `products` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Strathmore','Beaverages','Afya Juice','Nairobi','www&c.com'),(2,'0','Beaverages','','0','0'),(3,'0','Beaverages','','0','0'),(4,'0','Beaverages','Afya Juice','0','0'),(5,'0','Beaverages','','0','0'),(6,'0','Beaverages','Afya Juice','0','0'),(7,'0','0','','0','0'),(8,'0','0','','0','0'),(9,'0','0','Afya Juice','0','0'),(10,'0','0','Afya Juice','0','0'),(11,'0','0','','0','0'),(12,'0','0','Afya Juice','0','0'),(13,'0','0','gg','0','0'),(14,'0','0','a','0','0'),(15,'0','0','','0','0'),(16,'0','0','Afya Juice','0','0'),(17,'gg','Beaverages','hgh','hhhj','jhjh'),(18,'0','0','','0','0');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptops`
--

DROP TABLE IF EXISTS `laptops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laptops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptops`
--

LOCK TABLES `laptops` WRITE;
/*!40000 ALTER TABLE `laptops` DISABLE KEYS */;
/*!40000 ALTER TABLE `laptops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `recipient` varchar(45) DEFAULT NULL,
  `message` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `messagescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_phones`
--

DROP TABLE IF EXISTS `mobile_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_phones`
--

LOCK TABLES `mobile_phones` WRITE;
/*!40000 ALTER TABLE `mobile_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offic_chairs`
--

DROP TABLE IF EXISTS `offic_chairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offic_chairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offic_chairs`
--

LOCK TABLES `offic_chairs` WRITE;
/*!40000 ALTER TABLE `offic_chairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `offic_chairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `product` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'0','two','Afya Juice','Nairobi','www&c.com'),(2,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(3,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(4,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(5,'Strathmore','Beaverages','Afya Juice','Nairobi','www&c.com'),(6,'gg','Beaverages','hgh','Nairobi','www&c.com'),(7,'','Beaverages','','',''),(8,'','0','','',''),(9,'','0','','',''),(10,'','Beaverages','','','');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'George','rootgeorge','buyer'),(2,'cate','cate','seller'),(3,'george','admin','admin'),(4,'george','hjjh','supplier'),(5,'george','hjjh','supplier'),(6,'george','hjjh','supplier'),(7,'george','hjjh','supplier'),(8,'','','supplier'),(9,'','','supplier'),(10,'','','supplier'),(11,'','','supplier');
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

-- Dump completed on 2015-10-26 21:02:37
