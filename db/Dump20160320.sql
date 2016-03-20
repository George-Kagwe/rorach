CREATE DATABASE  IF NOT EXISTS `rorach` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rorach`;
-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: rorach
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `first_class` date DEFAULT NULL,
  `second_class` date DEFAULT NULL,
  `third_class` date DEFAULT NULL,
  `gestation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (103,'+254723008845',NULL,NULL,NULL,'-1'),(104,'+254714567801',NULL,NULL,NULL,'-3'),(105,'+254771588688',NULL,NULL,NULL,'-0.85714285714286'),(106,'+254714234299',NULL,NULL,NULL,'-2.5714285714286'),(107,'+254720205466','2016-01-29','2016-02-19','2016-03-11','1'),(108,'+254722663584',NULL,NULL,NULL,'-1'),(109,'+254713449369','2016-01-29','2016-02-19','2016-03-11','0'),(110,'+254711907571','2016-01-29','2016-02-19','2016-03-11','0'),(111,'+254702580825','2016-01-29','2016-02-19','2016-03-11','0'),(112,'+254707589721','2016-01-29','2016-02-19','2016-03-11','0'),(113,'+254715001830','2016-01-29','2016-02-19','2016-03-11','0'),(114,'+254717713489','2016-01-29','2016-02-19','2016-03-11','0'),(115,'+254726441166','2016-01-29','2016-02-19','2016-03-11','0'),(116,'+254720578790',NULL,NULL,NULL,'-1'),(117,'+254721802702','2016-01-29','2016-02-19','2016-03-11','0'),(118,'+254771964163','2016-01-29','2016-02-19','2016-03-11','0'),(120,'+254704400991','2016-01-29','2016-02-19','2016-03-11','0'),(121,'+254725760702','2016-01-29','2016-02-19','2016-03-11','0'),(122,'+254721140389','2016-01-29','2016-02-19','2016-03-11','0'),(123,'+254728369889','2016-01-29','2016-02-19','2016-03-11','0'),(124,'+25472808156','2016-01-29','2016-02-19','2016-03-11','0'),(125,'+254727209117','2016-01-29','2016-02-19','2016-03-11','0'),(126,'+254715306367','2016-01-29','2016-02-19','2016-03-11','0'),(127,'+254728485675','2016-01-29','2016-02-19','2016-03-11','0'),(128,'+254725223990','2016-01-29','2016-02-19','2016-03-11','0'),(129,'+254727509795','2016-01-29','2016-02-19','2016-03-11','0'),(130,'+254718142795','2016-01-29','2016-02-19','2016-03-11','0'),(131,'+254716888282','2016-01-29','2016-02-19','2016-03-11','0'),(132,'+254720502377','2016-01-29','2016-02-19','2016-03-11','0'),(133,'+254771038928','2016-02-05','2016-02-26','2016-03-18','0'),(134,'+254719397383','2016-02-05','2016-02-26','2016-03-18','0'),(135,'+254718061691','2016-02-05','2016-02-26','2016-03-18','0'),(136,'+254728565275','2016-02-05','2016-02-26','2016-03-18','0'),(137,'+254715751142','2016-02-05','2016-02-26','2016-03-18','0'),(138,'+254716655099',NULL,NULL,NULL,'-0.14285714285714'),(139,'+254721403336','2016-02-06','2016-02-27','2016-03-19','0.14285714285714'),(140,'+254721993966','2016-02-06','2016-02-27','2016-03-19','0'),(141,'+254722147836',NULL,NULL,NULL,'-0.42857142857143'),(142,'+254725012866',NULL,NULL,NULL,'-0.42857142857143'),(143,'+25470105352','2016-02-06','2016-02-27','2016-03-19','0.14285714285714'),(144,'+254712420045','2016-02-08','2016-02-29','2016-03-21','0.42857142857143'),(145,'+254706418326','2016-02-19','2016-03-11','2016-04-01','2.2857142857143'),(148,'+254723848379','2016-02-19','2016-03-11','2016-04-01','0'),(149,'+254721128642','2016-02-19','2016-03-11','2016-04-01','0'),(150,'+254715674852',NULL,NULL,NULL,'-4'),(151,'+254727761420','2016-02-19','2016-03-11','2016-04-01','4'),(152,'+254726927911','2016-02-19','2016-03-11','2016-04-01','0'),(153,'+254721153603',NULL,NULL,NULL,'-4'),(154,'+254712556623','2016-02-19','2016-03-11','2016-04-01','0'),(155,'+254725455721','2016-02-19','2016-03-11','2016-04-01','0'),(156,'+254713784250','2016-02-19','2016-03-11','2016-04-01','0'),(157,'+254721870805','2016-02-19','2016-03-11','2016-04-01','0'),(158,'+254704340460',NULL,NULL,NULL,'-4'),(159,'+254728218813','2016-03-03','2016-03-24','2016-04-14','1.4285714285714'),(160,'+254728550939','2016-03-03','2016-03-24','2016-04-14','0'),(161,'+254710740586','2016-03-03','2016-03-24','2016-04-14','0'),(162,'+254722535184','2016-03-03','2016-03-24','2016-04-14','0'),(163,'+254721778648','2016-03-03','2016-03-24','2016-04-14','0'),(165,'+254713284246','2016-03-03','2016-03-24','2016-04-14','0'),(166,'+254714254900','2016-03-03','2016-03-24','2016-04-14','0'),(167,'+254725601239','2016-03-03','2016-03-24','2016-04-14','0'),(168,'+254722874105','2016-03-03','2016-03-24','2016-04-14','0'),(173,'+254721955412','2016-03-03','2016-03-24','2016-04-14','0'),(174,'+254720359739','2016-03-03','2016-03-24','2016-04-14','0'),(175,'+254726258485',NULL,NULL,NULL,'-1'),(176,'+254707143387','2016-03-03','2016-03-24','2016-04-14','0'),(177,'+254724496438','2016-03-03','2016-03-24','2016-04-14','0'),(178,'+254705202164','2016-03-03','2016-03-24','2016-04-14','0'),(179,'+254729379105','2016-03-03','2016-03-24','2016-04-14','0'),(180,'+254723059848','2016-03-03','2016-03-24','2016-04-14','0'),(181,'+254720378578','2016-03-03','2016-03-24','2016-04-14','0'),(182,'+254725246794','2016-03-03','2016-03-24','2016-04-14','0'),(183,'+25472517431','2016-03-04','2016-03-25','2016-04-15','0'),(184,'+254722737646','2016-03-04','2016-03-25','2016-04-15','0'),(185,'+254713097689','2016-03-04','2016-03-25','2016-04-15','0'),(186,'+254721409822','2016-03-04','2016-03-25','2016-04-15','0'),(187,'+254712986933','2016-03-04','2016-03-25','2016-04-15','0'),(188,'+254717504297','2016-03-04','2016-03-25','2016-04-15','0'),(189,'+254700553176','2016-03-22','2016-04-12','2016-05-03','0'),(190,'+254727573314','2016-03-22','2016-04-12','2016-05-03','0'),(191,'+254728843784','2016-03-22','2016-04-12','2016-05-03','0'),(192,'+254723450213','2016-03-22','2016-04-12','2016-05-03','0'),(193,'+25471808486','2016-03-22','2016-04-12','2016-05-03','0'),(194,'+254728655554','2016-03-22','2016-04-12','2016-05-03','0'),(195,'+25472459939','2016-03-22','2016-04-12','2016-05-03','0'),(196,'+254720630601','2016-03-22','2016-04-12','2016-05-03','0'),(197,'+254710964069','2016-03-22','2016-04-12','2016-05-03','0'),(198,'+254710973047','2016-03-22','2016-04-12','2016-05-03','0'),(199,'+254714030402','2016-03-22','2016-04-12','2016-05-03','0'),(200,'+254724230985','2016-03-22','2016-04-12','2016-05-03','0'),(201,'+254718032421','2016-03-22','2016-04-12','2016-05-03','0'),(202,'+254705070298','2016-03-22','2016-04-12','2016-05-03','0'),(203,'+254725671125','2016-03-22','2016-04-12','2016-05-03','0'),(205,'+254722714116','2016-03-22','2016-04-12','2016-05-03','0'),(206,'+2547207036179','2016-03-22','2016-04-12','2016-05-03','0'),(207,'+254712500228','2016-03-22','2016-04-12','2016-05-03','0'),(208,'+254721143889','2016-03-22','2016-04-12','2016-05-03','0'),(209,'+254725272794','2016-03-22','2016-04-12','2016-05-03','0'),(210,'+254725830743','2016-03-22','2016-04-12','2016-05-03','0'),(211,'+25472548136','2016-03-22','2016-04-12','2016-05-03','0'),(212,'+254705649586','2016-03-22','2016-04-12','2016-05-03','0');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(200) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datejoined` date DEFAULT NULL,
  `parity` varchar(45) DEFAULT NULL,
  `abortions` varchar(45) DEFAULT NULL,
  `gravidity` varchar(45) DEFAULT NULL,
  `lmp` varchar(45) DEFAULT NULL,
  `edd` varchar(45) DEFAULT NULL,
  `gestation` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (116,'Njeri Peter','40','+254721424282','Nairobi','0000-00-00','0','0','0','2015-02-03','2015-11-10','39.285714285714','Leah '),(145,'Njeri','28','+254723008845','Nairobi','2016-01-01','2','0','2','2016-01-08','2016-10-14','-1','Jane '),(147,'Mukami','27','+254771588688','Nairobi','2016-01-08','1','1','2','2016-01-14','2016-10-20','-0.85714285714286','Lydia'),(148,'Neema','26','+254714234299','Nairobi','2016-01-05','0','0','0','2016-01-23','2016-10-29','-2.5714285714286','Irene'),(149,'Kivali','34','+254720205466','Nairobi','2016-01-08','1','0','1','2016-01-01','2016-10-07','1','Martha'),(150,'Orina','35','+254722663584','Nairobi','2016-01-01','1','2','3','','2016-10-14','-1','Pauline '),(151,'Otieno','29','+254713449369','Nairobi','0000-00-00','0','0','0','','2016-10-14','0','Phoebe'),(152,'kagai','32','+254711907571','','0000-00-00','1','2','3','','2016-10-14','0','Imaculate '),(153,'Muchira','20','+254702580825','Nairobi','0000-00-00','0','0','0','','2016-10-14','0','Glentia'),(154,'Mutua ','27','+254707589721','','0000-00-00','0','0','0','','2016-10-14','0','Caroline'),(155,'Bochaberi','26','+25471500183','Nairobi','0000-00-00','0','0','0','','2016-10-14','0','Agnes'),(156,'Wambui','30','+254717713489','Nairobi','0000-00-00','0','1','1','','2016-10-14','0','Terry'),(157,'Wanjiru','33','+254726441166','Nairobi','2016-01-08','0','0','0','','2016-10-14','0','Regina'),(158,'Akinyi','26','+25472057879','Nairobi','2016-01-01','0','0','0','','2016-10-14','-1','Evlyne'),(159,'','36','+254721802702','Nairobi','0000-00-00','1','0','1','','2016-10-14','0','Emmaculate '),(160,'Sheen ','32','+254771964163','','0000-00-00','0','1','1','','2016-10-14','0','Ruth'),(162,'Adhiambo','27','+254704400991','Nairobi','0000-00-00','0','0','0','','2016-10-14','0','Ann'),(163,'Wangechi','33','+254725760702','','0000-00-00','1','1','2','','2016-10-14','0','Josphine'),(164,'Wairimu','38','+254721140389','Nairobi','0000-00-00','0','0','0','','2016-10-14','0','Eunice'),(165,'Wanjiru','20','+254728369889','','0000-00-00','0','0','0','','2016-10-14','0','Sharon'),(166,'Njambi','26','+25472808156','','0000-00-00','1','2','3','','2016-10-14','0','Priscilla'),(167,'Aluoch','29','+254727209117','','0000-00-00','0','0','0','','2016-10-14','0','Margret '),(168,'Lema','26','+254715306367','','0000-00-00','0','0','0','','2016-10-14','0','Agnes'),(169,'Atieno','32','+254728485675','Nairobi','0000-00-00','0','1','1','','2016-10-14','0','Irene'),(170,'Wandia','25','+25472522399','','0000-00-00','0','0','0','','2016-10-14','0','Dorcas'),(171,'Wambui','37','+254727509795','','0000-00-00','2','0','2','','2016-10-14','0','Peninah'),(172,'Adhiambo','27','+254718142795','','0000-00-00','1','1','2','','2016-10-14','0','Colleter'),(173,'Kagwiria','29','+254716888282','','0000-00-00','1','2','3','','2016-10-14','0','Ann'),(174,'Musuti','30','+254720502377','Nairobi','0000-00-00','2','0','2','','2016-10-14','0','Phylis'),(175,'Nyambane','41','+254771038928','Nairobi','2016-01-15','6','1','7','2016-01-15','2016-10-21','0','Everlyne'),(176,'Mulongo','23','+254719397383','Nairobi','2016-01-15','0','0','0','2016-01-15','2016-10-21','0','Sharon'),(177,'Wanjiru','26','+254718061691','Nairobi','2016-01-15','0','1','1','2016-01-15','2016-10-21','0','Irene'),(178,'Muloli','30','+254728565275','Nairobi','2016-01-15','2','0','2','2016-01-15','2016-10-21','0','Lilian '),(179,'Wanjiku','26','+254715751142','Nairobi','2016-01-15','1','1','2','2016-01-15','2016-10-21','0','Margaret '),(180,'Muthoni','28','+254716655099','Nairobi','2016-01-15','1','0','1','2016-01-16','2016-10-22','-0.14285714285714','Marion'),(181,'Wangechi','32','+254721403336','Nairobi','2016-01-16','1','0','1','2016-01-15','2016-10-21','0.14285714285714','Tabitha '),(182,'Waitara','34','+254721993966','Nairobi','2016-01-16','1','0','1','2016-01-16','2016-10-22','0','Abigail'),(183,'Wangari','34','+254722147836','Nairobi','2016-01-15','2','0','2','2016-01-18','2016-10-24','-0.42857142857143','Lydia'),(184,'Nyambura','25','+254725012866','Nairobi','2016-01-15','2','0','2','2016-01-18','2016-10-24','-0.42857142857143','Salome'),(185,'Ngari','24','+25470105352','Nairobi','2016-01-16','0','0','0','2016-01-15','2016-10-21','0.14285714285714','Evelyne '),(199,'Nduta','38','+254723848379','Nairobi','2016-01-29','1','0','1','2016-01-29','2016-11-04','0','Olive '),(200,'Atemo','36','+254721128642','Nairobi','2016-01-29','2','1','3','2016-01-29','2016-11-04','0','Lena'),(201,'Mwangi','31','+254715674852','Nairobi','2016-01-01','1','0','1','2016-01-29','2016-11-04','-4','Grace'),(202,'Easter','27','+25472776142','Nairobi','2016-01-29','1','0','1','2016-01-01','2016-10-07','4','Njogu'),(203,'Murumbe','31','+254726927911','Nairobi','2016-01-29','1','0','1','2016-01-29','2016-11-04','0','Susan'),(204,'Wanjiru','35','+254721153603','Nairobi','2016-01-01','1','0','1','2016-01-29','2016-11-04','-4','Beatrice'),(205,'Karimi','28','+254712556623','Nairobi','2016-01-29','0','0','0','2016-01-29','2016-11-04','0','Beth'),(206,'Nyambura','29','+254725455721','Nairobi','2016-01-29','1','0','1','2016-01-29','2016-11-04','0','Anne'),(207,'Njeri','25','+25471378425','Nairobi','2016-01-29','0','0','0','2016-01-29','2016-11-04','0','Phylis'),(208,'Makena','38','+254721870805','Nairobi','2016-01-29','0','0','0','2016-01-29','2016-11-04','0','Catherine'),(209,'Nderitu','26','+25470434046','Nairobi','2016-01-01','0','0','0','2016-01-29','2016-11-04','-4','Nderitu'),(210,'Muthoni','29','+254728218813','Nairobi','2016-02-11','1','0','1','2016-02-01','2016-11-07','1.4285714285714','Beatrice'),(211,'Opondo','31','+254728550939','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Violet'),(212,'Cherotich','27','+254710740586','Nairobi','2016-02-11','2','0','2','2016-02-11','2016-11-17','0','Patricia'),(213,'wambui','28','+254722535184','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Susan'),(214,'Naomi','26','+254721778648','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Wangui'),(215,'Muthoni','23','+254713284246','Nairobi','2016-02-11','3','0','3','2016-02-11','2016-11-17','0','Zipporah'),(216,'Athiambo','21','+2547142549','Nairobi','2016-02-11','1','0','1','2016-02-11','2016-11-17','0','Monica'),(217,'Mweni','31','+254725601239','Nairobi','2016-02-11','3','0','3','2016-02-11','2016-11-17','0','Patricia'),(218,'Kamenju','27','+254722874105','Nairobi','2016-02-11','1','0','1','2016-02-11','2016-11-17','0','Teresia'),(219,'Wanjiru','23','+254712420045','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','+0 days','Teressia'),(220,'Mwikali','30','+254721955412','Nairobi','2016-02-11','2','0','2','2016-02-11','2016-11-17','0','Harrieta '),(221,'Wairimu','32','+254720359739','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Jackline'),(222,'Wangechi','26','+254726258485','Nairobi','2016-02-11','0','0','0','2016-02-18','2016-11-24','-1','Mary'),(223,'Wambui','26','+254707143387','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Mary'),(224,'Atieno','22','+254724496438','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Stacey'),(225,'Chombo','26','+254705202164','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Angelica'),(226,'Ongara','24','+254729379105','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Winnie'),(227,'Mwangi','30','+254723059848','Nairobi','2016-02-11','0','0','0','2016-02-11','2016-11-17','0','Faith'),(228,'Nyagucha','40','+254720378578','Nairobi','2016-02-11','3','0','3','2016-02-11','2016-11-17','0','Beatrice'),(229,'Gitau','30','+254725246794','Nairobi','2016-02-11','1','1','2','2016-02-11','2016-11-17','0','Naomi'),(230,'Nyakio','38','+25472517431','Nairobi','2016-02-12','0','0','0','2016-02-12','2016-11-18','0','Hannah'),(231,'Waruguru','30','+254722737646','Nairobi','2016-02-12','0','0','0','2016-02-12','2016-11-18','0','Gladys'),(232,'Jimase','27','+254713097689','Nairobi','2016-02-12','0','1','1','2016-02-12','2016-11-18','0','Josephine'),(233,'Wangui','34','+254721409822','Nairobi','2016-02-12','1','0','1','2016-02-12','2016-11-18','0','Susan'),(234,'Nyawira','26','+254712986933','Nairobi','2016-02-12','2','0','2','2016-02-12','2016-11-18','0','Jane'),(235,'Kageha','23','+254717504297','Nairobi','2016-02-12','0',NULL,'0','2016-02-12',NULL,'0','Abigail'),(236,'kagu','30','+254700553176','Nairobi','2016-03-01','1','1','2','2016-03-01','2016-12-06','0','Zipporah'),(237,'Everline','34','+254727573314','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Loise'),(238,'Makena','35','+254728843784','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Juliana'),(239,'Wangui','26','+254723450213','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Monica'),(240,'Gathoni','25','+25471808486','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Shanty'),(241,'Waithera','32','+254728655554','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Lucy'),(242,'Wangari','31','+25472459939','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Florence'),(243,'Njeri','28','+254720630601','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Easter '),(244,'Gatie','28','+254710964069','Nairobi','2016-03-01','1','1','2','2016-03-01','2016-12-06','0','Susan'),(245,'Nzioka','27','+254710973047','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Ruth'),(246,'Onsango','28','+254714030402','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Quinter'),(247,'Njeri','34','+254724230985','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Mercy'),(248,'Mbuja','30','+254718032421','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Prisea'),(249,'Wambui','30','+254705070298','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Margaret '),(250,'Atieno','31','+254725671125','Nairobi','2016-03-01','1','0','1','2016-03-01','2016-12-06','0','Consolota'),(251,'Mwende','31','+254722714116','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Hellen'),(252,'Ngina','21','+2547207036179','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Margaret '),(253,'Wambui','34','+254712500228','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Lydia '),(254,'Wambui','26','+254721143889','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Nancy'),(255,'Wairimu','29','+254725272794','Nairobi','2016-03-01','1','1','2','2016-03-01','2016-12-06','0','Evalyne'),(256,'Wanjiru','31','+254725830743','Nairobi','2016-03-01','1','1','2','2016-03-01','2016-12-06','0','Sella'),(257,'Wairimu','25','+25472548136','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Mercy'),(258,'Ndonye','23','+254705649586','Nairobi','2016-03-01','0','0','0','2016-03-01','2016-12-06','0','Emily');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'CodeIgniter','http://ellislab.com/codeigniter','CodeIgniter is a proven, agile & open PHP web application framework with a small footprint. It is powering the next generation of web apps.'),(2,'AngularJS','http://angularjs.org/','AngularJS lets you extend HTML vocabulary for your application. The resulting environment is extraordinarily expressive, readable, and quick to develop.');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
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
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rose','123456'),(2,'cate','cate'),(3,'George','George');
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

-- Dump completed on 2016-03-20 23:13:30
