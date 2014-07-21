CREATE DATABASE  IF NOT EXISTS `summerpractice` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `summerpractice`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: summerpractice
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40102 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavedenia`
--

DROP TABLE IF EXISTS `zavedenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavedenia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `smoking` bit(1) DEFAULT NULL,
  `garden` bit(1) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id_idx` (`type_id`),
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavedenia`
--

LOCK TABLES `zavedenia` WRITE;
/*!40000 ALTER TABLE `zavedenia` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavedenia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-20 17:06:39
