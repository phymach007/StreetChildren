-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: street_children_welfare
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `childrenwithparents`
--

DROP TABLE IF EXISTS `childrenwithparents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childrenwithparents` (
  `children_id` int(11) NOT NULL AUTO_INCREMENT,
  `children_name` varchar(45) NOT NULL,
  `children_age` varchar(45) NOT NULL,
  `parent_name` varchar(45) NOT NULL,
  `parent_address` varchar(45) NOT NULL,
  `parent_contactno` varchar(45) NOT NULL,
  `parent_occupation` varchar(45) NOT NULL,
  `parent_institution` varchar(45) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`children_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childrenwithparents`
--

LOCK TABLES `childrenwithparents` WRITE;
/*!40000 ALTER TABLE `childrenwithparents` DISABLE KEYS */;
INSERT INTO `childrenwithparents` VALUES (1,'Kamal','12','Rafi','Dhanmondi','01742946810','Businessman','NULL',1),(2,'Kamal','12','Rafi','Dhanmondi','01742946810','Businessman','NULL',1),(3,'bajlu','10','Sarkar','Dhanmondi','01742946810','Businessman','NULL',1),(4,'Kafi','8','Sarkar','Dhanmondi','01742946810','Businessman','NULL',0),(5,'badshah','11','Alam','Dhanmondi','01742946810','Businessman','NULL',1);
/*!40000 ALTER TABLE `childrenwithparents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-22 12:25:09
