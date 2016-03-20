CREATE DATABASE  IF NOT EXISTS `b2b` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `b2b`;
-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: b2b
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Strathmore','Beaverages','Afya Juice','Nairobi','www&c.com'),(2,'0','Beaverages','','0','0'),(3,'0','Beaverages','','0','0'),(4,'0','Beaverages','Afya Juice','0','0'),(5,'0','Beaverages','','0','0'),(6,'0','Beaverages','Afya Juice','0','0'),(7,'0','0','','0','0'),(8,'0','0','','0','0'),(9,'0','0','Afya Juice','0','0'),(10,'0','0','Afya Juice','0','0'),(11,'0','0','','0','0'),(12,'0','0','Afya Juice','0','0'),(13,'0','0','gg','0','0'),(14,'0','0','a','0','0'),(15,'0','0','','0','0'),(16,'0','0','Afya Juice','0','0'),(17,'gg','Beaverages','hgh','hhhj','jhjh'),(18,'0','0','','0','0'),(19,'0','0','','0','0'),(20,'',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('66fabc98472dd831ee2ccb32a1ad8dc1','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36',1448163618,'');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'http://localhost/yobizz/images/kili1.jpg','');
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
  `quantity` int(11) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `message` text,
  `product_id` int(11) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (3,7,0,'Strathmore University, a leading University i',NULL,'+254719717058'),(4,8,0,'give a discount',NULL,'+254722252503'),(5,8,0,'give a discount',NULL,'+254722252503'),(6,8,0,'',NULL,'+254707911912'),(7,8,0,'',NULL,'+254707911912'),(8,8,0,'',NULL,'+254707911912'),(9,8,0,'',NULL,'+254707367687'),(10,8,0,'',NULL,'+254714014992'),(11,8,0,'',NULL,'+254714014992'),(12,8,0,'',NULL,'+254714014992'),(13,8,0,'',NULL,'+254714014992'),(14,8,0,'',NULL,'+254714014992'),(15,8,0,'',NULL,'+254714014992'),(16,90,0,'v',NULL,'+254717830455');
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_CATEGORY_ID` int(11) NOT NULL,
  `PRODUCT_CODE` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(45) NOT NULL,
  `PRODUCT_PRICE` int(11) NOT NULL,
  `PRODUCT_UNITS_AVAILABLE` int(11) NOT NULL,
  `PRODUCT_MOQ` int(11) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(255) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,2,5899,'After Shave',12000,500,2,'This is a nice product','http://localhost/yobizz/images/1.jpg',16);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'0','two','Afya Juice','Nairobi','www&c.com'),(2,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(3,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(4,'George& company','Beaverages','Afya Juice','Nairobi','www&c.com'),(5,'Strathmore','Beaverages','Afya Juice','Nairobi','www&c.com'),(6,'gg','Beaverages','hgh','Nairobi','www&c.com'),(7,'','Beaverages','','',''),(8,'','0','','',''),(9,'','0','','',''),(10,'','Beaverages','','',''),(11,'0','Electronics','0','','0'),(12,'0','0','0','0','0'),(13,'0','0','0','0','0'),(14,'0','Kgs','','0','0'),(15,'0','Kgs','','0','0'),(16,'',NULL,NULL,NULL,NULL),(17,'',NULL,NULL,NULL,NULL),(18,'',NULL,NULL,NULL,NULL),(19,'',NULL,NULL,NULL,NULL),(20,'',NULL,NULL,NULL,NULL),(21,'',NULL,NULL,NULL,NULL),(22,'',NULL,NULL,NULL,NULL),(23,'',NULL,NULL,NULL,NULL),(24,'',NULL,NULL,NULL,NULL),(25,'',NULL,NULL,NULL,NULL),(26,'',NULL,NULL,NULL,NULL),(27,'',NULL,NULL,NULL,NULL);
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
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1,'titsacy@gmail.com','titsacy@gmail.com','dd4b21e9ef71e1291183a46b913ae6f2','1'),(2,'titacy@gmail.com','titacy@gmail.com','f5bb0c8de146c67b44babbf4e6584cc0','2');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `LOCATION` varchar(45) NOT NULL,
  `PHONE` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `WEBSITE` varchar(45) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `PHONE` (`PHONE`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (16,'Supplier','George& company','Madaraka','0717900801','george@gmail.com','www.georgeco.co.ke','25d55ad283aa400af464c76d713c07ad');
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

-- Dump completed on 2015-12-28 17:08:28
