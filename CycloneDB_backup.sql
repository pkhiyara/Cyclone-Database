CREATE DATABASE  IF NOT EXISTS `cyclonedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cyclonedb`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: cyclonedb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `avg_min_pressure`
--

DROP TABLE IF EXISTS `avg_min_pressure`;
/*!50001 DROP VIEW IF EXISTS `avg_min_pressure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `avg_min_pressure` AS SELECT 
 1 AS `Cyclone Name`,
 1 AS `Avg Min Pressure`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `casualties`
--

DROP TABLE IF EXISTS `casualties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `casualties` (
  `casualty_id` int(11) NOT NULL,
  `casualty_est` int(11) DEFAULT NULL,
  PRIMARY KEY (`casualty_id`),
  UNIQUE KEY `casualty_id_UNIQUE` (`casualty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casualties`
--

LOCK TABLES `casualties` WRITE;
/*!40000 ALTER TABLE `casualties` DISABLE KEYS */;
INSERT INTO `casualties` VALUES (1,3),(2,6),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,1),(11,0),(12,0),(13,0),(14,6),(15,5),(16,18),(17,0),(18,4),(19,0),(20,0),(21,0),(22,9),(23,0),(24,1),(25,0),(26,4),(27,7),(28,1),(29,2),(30,0),(31,6),(32,0);
/*!40000 ALTER TABLE `casualties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `criticalatlantichurricanes`
--

DROP TABLE IF EXISTS `criticalatlantichurricanes`;
/*!50001 DROP VIEW IF EXISTS `criticalatlantichurricanes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `criticalatlantichurricanes` AS SELECT 
 1 AS `Cyclone Name`,
 1 AS `Casualties`,
 1 AS `Estimated Damage Cost (in million USD)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cyclone_status`
--

DROP TABLE IF EXISTS `cyclone_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cyclone_status` (
  `status_id` int(11) NOT NULL,
  `cyclone_type` varchar(50) NOT NULL,
  `origin_coast` varchar(50) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_id_UNIQUE` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyclone_status`
--

LOCK TABLES `cyclone_status` WRITE;
/*!40000 ALTER TABLE `cyclone_status` DISABLE KEYS */;
INSERT INTO `cyclone_status` VALUES (1,'Low Intensity','Northeast Pacific',0),(2,'Tropical Depression','Northeast Pacific',0),(3,'Tropical Storm','Northeast Pacific',0),(4,'Hurricane','Northeast Pacific',4),(5,'Hurricane','Northeast Pacific',4),(6,'Hurricane','Northeast Pacific',2),(7,'Tropical Storm','Northeast Pacific',0),(8,'Tropical Depression','Northeast Pacific',0),(9,'Low Intensity','Northeast Pacific',0),(10,'Low Intensity','Northeast Pacific',0),(11,'Tropical Storm','Northeast Pacific',0),(12,'Tropical Depression','Northeast Pacific',0),(13,'Tropical Depression','Northeast Pacific',0),(14,'Tropical Storm','Northeast Pacific',0),(15,'Hurricane','Northeast Pacific',1),(16,'Hurricane','Northeast Pacific',4),(17,'Hurricane','Northeast Pacific',2),(18,'Tropical Storm','Northeast Pacific',0),(19,'Low Intensity','Northeast Pacific',0),(20,'Low Intensity','Northeast Pacific',0),(21,'Low Intensity','Northeast Pacific',0),(22,'Low Intensity','Northeast Pacific',0),(23,'Low Intensity','Northeast Pacific',0),(24,'Tropical Depression','Northeast Pacific',0),(25,'Tropical Depression','Northeast Pacific',0),(26,'Tropical Storm','Northeast Pacific',0),(27,'Tropical Storm','Northeast Pacific',0),(28,'Tropical Storm','Northeast Pacific',0),(29,'Tropical Storm','Northeast Pacific',0),(30,'Tropical Storm','Northeast Pacific',0),(31,'Low Intensity','Northeast Pacific',0),(32,'Low Intensity','Northeast Pacific',0),(33,'Low Intensity','Northeast Pacific',0),(34,'Low Intensity','Northeast Pacific',0),(35,'Low Intensity','Northeast Pacific',0),(36,'Tropical Storm','Northeast Pacific',0),(37,'Tropical Storm','Northeast Pacific',0),(38,'Low Intensity','Northeast Pacific',0),(39,'Low Intensity','Northeast Pacific',0),(40,'Tropical Depression','Northeast Pacific',0),(41,'Tropical Storm','Northeast Pacific',0),(42,'Tropical Depression','Northeast Pacific',0),(43,'Low Intensity','North Central Pacific',0),(44,'Tropical Storm','North Central Pacific',0),(45,'Low Intensity','North Central Pacific',0),(46,'Low Intensity','Northeast Pacific',0),(47,'Low Intensity','Northeast Pacific',0),(48,'Low Intensity','Northeast Pacific',0),(49,'Tropical Storm','Northeast Pacific',0),(50,'Tropical Depression','Northeast Pacific',0),(51,'Tropical Depression','Northeast Pacific',0),(52,'Low Intensity','Northeast Pacific',0),(53,'Low Intensity','Northeast Pacific',0),(54,'Tropical Storm','Northeast Pacific',0),(55,'Tropical Depression','Northeast Pacific',0),(56,'Low Intensity','Northeast Pacific',0),(57,'Tropical Storm','Northeast Pacific',0),(58,'Tropical Depression','Northeast Pacific',0),(59,'Tropical Depression','Northeast Pacific',0),(60,'Tropical Storm','Northeast Pacific',0),(61,'Hurricane','Northeast Pacific',1),(62,'Hurricane','Northeast Pacific',5),(63,'Hurricane','Northeast Pacific',4),(64,'Hurricane','Northeast Pacific',3),(65,'Hurricane','Northeast Pacific',1),(66,'Tropical Storm','Northeast Pacific',0),(67,'Tropical Depression','Northeast Pacific',0),(68,'Subtropical Depression','Northeast Pacific',0),(69,'Tropical Depression','Northeast Pacific',0),(70,'Tropical Storm','Northeast Pacific',0),(71,'Tropical Storm','Northeast Pacific',0),(72,'Low Intensity','Northeast Pacific',0),(73,'Low Intensity','Northeast Pacific',0),(74,'Low Intensity','Northeast Pacific',0),(75,'Low Intensity','Northeast Pacific',0),(76,'Tropical Depression','Northeast Pacific',0),(77,'Tropical Storm','Northeast Pacific',0),(78,'Hurricane','Northeast Pacific',1),(79,'Hurricane','Northeast Pacific',3),(80,'Hurricane','Northeast Pacific',4),(81,'Hurricane','Northeast Pacific',3),(82,'Hurricane','Northeast Pacific',1),(83,'Hurricane','Northeast Pacific',1),(84,'Tropical Storm','Northeast Pacific',0),(85,'Low Intensity','Northeast Pacific',0),(86,'Low Intensity','Northeast Pacific',0),(87,'Low Intensity','Northeast Pacific',0),(88,'Low Intensity','Northeast Pacific',0),(89,'Tropical Storm','Northeast Pacific',0),(90,'Tropical Storm','Northeast Pacific',0),(91,'Hurricane','Northeast Pacific',1),(92,'Hurricane','Northeast Pacific',2),(93,'Hurricane','Northeast Pacific',3),(94,'Hurricane','Northeast Pacific',2),(95,'Hurricane','Northeast Pacific',1),(96,'Hurricane','Northeast Pacific',1),(97,'Tropical Storm','Northeast Pacific',0),(98,'Hurricane','Northeast Pacific',1),(99,'Tropical Storm','Northeast Pacific',0),(100,'Tropical Depression','Northeast Pacific',0),(101,'Low Intensity','Northeast Pacific',0),(102,'Low Intensity','Northeast Pacific',0),(103,'Low Intensity','Northeast Pacific',0),(104,'Low Intensity','Northeast Pacific',0),(105,'Tropical Storm','Northeast Pacific',0),(106,'Tropical Storm','Northeast Pacific',0),(107,'Tropical Storm','Northeast Pacific',0),(108,'Tropical Storm','Northeast Pacific',0),(109,'Tropical Storm','Northeast Pacific',0),(110,'Tropical Storm','Northeast Pacific',0),(111,'Tropical Storm','Northeast Pacific',0),(112,'Tropical Storm','Northeast Pacific',0),(113,'Tropical Storm','Northeast Pacific',0),(114,'Tropical Storm','Northeast Pacific',0),(115,'Hurricane','Northeast Pacific',1),(116,'Tropical Storm','Northeast Pacific',0),(117,'Tropical Depression','Northeast Pacific',0),(118,'Tropical Depression','Northeast Pacific',0),(119,'Low Intensity','Northeast Pacific',0),(120,'Low Intensity','Northeast Pacific',0),(121,'Tropical Depression','Northeast Pacific',0),(122,'Tropical Depression','Northeast Pacific',0),(123,'Tropical Storm','Northeast Pacific',0),(124,'Tropical Storm','Northeast Pacific',0),(125,'Hurricane','Northeast Pacific',1),(126,'Tropical Storm','Northeast Pacific',0),(127,'Tropical Storm','Northeast Pacific',0),(128,'Low Intensity','Northeast Pacific',0),(129,'Low Intensity','Northeast Pacific',0),(130,'Low Intensity','Northeast Pacific',0),(131,'Low Intensity','Northeast Pacific',0),(132,'Low Intensity','Northeast Pacific',0),(133,'Tropical Storm','Northeast Pacific',0),(134,'Hurricane','Northeast Pacific',1),(135,'Hurricane','Northeast Pacific',4),(136,'Hurricane','Northeast Pacific',4),(137,'Hurricane','Northeast Pacific',2),(138,'Hurricane','Northeast Pacific',1),(139,'Tropical Storm','Northeast Pacific',0),(140,'Low Intensity','Northeast Pacific',0),(141,'Low Intensity','Northeast Pacific',0),(142,'Low Intensity','Northeast Pacific',0),(143,'Low Intensity','Northeast Pacific',0),(144,'Low Intensity','Northeast Pacific',0),(145,'Tropical Storm','Northeast Pacific',0),(146,'Tropical Storm','Northeast Pacific',0),(147,'Hurricane','Northeast Pacific',1),(148,'Hurricane','Northeast Pacific',1),(149,'Hurricane','Northeast Pacific',3),(150,'Tropical Storm','Northeast Pacific',0),(151,'Low Intensity','Northeast Pacific',0),(152,'Low Intensity','Northeast Pacific',0),(153,'Low Intensity','Northeast Pacific',0),(154,'Low Intensity','Northeast Pacific',0),(155,'Low Intensity','Northeast Pacific',0),(156,'Tropical Storm','Northeast Pacific',0),(157,'Tropical Storm','Northeast Pacific',0),(158,'Tropical Storm','Northeast Pacific',0),(159,'Hurricane','Northeast Pacific',1),(160,'Hurricane','Northeast Pacific',4),(161,'Hurricane','Northeast Pacific',2),(162,'Tropical Storm','Northeast Pacific',0),(163,'Tropical Storm','Northeast Pacific',0),(164,'Tropical Depression','Northeast Pacific',0),(165,'Low Intensity','Northeast Pacific',0),(166,'Tropical Depression','Northeast Pacific',0),(167,'Tropical Depression','Northeast Pacific',0),(168,'Tropical Depression','Northeast Pacific',0),(169,'Tropical Depression','Northeast Pacific',0),(170,'Low Intensity','Northeast Pacific',0),(171,'Low Intensity','Northeast Pacific',0),(172,'Tropical Storm','Northeast Pacific',0),(173,'Tropical Storm','Northeast Pacific',0),(174,'Hurricane','Northeast Pacific',1),(175,'Tropical Storm','Northeast Pacific',0),(176,'Tropical Storm','Northeast Pacific',0),(177,'Tropical Storm','Northeast Pacific',0),(178,'Low Intensity','Northeast Pacific',0),(179,'Low Intensity','Northeast Pacific',0),(180,'Low Intensity','Northeast Pacific',0),(181,'Low Intensity','Northeast Pacific',0),(182,'Low Intensity','Northeast Pacific',0),(183,'Tropical Depression','Northeast Pacific',0),(184,'Tropical Storm','Northeast Pacific',0),(185,'Tropical Storm','Northeast Pacific',0),(186,'Tropical Storm','Northeast Pacific',0),(187,'Hurricane','Northeast Pacific',1),(188,'Tropical Storm','Northeast Pacific',0),(189,'Low Intensity','Northeast Pacific',0),(190,'Low Intensity','Northeast Pacific',0),(191,'Low Intensity','Northeast Pacific',0),(192,'Low Intensity','Northeast Pacific',0),(193,'Low Intensity','Northeast Pacific',0),(194,'Low Intensity','Northeast Pacific',0),(195,'Tropical Storm','Northeast Pacific',0),(196,'Tropical Storm','Northeast Pacific',0),(197,'Hurricane','Northeast Pacific',2),(198,'Hurricane','Northeast Pacific',2),(199,'Tropical Storm','Northeast Pacific',0),(200,'Tropical Storm','Northeast Pacific',0),(201,'Low Intensity','Northeast Pacific',0),(202,'Low Intensity','Northeast Pacific',0),(203,'Low Intensity','North Central Pacific',0),(204,'Tropical Storm','North Central Pacific',0),(205,'Tropical Storm','North Central Pacific',0),(206,'Tropical Storm','North Central Pacific',0),(207,'Tropical Storm','North Central Pacific',0),(208,'Hurricane','North Central Pacific',1),(209,'Hurricane','North Central Pacific',1),(210,'Tropical Storm','North Central Pacific',0),(211,'Tropical Storm','North Central Pacific',0),(212,'Tropical Storm','North Central Pacific',0),(213,'Tropical Storm','North Central Pacific',0),(214,'Tropical Storm','North Central Pacific',0),(215,'Hurricane','North Central Pacific',1),(216,'Extratropical','North Central Pacific',0),(217,'Tropical Depression','Northeast Pacific',0),(218,'Tropical Storm','Northeast Pacific',0),(219,'Tropical Depression','Northeast Pacific',0),(220,'Low Intensity','Northeast Pacific',0),(221,'Tropical Depression','Northeast Pacific',0),(222,'Tropical Storm','Northeast Pacific',0),(223,'Tropical Storm','Northeast Pacific',0),(224,'Hurricane','Northeast Pacific',1),(225,'Hurricane','Northeast Pacific',2),(226,'Hurricane','Northeast Pacific',2),(227,'Tropical Depression','Northeast Pacific',0),(228,'Low Intensity','Atlantic',0),(229,'Low Intensity','Atlantic',0),(230,'Low Intensity','Atlantic',0),(231,'Tropical Storm','Atlantic',0),(232,'Tropical Storm','Atlantic',0),(233,'Hurricane','Atlantic',1),(234,'Hurricane','Atlantic',1),(235,'Extratropical','Atlantic',0),(236,'Extratropical','Atlantic',0),(237,'Extratropical','Atlantic',0),(238,'Extratropical','Atlantic',0),(239,'Extratropical','Atlantic',0),(240,'Low Intensity','Atlantic',0),(241,'Low Intensity','Atlantic',0),(242,'Tropical Depression','Atlantic',0),(243,'Tropical Depression','Atlantic',0),(244,'Tropical Depression','Atlantic',0),(245,'Low Intensity','Atlantic',0),(246,'Low Intensity','Atlantic',0),(247,'Low Intensity','Atlantic',0),(248,'Tropical Storm','Atlantic',0),(249,'Tropical Storm','Atlantic',0),(250,'Tropical Storm','Atlantic',0),(251,'Hurricane','Atlantic',1),(252,'Tropical Storm','Atlantic',0),(253,'Tropical Storm','Atlantic',0),(254,'Extratropical','Atlantic',0),(255,'Extratropical','Atlantic',0),(256,'Extratropical','Atlantic',0),(257,'Tropical Depression','Atlantic',0),(258,'Tropical Storm','Atlantic',0),(259,'Tropical Storm','Atlantic',0),(260,'Hurricane','Atlantic',1),(261,'Hurricane','Atlantic',1),(262,'Hurricane','Atlantic',1),(263,'Extratropical','Atlantic',0),(264,'Extratropical','Atlantic',0),(265,'Extratropical','Atlantic',0),(266,'Extratropical','Atlantic',0),(267,'Extratropical','Atlantic',0),(268,'Low Intensity','Atlantic',0),(269,'Tropical Storm','Atlantic',0),(270,'Low Intensity','Atlantic',0),(271,'Low Intensity','Atlantic',0),(272,'Low Intensity','Atlantic',0),(273,'Tropical Depression','Atlantic',0),(274,'Tropical Storm','Atlantic',0),(275,'Tropical Storm','Atlantic',0),(276,'Hurricane','Atlantic',1),(277,'Hurricane','Atlantic',2),(278,'Hurricane','Atlantic',3),(279,'Hurricane','Atlantic',1),(280,'Hurricane','Atlantic',1),(281,'Tropical Storm','Atlantic',0),(282,'Low Intensity','Atlantic',0),(283,'Low Intensity','Atlantic',0),(284,'Low Intensity','Atlantic',0),(285,'Subtropical Storm','Atlantic',0),(286,'Tropical Storm','Atlantic',0),(287,'Hurricane','Atlantic',1),(288,'Tropical Storm','Atlantic',0),(289,'Low Intensity','Atlantic',0),(290,'Tropical Storm','Atlantic',0),(291,'Hurricane','Atlantic',1),(292,'Hurricane','Atlantic',2),(293,'Hurricane','Atlantic',4),(294,'Hurricane','Atlantic',4),(295,'Hurricane','Atlantic',3),(296,'Hurricane','Atlantic',2),(297,'Hurricane','Atlantic',1),(298,'Extratropical','Atlantic',0),(299,'Low Intensity','Atlantic',0),(300,'Tropical Depression','Atlantic',0),(301,'Low Intensity','Atlantic',0),(302,'Low Intensity','Atlantic',0),(303,'Disturbance','Atlantic',0),(304,'Low Intensity','Atlantic',0),(305,'Tropical Storm','Atlantic',0),(306,'Low Intensity','Atlantic',0),(307,'Low Intensity','Atlantic',0);
/*!40000 ALTER TABLE `cyclone_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyclones`
--

DROP TABLE IF EXISTS `cyclones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cyclones` (
  `cyclone_id` int(11) NOT NULL,
  `cyclone_name` varchar(50) NOT NULL,
  `destruction_id` int(11) NOT NULL,
  PRIMARY KEY (`cyclone_id`),
  KEY `destruction_id_idx` (`destruction_id`),
  CONSTRAINT `destruction_id` FOREIGN KEY (`destruction_id`) REFERENCES `destruction` (`destruction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyclones`
--

LOCK TABLES `cyclones` WRITE;
/*!40000 ALTER TABLE `cyclones` DISABLE KEYS */;
INSERT INTO `cyclones` VALUES (1,'AMANDA',1),(2,'BORIS',2),(3,'CRISTINA',3),(4,'DOUGLAS',4),(5,'ELIDA',5),(6,'FAUSTO',6),(7,'WALI',7),(8,'GENEVIEVE',8),(9,'HERNAN',9),(10,'ISELLE',10),(11,'JULIO',11),(12,'KARINA',12),(13,'LOWELL',13),(14,'MARIE',14),(15,'NORBERT',15),(16,'ODILE',16),(17,'SIXTEEN',17),(18,'POLO',18),(19,'RACHEL',19),(20,'SIMON',20),(21,'ANA',21),(22,'TRUDY',22),(23,'VANCE',23),(24,'ARTHUR',24),(25,'TWO',25),(26,'BERTHA',26),(27,'CRISTOBAL',27),(28,'DOLLY',28),(29,'EDOUARD',29),(30,'FAY',30),(31,'GONZALO',31),(32,'HANNA',32);
/*!40000 ALTER TABLE `cyclones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destruction`
--

DROP TABLE IF EXISTS `destruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `destruction` (
  `destruction_id` int(11) NOT NULL,
  `est_damage_cost_in_million_USD` int(11) DEFAULT NULL,
  `casualty_id` int(11) NOT NULL,
  PRIMARY KEY (`destruction_id`),
  UNIQUE KEY `destruction_id_UNIQUE` (`destruction_id`),
  KEY `casualty_id_idx` (`casualty_id`),
  CONSTRAINT `casualty_id` FOREIGN KEY (`casualty_id`) REFERENCES `casualties` (`casualty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destruction`
--

LOCK TABLES `destruction` WRITE;
/*!40000 ALTER TABLE `destruction` DISABLE KEYS */;
INSERT INTO `destruction` VALUES (1,8,1),(2,47,2),(3,2,3),(4,1,4),(5,3,5),(6,1,6),(7,4,7),(8,1,8),(9,1,9),(10,148,10),(11,2,11),(12,1,12),(13,1,13),(14,20,14),(15,28,15),(16,1260,16),(17,2,17),(18,8,18),(19,2,19),(20,1,20),(21,5,21),(22,1,22),(23,9,23),(24,17,24),(25,1,25),(26,7,26),(27,10,27),(28,7,28),(29,6,29),(30,4,30),(31,316,31),(32,3,32);
/*!40000 ALTER TABLE `destruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `high_wind`
--

DROP TABLE IF EXISTS `high_wind`;
/*!50001 DROP VIEW IF EXISTS `high_wind`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `high_wind` AS SELECT 
 1 AS `Cyclone Name`,
 1 AS `Wind Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `includedcasualties`
--

DROP TABLE IF EXISTS `includedcasualties`;
/*!50001 DROP VIEW IF EXISTS `includedcasualties`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `includedcasualties` AS SELECT 
 1 AS `Cyclone Name`,
 1 AS `Casualties`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `latitude` varchar(6) NOT NULL,
  `longitude` varchar(6) NOT NULL,
  `landfall` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'10.2N','106.8W',0),(2,'10.7N','108.1W',0),(3,'11.2N','109.6W',0),(4,'11.7N','110.9W',0),(5,'12.9N','111.6W',0),(6,'14.2N','112.4W',0),(7,'14.9N','112.2W',0),(8,'16.2N','110.2W',0),(9,'11.7N','93.5W',0),(10,'12.8N','93.8W',0),(11,'14.4N','94.2W',0),(12,'15.8N','94.1W',0),(13,'15.2N','101.5W',0),(14,'15.4N','102.6W',0),(15,'15.4N','104.4W',0),(16,'16.4N','106.8W',0),(17,'17.8N','109.5W',0),(18,'19.3N','111.2W',0),(19,'20.1N','113.0W',0),(20,'21.6N','115.6W',0),(21,'22.8N','117.6W',0),(22,'22.8N','117.0W',0),(23,'22.2N','116.6W',0),(24,'14.2N','105.5W',0),(25,'15.8N','109.8W',0),(26,'17.2N','113.7W',0),(27,'18.9N','115.5W',0),(28,'19.7N','116.0W',0),(29,'20.2N','116.4W',0),(30,'21.4N','117.8W',0),(31,'23.4N','119.8W',0),(32,'25.8N','122.8W',0),(33,'26.8N','125.0W',0),(34,'26.9N','126.3W',0),(35,'26.9N','126.6W',0),(36,'17.1N','103.4W',0),(37,'17.4N','104.2W',0),(38,'16.9N','102.6W',0),(39,'10.7N','114.0W',0),(40,'9.5N','118.1W',0),(41,'9.6N','122.8W',0),(42,'11.3N','127.0W',0),(43,'12.2N','140.2W',0),(44,'15.1N','142.6W',0),(45,'16.1N','144.4W',0),(46,'10.4N','121.4W',0),(47,'11.1N','125.6W',0),(48,'12.0N','130.6W',0),(49,'12.2N','135.0W',0),(50,'12.3N','136.8W',0),(51,'12.4N','140.9W',0),(52,'12.6N','145.5W',0),(53,'12.9N','147.4W',0),(54,'12.7N','148.9W',0),(55,'12.8N','150.3W',0),(56,'12.8N','152.4W',0),(57,'11.5N','155.6W',0),(58,'9.6N','159.5W',0),(59,'9.4N','165.0W',0),(60,'10.8N','170.7W',0),(61,'12.5N','176.3W',0),(62,'15.1N','178.7E',0),(63,'17.5N','175.9E',0),(64,'23.1N','177.0E',0),(65,'30.5N','173.3E',0),(66,'34.4N','168.3E',0),(67,'35.4N','165.5E',0),(68,'36.8N','164.8E',0),(69,'14.3N','106.6W',0),(70,'17.5N','110.6W',0),(71,'20.3N','115.3W',0),(72,'23.2N','120.4W',0),(73,'24.7N','123.9W',0),(74,'25.3N','125.9W',0),(75,'11.3N','117.9W',0),(76,'12.4N','121.8W',0),(77,'13.9N','125.2W',0),(78,'14.9N','128.8W',0),(79,'15.4N','132.3W',0),(80,'16.1N','136.1W',0),(81,'15.9N','139.1W',0),(82,'16.9N','143.8W',0),(83,'18.2N','149.8W',0),(84,'19.2N','155.4W',0),(85,'20.7N','161.2W',0),(86,'19.7N','165.8W',0),(87,'13.2N','111.9W',0),(88,'13.8N','114.8W',0),(89,'13.5N','119.2W',0),(90,'13.8N','124.0W',0),(91,'15.1N','129.7W',0),(92,'16.8N','135.6W',0),(93,'17.9N','141.2W',0),(94,'19.9N','146.8W',0),(95,'23.1N','151.7W',0),(96,'26.3N','154.7W',0),(97,'28.2N','156.9W',0),(98,'30.1N','158.9W',0),(99,'31.3N','158.4W',0),(100,'32.3N','157.5W',0),(101,'33.4N','158.7W',0),(102,'35.5N','159.2W',0),(103,'38.8N','158.5W',0),(104,'15.1N','105.0W',0),(105,'17.1N','110.6W',0),(106,'17.0N','115.6W',0),(107,'17.3N','119.7W',0),(108,'18.0N','123.5W',0),(109,'18.0N','127.8W',0),(110,'16.9N','131.9W',0),(111,'15.7N','134.1W',0),(112,'15.9N','136.4W',0),(113,'15.0N','136.9W',0),(114,'14.9N','135.7W',0),(115,'17.0N','134.3W',0),(116,'17.9N','131.7W',0),(117,'17.4N','128.2W',0),(118,'16.8N','127.3W',0),(119,'15.1N','125.3W',0),(120,'16.3N','123.1W',0),(121,'16.0N','114.9W',0),(122,'16.3N','117.3W',0),(123,'17.6N','119.4W',0),(124,'18.7N','121.2W',0),(125,'19.8N','121.8W',0),(126,'21.7N','123.8W',0),(127,'23.5N','126.2W',0),(128,'25.2N','127.9W',0),(129,'25.8N','130.3W',0),(130,'26.7N','133.5W',0),(131,'29.2N','137.6W',0),(132,'30.8N','142.2W',0),(133,'12.9N','101.8W',0),(134,'14.3N','106.1W',0),(135,'16.0N','110.8W',0),(136,'17.5N','114.3W',0),(137,'20.4N','118.4W',0),(138,'22.1N','123.2W',0),(139,'24.8N','128.5W',0),(140,'28.2N','132.8W',0),(141,'31.0N','134.5W',0),(142,'31.4N','137.1W',0),(143,'31.3N','138.8W',0),(144,'30.6N','140.1W',0),(145,'17.0N','106.5W',0),(146,'19.5N','108.1W',0),(147,'20.4N','110.2W',0),(148,'22.8N','111.6W',0),(149,'24.8N','113.8W',0),(150,'25.9N','116.7W',0),(151,'27.5N','118.5W',0),(152,'28.8N','118.2W',0),(153,'27.6N','117.5W',0),(154,'26.9N','117.7W',0),(155,'13.5N','100.1W',0),(156,'14.8N','102.8W',0),(157,'15.4N','104.1W',0),(158,'15.5N','104.7W',0),(159,'16.3N','105.6W',0),(160,'19.4N','107.7W',0),(161,'24.2N','110.9W',1),(162,'27.9N','113.1W',0),(163,'30.4N','113.4W',1),(164,'31.0N','112.0W',0),(165,'12.8N','117.4W',0),(166,'15.4N','119.7W',0),(167,'16.9N','119.5W',0),(168,'16.0N','117.5W',0),(169,'15.0N','114.7W',0),(170,'18.0N','110.5W',0),(171,'22.4N','108.8W',0),(172,'12.1N','99.1W',0),(173,'15.2N','102.3W',0),(174,'16.9N','105.2W',0),(175,'18.9N','107.2W',0),(176,'20.7N','108.6W',0),(177,'22.0N','111.0W',0),(178,'22.3N','114.2W',0),(179,'21.3N','115.7W',0),(180,'19.7N','116.2W',0),(181,'18.0N','118.2W',0),(182,'16.0N','120.8W',0),(183,'14.9N','105.0W',0),(184,'16.1N','109.1W',0),(185,'18.1N','113.8W',0),(186,'19.3N','116.0W',0),(187,'21.2N','117.2W',0),(188,'22.6N','117.5W',0),(189,'23.3N','117.5W',0),(190,'22.8N','117.3W',0),(191,'22.7N','117.1W',0),(192,'22.3N','117.6W',0),(193,'14.7N','100.1W',0),(194,'16.7N','103.2W',0),(195,'18.1N','106.6W',0),(196,'18.4N','109.3W',0),(197,'19.8N','113.4W',0),(198,'22.4N','117.0W',0),(199,'24.8N','117.6W',0),(200,'27.1N','116.8W',0),(201,'28.3N','114.6W',0),(202,'27.7N','113.4W',0),(203,'12.2N','141.9W',0),(204,'13.5N','143.3W',0),(205,'14.2N','146.1W',0),(206,'14.0N','149.7W',0),(207,'15.4N','153.7W',0),(208,'18.2N','157.7W',0),(209,'20.6N','159.6W',0),(210,'20.7N','162.7W',0),(211,'20.8N','165.4W',0),(212,'22.6N','167.1W',0),(213,'26.3N','169.1W',0),(214,'28.2N','169.9W',0),(215,'33.4N','164.6W',0),(216,'41.2N','150.2W',0),(217,'14.6N','98.8W',0),(218,'16.7N','98.7W',1),(219,'17.3N','98.2W',0),(220,'10.7N','99.1W',0),(221,'11.2N','100.3W',0),(222,'9.9N','100.7W',0),(223,'9.6N','103.0W',0),(224,'11.4N','107.1W',0),(225,'14.9N','110.6W',0),(226,'18.9N','109.5W',0),(227,'21.5N','107.3W',0),(228,'32.0N','78.2W',0),(229,'30.0N','77.2W',0),(230,'28.7N','78.4W',0),(231,'27.5N','79.2W',0),(232,'28.7N','79.0W',0),(233,'31.8N','78.8W',0),(234,'36.8N','74.4W',1),(235,'44.1N','66.5W',0),(236,'48.5N','60.2W',0),(237,'56.0N','54.7W',0),(238,'59.4N','56.1W',0),(239,'59.8N','55.7W',0),(240,'9.0N','29.0W',0),(241,'10.4N','34.4W',0),(242,'11.4N','41.6W',0),(243,'12.4N','47.2W',0),(244,'14.0N','55.0W',0),(245,'9.5N','38.6W',0),(246,'9.8N','44.7W',0),(247,'11.0N','51.4W',0),(248,'13.8N','58.1W',0),(249,'16.7N','65.9W',0),(250,'21.4N','71.6W',1),(251,'26.8N','73.6W',0),(252,'34.2N','72.7W',0),(253,'39.4N','64.1W',0),(254,'44.6N','52.5W',0),(255,'47.5N','39.4W',0),(256,'47.5N','15.0W',0),(257,'21.5N','72.2W',0),(258,'23.3N','73.0W',0),(259,'24.7N','72.7W',0),(260,'26.7N','71.8W',0),(261,'31.6N','72.2W',0),(262,'36.3N','67.1W',0),(263,'44.2N','49.0W',0),(264,'51.3N','36.2W',0),(265,'62.0N','26.0W',0),(266,'66.0N','17.0W',0),(267,'69.0N','15.0W',0),(268,'19.2N','92.3W',0),(269,'22.8N','95.6W',0),(270,'21.8N','98.8W',1),(271,'21.6N','101.0W',0),(272,'13.7N','33.2W',0),(273,'15.8N','36.5W',0),(274,'18.3N','42.3W',0),(275,'21.4N','46.4W',0),(276,'24.4N','50.3W',0),(277,'27.0N','55.1W',0),(278,'30.6N','57.8W',0),(279,'35.7N','54.5W',0),(280,'39.9N','44.1W',0),(281,'39.5N','38.1W',0),(282,'39.1N','34.4W',0),(283,'36.1N','30.2W',0),(284,'33.4N','30.7W',0),(285,'23.5N','63.3W',0),(286,'27.2N','65.3W',0),(287,'33.1N','63.9W',1),(288,'33.9N','59.0W',0),(289,'16.4N','54.9W',0),(290,'16.4N','57.9W',0),(291,'17.0N','61.5W',1),(292,'19.9N','64.8W',0),(293,'23.1N','67.7W',0),(294,'25.6N','68.7W',0),(295,'29.8N','66.5W',0),(296,'35.6N','62.6W',1),(297,'47.8N','50.1W',0),(298,'53.9N','30.9W',0),(299,'19.5N','94.2W',0),(300,'19.4N','92.4W',0),(301,'18.6N','90.5W',0),(302,'18.4N','87.7W',0),(303,'18.3N','84.5W',0),(304,'16.0N','81.8W',0),(305,'14.9N','83.0W',1),(306,'15.9N','85.9W',0),(307,'16.9N','89.6W',0);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progression`
--

DROP TABLE IF EXISTS `progression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `progression` (
  `progression_id` int(11) NOT NULL,
  `cyclone_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `wind_details_id` int(11) NOT NULL,
  `cyclone_date` date NOT NULL,
  PRIMARY KEY (`progression_id`),
  UNIQUE KEY `progression_id_UNIQUE` (`progression_id`),
  KEY `cyclone_id_idx` (`cyclone_id`),
  KEY `status_id_idx` (`status_id`),
  KEY `location_id_idx` (`location_id`),
  KEY `wind_details_id_idx` (`wind_details_id`),
  CONSTRAINT `cyclone_id` FOREIGN KEY (`cyclone_id`) REFERENCES `cyclones` (`cyclone_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `cyclone_status` (`status_id`),
  CONSTRAINT `wind_details_id` FOREIGN KEY (`wind_details_id`) REFERENCES `wind_details` (`wind_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progression`
--

LOCK TABLES `progression` WRITE;
/*!40000 ALTER TABLE `progression` DISABLE KEYS */;
INSERT INTO `progression` VALUES (1,1,1,1,1,'2014-05-22'),(2,1,2,2,2,'2014-05-23'),(3,1,3,3,3,'2014-05-24'),(4,1,4,4,4,'2014-05-25'),(5,1,5,5,5,'2014-05-26'),(6,1,6,6,6,'2014-05-27'),(7,1,7,7,7,'2014-05-28'),(8,1,8,8,8,'2014-05-29'),(9,2,9,9,9,'2014-06-01'),(10,2,10,10,10,'2014-06-02'),(11,2,11,11,11,'2014-06-03'),(12,2,12,12,12,'2014-06-04'),(13,3,13,13,13,'2014-06-09'),(14,3,14,14,14,'2014-06-10'),(15,3,15,15,15,'2014-06-11'),(16,3,16,16,16,'2014-06-12'),(17,3,17,17,17,'2014-06-13'),(18,3,18,18,18,'2014-06-14'),(19,3,19,19,19,'2014-06-15'),(20,3,20,20,20,'2014-06-16'),(21,3,21,21,21,'2014-06-17'),(22,3,22,22,22,'2014-06-18'),(23,3,23,23,23,'2014-06-19'),(24,4,24,24,24,'2014-06-28'),(25,4,25,25,25,'2014-06-29'),(26,4,26,26,26,'2014-06-30'),(27,4,27,27,27,'2014-07-01'),(28,4,28,28,28,'2014-07-02'),(29,4,29,29,29,'2014-07-03'),(30,4,30,30,30,'2014-07-04'),(31,4,31,31,31,'2014-07-05'),(32,4,32,32,32,'2014-07-06'),(33,4,33,33,33,'2014-07-07'),(34,4,34,34,34,'2014-07-08'),(35,4,35,35,35,'2014-07-09'),(36,5,36,36,36,'2014-06-30'),(37,5,37,37,37,'2014-07-01'),(38,5,38,38,38,'2014-07-02'),(39,6,39,39,39,'2014-07-06'),(40,6,40,40,40,'2014-07-07'),(41,6,41,41,41,'2014-07-08'),(42,6,42,42,42,'2014-07-09'),(43,7,43,43,43,'2014-07-17'),(44,7,44,44,44,'2014-07-18'),(45,7,45,45,45,'2014-07-19'),(46,8,46,46,46,'2014-07-22'),(47,8,47,47,47,'2014-07-23'),(48,8,48,48,48,'2014-07-24'),(49,8,49,49,49,'2014-07-25'),(50,8,50,50,50,'2014-07-26'),(51,8,51,51,51,'2014-07-27'),(52,8,52,52,52,'2014-07-28'),(53,8,53,53,53,'2014-07-29'),(54,8,54,54,54,'2014-07-30'),(55,8,55,55,55,'2014-07-31'),(56,8,56,56,56,'2014-08-01'),(57,8,57,57,57,'2014-08-02'),(58,8,58,58,58,'2014-08-03'),(59,8,59,59,59,'2014-08-04'),(60,8,60,60,60,'2014-08-05'),(61,8,61,61,61,'2014-08-06'),(62,8,62,62,62,'2014-08-07'),(63,8,63,63,63,'2014-08-08'),(64,8,64,64,64,'2014-08-09'),(65,8,65,65,65,'2014-08-10'),(66,8,66,66,66,'2014-08-11'),(67,8,67,67,67,'2014-08-12'),(68,8,68,68,68,'2014-08-13'),(69,9,69,69,69,'2014-07-26'),(70,9,70,70,70,'2014-07-27'),(71,9,71,71,71,'2014-07-28'),(72,9,72,72,72,'2014-07-29'),(73,9,73,73,73,'2014-07-30'),(74,9,74,74,74,'2014-07-31'),(75,10,75,75,75,'2014-07-30'),(76,10,76,76,76,'2014-07-31'),(77,10,77,77,77,'2014-08-01'),(78,10,78,78,78,'2014-08-02'),(79,10,79,79,79,'2014-08-03'),(80,10,80,80,80,'2014-08-04'),(81,10,81,81,81,'2014-08-05'),(82,10,82,82,82,'2014-08-06'),(83,10,83,83,83,'2014-08-07'),(84,10,84,84,84,'2014-08-08'),(85,10,85,85,85,'2014-08-09'),(86,10,86,86,86,'2014-08-10'),(87,11,87,87,87,'2014-08-02'),(88,11,88,88,88,'2014-08-03'),(89,11,89,89,89,'2014-08-04'),(90,11,90,90,90,'2014-08-05'),(91,11,91,91,91,'2014-08-06'),(92,11,92,92,92,'2014-08-07'),(93,11,93,93,93,'2014-08-08'),(94,11,94,94,94,'2014-08-09'),(95,11,95,95,95,'2014-08-10'),(96,11,96,96,96,'2014-08-11'),(97,11,97,97,97,'2014-08-12'),(98,11,98,98,98,'2014-08-13'),(99,11,99,99,99,'2014-08-14'),(100,11,100,100,100,'2014-08-15'),(101,11,101,101,101,'2014-08-16'),(102,11,102,102,102,'2014-08-17'),(103,11,103,103,103,'2014-08-18'),(104,12,104,104,104,'2014-08-12'),(105,12,105,105,105,'2014-08-13'),(106,12,106,106,106,'2014-08-14'),(107,12,107,107,107,'2014-08-15'),(108,12,108,108,108,'2014-08-16'),(109,12,109,109,109,'2014-08-17'),(110,12,110,110,110,'2014-08-18'),(111,12,111,111,111,'2014-08-19'),(112,12,112,112,112,'2014-08-20'),(113,12,113,113,113,'2014-08-21'),(114,12,114,114,114,'2014-08-22'),(115,12,115,115,115,'2014-08-23'),(116,12,116,116,116,'2014-08-24'),(117,12,117,117,117,'2014-08-25'),(118,12,118,118,118,'2014-08-26'),(119,12,119,119,119,'2014-08-27'),(120,12,120,120,120,'2014-08-28'),(121,13,121,121,121,'2014-08-17'),(122,13,122,122,122,'2014-08-18'),(123,13,123,123,123,'2014-08-19'),(124,13,124,124,124,'2014-08-20'),(125,13,125,125,125,'2014-08-21'),(126,13,126,126,126,'2014-08-22'),(127,13,127,127,127,'2014-08-23'),(128,13,128,128,128,'2014-08-24'),(129,13,129,129,129,'2014-08-25'),(130,13,130,130,130,'2014-08-26'),(131,13,131,131,131,'2014-08-27'),(132,13,132,132,132,'2014-08-28'),(133,14,133,133,133,'2014-08-22'),(134,14,134,134,134,'2014-08-23'),(135,14,135,135,135,'2014-08-24'),(136,14,136,136,136,'2014-08-25'),(137,14,137,137,137,'2014-08-26'),(138,14,138,138,138,'2014-08-27'),(139,14,139,139,139,'2014-08-28'),(140,14,140,140,140,'2014-08-29'),(141,14,141,141,141,'2014-08-30'),(142,14,142,142,142,'2014-08-31'),(143,14,143,143,143,'2014-09-01'),(144,14,144,144,144,'2014-09-02'),(145,15,145,145,145,'2014-09-02'),(146,15,146,146,146,'2014-09-03'),(147,15,147,147,147,'2014-09-04'),(148,15,148,148,148,'2014-09-05'),(149,15,149,149,149,'2014-09-06'),(150,15,150,150,150,'2014-09-07'),(151,15,151,151,151,'2014-09-08'),(152,15,152,152,152,'2014-09-09'),(153,15,153,153,153,'2014-09-10'),(154,15,154,154,154,'2014-09-11'),(155,16,155,155,155,'2014-09-09'),(156,16,156,156,156,'2014-09-10'),(157,16,157,157,157,'2014-09-11'),(158,16,158,158,158,'2014-09-12'),(159,16,159,159,159,'2014-09-13'),(160,16,160,160,160,'2014-09-14'),(161,16,161,161,161,'2014-09-15'),(162,16,162,162,162,'2014-09-16'),(163,16,163,163,163,'2014-09-17'),(164,16,164,164,164,'2014-09-18'),(165,17,165,165,165,'2014-09-10'),(166,17,166,166,166,'2014-09-11'),(167,17,167,167,167,'2014-09-12'),(168,17,168,168,168,'2014-09-13'),(169,17,169,169,169,'2014-09-14'),(170,17,170,170,170,'2014-09-15'),(171,17,171,171,171,'2014-09-16'),(172,18,172,172,172,'2014-09-16'),(173,18,173,173,173,'2014-09-17'),(174,18,174,174,174,'2014-09-18'),(175,18,175,175,175,'2014-09-19'),(176,18,176,176,176,'2014-09-20'),(177,18,177,177,177,'2014-09-21'),(178,18,178,178,178,'2014-09-22'),(179,18,179,179,179,'2014-09-23'),(180,18,180,180,180,'2014-09-24'),(181,18,181,181,181,'2014-09-25'),(182,18,182,182,182,'2014-09-26'),(183,19,183,183,183,'2014-09-24'),(184,19,184,184,184,'2014-09-25'),(185,19,185,185,185,'2014-09-26'),(186,19,186,186,186,'2014-09-27'),(187,19,187,187,187,'2014-09-28'),(188,19,188,188,188,'2014-09-29'),(189,19,189,189,189,'2014-09-30'),(190,19,190,190,190,'2014-10-01'),(191,19,191,191,191,'2014-10-02'),(192,19,192,192,192,'2014-10-03'),(193,20,193,193,193,'2014-09-30'),(194,20,194,194,194,'2014-10-01'),(195,20,195,195,195,'2014-10-02'),(196,20,196,196,196,'2014-10-03'),(197,20,197,197,197,'2014-10-04'),(198,20,198,198,198,'2014-10-05'),(199,20,199,199,199,'2014-10-06'),(200,20,200,200,200,'2014-10-07'),(201,20,201,201,201,'2014-10-08'),(202,20,202,202,202,'2014-10-09'),(203,21,203,203,203,'2014-10-13'),(204,21,204,204,204,'2014-10-14'),(205,21,205,205,205,'2014-10-15'),(206,21,206,206,206,'2014-10-16'),(207,21,207,207,207,'2014-10-17'),(208,21,208,208,208,'2014-10-18'),(209,21,209,209,209,'2014-10-19'),(210,21,210,210,210,'2014-10-20'),(211,21,211,211,211,'2014-10-21'),(212,21,212,212,212,'2014-10-22'),(213,21,213,213,213,'2014-10-23'),(214,21,214,214,214,'2014-10-24'),(215,21,215,215,215,'2014-10-25'),(216,21,216,216,216,'2014-10-26'),(217,22,217,217,217,'2014-10-17'),(218,22,218,218,218,'2014-10-18'),(219,22,219,219,219,'2014-10-19'),(220,23,220,220,220,'2014-10-29'),(221,23,221,221,221,'2014-10-30'),(222,23,222,222,222,'2014-10-31'),(223,23,223,223,223,'2014-11-01'),(224,23,224,224,224,'2014-11-02'),(225,23,225,225,225,'2014-11-03'),(226,23,226,226,226,'2014-11-04'),(227,23,227,227,227,'2014-11-05'),(228,24,228,228,228,'2014-06-28'),(229,24,229,229,229,'2014-06-29'),(230,24,230,230,230,'2014-06-30'),(231,24,231,231,231,'2014-07-01'),(232,24,232,232,232,'2014-07-02'),(233,24,233,233,233,'2014-07-03'),(234,24,234,234,234,'2014-07-04'),(235,24,235,235,235,'2014-07-05'),(236,24,236,236,236,'2014-07-06'),(237,24,237,237,237,'2014-07-07'),(238,24,238,238,238,'2014-07-08'),(239,24,239,239,239,'2014-07-09'),(240,25,240,240,240,'2014-07-19'),(241,25,241,241,241,'2014-07-20'),(242,25,242,242,242,'2014-07-21'),(243,25,243,243,243,'2014-07-22'),(244,25,244,244,244,'2014-07-23'),(245,26,245,245,245,'2014-07-29'),(246,26,246,246,246,'2014-07-30'),(247,26,247,247,247,'2014-07-31'),(248,26,248,248,248,'2014-08-01'),(249,26,249,249,249,'2014-08-02'),(250,26,250,250,250,'2014-08-03'),(251,26,251,251,251,'2014-08-04'),(252,26,252,252,252,'2014-08-05'),(253,26,253,253,253,'2014-08-06'),(254,26,254,254,254,'2014-08-07'),(255,26,255,255,255,'2014-08-08'),(256,26,256,256,256,'2014-08-09'),(257,27,257,257,257,'2014-08-23'),(258,27,258,258,258,'2014-08-24'),(259,27,259,259,259,'2014-08-25'),(260,27,260,260,260,'2014-08-26'),(261,27,261,261,261,'2014-08-27'),(262,27,262,262,262,'2014-08-28'),(263,27,263,263,263,'2014-08-29'),(264,27,264,264,264,'2014-08-30'),(265,27,265,265,265,'2014-08-31'),(266,27,266,266,266,'2014-09-01'),(267,27,267,267,267,'2014-09-02'),(268,28,268,268,268,'2014-09-01'),(269,28,269,269,269,'2014-09-02'),(270,28,270,270,270,'2014-09-03'),(271,28,271,271,271,'2014-09-04'),(272,29,272,272,272,'2014-09-10'),(273,29,273,273,273,'2014-09-11'),(274,29,274,274,274,'2014-09-12'),(275,29,275,275,275,'2014-09-13'),(276,29,276,276,276,'2014-09-14'),(277,29,277,277,277,'2014-09-15'),(278,29,278,278,278,'2014-09-16'),(279,29,279,279,279,'2014-09-17'),(280,29,280,280,280,'2014-09-18'),(281,29,281,281,281,'2014-09-19'),(282,29,282,282,282,'2014-09-20'),(283,29,283,283,283,'2014-09-21'),(284,29,284,284,284,'2014-09-22'),(285,30,285,285,285,'2014-10-10'),(286,30,286,286,286,'2014-10-11'),(287,30,287,287,287,'2014-10-12'),(288,30,288,288,288,'2014-10-13'),(289,31,289,289,289,'2014-10-11'),(290,31,290,290,290,'2014-10-12'),(291,31,291,291,291,'2014-10-13'),(292,31,292,292,292,'2014-10-14'),(293,31,293,293,293,'2014-10-15'),(294,31,294,294,294,'2014-10-16'),(295,31,295,295,295,'2014-10-17'),(296,31,296,296,296,'2014-10-18'),(297,31,297,297,297,'2014-10-19'),(298,31,298,298,298,'2014-10-20'),(299,32,299,299,299,'2014-10-21'),(300,32,300,300,300,'2014-10-22'),(301,32,301,301,301,'2014-10-23'),(302,32,302,302,302,'2014-10-24'),(303,32,303,303,303,'2014-10-25'),(304,32,304,304,304,'2014-10-26'),(305,32,305,305,305,'2014-10-27'),(306,32,306,306,306,'2014-10-28'),(307,32,307,307,307,'2014-10-29');
/*!40000 ALTER TABLE `progression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `summer_cyclones`
--

DROP TABLE IF EXISTS `summer_cyclones`;
/*!50001 DROP VIEW IF EXISTS `summer_cyclones`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `summer_cyclones` AS SELECT 
 1 AS `Cyclone Name`,
 1 AS `Latitude`,
 1 AS `Longitude`,
 1 AS `Landfall`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wind_details`
--

DROP TABLE IF EXISTS `wind_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wind_details` (
  `wind_details_id` int(11) NOT NULL,
  `max_wind_kn` int(11) NOT NULL,
  `min_pressure_millibar` int(11) NOT NULL,
  `wind_type` varchar(50) NOT NULL,
  PRIMARY KEY (`wind_details_id`),
  UNIQUE KEY `wind_details_id_UNIQUE` (`wind_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wind_details`
--

LOCK TABLES `wind_details` WRITE;
/*!40000 ALTER TABLE `wind_details` DISABLE KEYS */;
INSERT INTO `wind_details` VALUES (1,25,1007,'Low'),(2,30,1006,'Low'),(3,60,993,'Low'),(4,120,946,'High'),(5,115,949,'High'),(6,95,966,'Moderate'),(7,55,996,'Low'),(8,30,1004,'Low'),(9,20,1007,'Low'),(10,25,1002,'Low'),(11,35,999,'Low'),(12,25,1004,'Low'),(13,30,1006,'Low'),(14,40,1003,'Low'),(15,70,987,'Low'),(16,130,935,'High'),(17,85,973,'Moderate'),(18,60,990,'Low'),(19,30,1004,'Low'),(20,25,1005,'Low'),(21,15,1007,'Low'),(22,15,1010,'Low'),(23,15,1010,'Low'),(24,30,1006,'Low'),(25,30,1005,'Low'),(26,35,1003,'Low'),(27,40,1001,'Low'),(28,40,1002,'Low'),(29,35,1004,'Low'),(30,35,1006,'Low'),(31,30,1008,'Low'),(32,25,1008,'Low'),(33,20,1009,'Low'),(34,20,1009,'Low'),(35,15,1009,'Low'),(36,45,1002,'Low'),(37,40,1004,'Low'),(38,25,1009,'Low'),(39,20,1008,'Low'),(40,30,1006,'Low'),(41,35,1005,'Low'),(42,25,1007,'Low'),(43,30,1007,'Low'),(44,35,1005,'Low'),(45,25,1008,'Low'),(46,25,1008,'Low'),(47,25,1008,'Low'),(48,30,1007,'Low'),(49,40,1004,'Low'),(50,30,1006,'Low'),(51,30,1006,'Low'),(52,25,1009,'Low'),(53,25,1009,'Low'),(54,35,1005,'Low'),(55,30,1008,'Low'),(56,25,1009,'Low'),(57,35,1006,'Low'),(58,30,1007,'Low'),(59,30,1006,'Low'),(60,35,1004,'Low'),(61,65,990,'Low'),(62,140,918,'High'),(63,130,926,'High'),(64,105,944,'Moderate'),(65,80,963,'Low'),(66,40,993,'Low'),(67,30,1000,'Low'),(68,25,1004,'Low'),(69,30,1007,'Low'),(70,60,994,'Low'),(71,55,996,'Low'),(72,30,1008,'Low'),(73,25,1010,'Low'),(74,20,1012,'Low'),(75,20,1010,'Low'),(76,30,1007,'Low'),(77,55,998,'Low'),(78,75,983,'Low'),(79,100,965,'Moderate'),(80,115,952,'High'),(81,110,957,'Moderate'),(82,75,985,'Low'),(83,75,985,'Low'),(84,50,1001,'Low'),(85,30,1011,'Low'),(86,20,1012,'Low'),(87,25,1008,'Low'),(88,25,1008,'Low'),(89,40,1004,'Low'),(90,50,1000,'Low'),(91,70,985,'Low'),(92,90,971,'Low'),(93,100,964,'Moderate'),(94,85,978,'Low'),(95,80,983,'Low'),(96,65,988,'Low'),(97,55,994,'Low'),(98,65,985,'Low'),(99,55,993,'Low'),(100,30,1005,'Low'),(101,30,1010,'Low'),(102,25,1014,'Low'),(103,20,1014,'Low'),(104,25,1008,'Low'),(105,35,1005,'Low'),(106,60,994,'Low'),(107,50,996,'Low'),(108,40,1002,'Low'),(109,40,1002,'Low'),(110,40,1002,'Low'),(111,45,1000,'Low'),(112,50,1000,'Low'),(113,50,1000,'Low'),(114,60,994,'Low'),(115,75,983,'Low'),(116,55,994,'Low'),(117,30,1002,'Low'),(118,30,1004,'Low'),(119,25,1006,'Low'),(120,20,1006,'Low'),(121,25,1007,'Low'),(122,30,1005,'Low'),(123,45,997,'Low'),(124,50,990,'Low'),(125,65,981,'Low'),(126,55,989,'Low'),(127,35,999,'Low'),(128,30,1002,'Low'),(129,30,1002,'Low'),(130,25,1004,'Low'),(131,25,1008,'Low'),(132,25,1010,'Low'),(133,45,1002,'Low'),(134,75,983,'Low'),(135,130,929,'High'),(136,125,932,'High'),(137,85,965,'Low'),(138,65,980,'Low'),(139,40,997,'Low'),(140,30,1002,'Low'),(141,25,1005,'Low'),(142,25,1009,'Low'),(143,25,1011,'Low'),(144,25,1012,'Low'),(145,35,1004,'Low'),(146,55,995,'Low'),(147,75,978,'Low'),(148,80,970,'Low'),(149,100,960,'Moderate'),(150,55,991,'Low'),(151,30,1002,'Low'),(152,20,1006,'Low'),(153,20,1009,'Low'),(154,20,1010,'Low'),(155,25,1007,'Low'),(156,40,1002,'Low'),(157,45,998,'Low'),(158,55,990,'Low'),(159,70,978,'Low'),(160,115,920,'High'),(161,90,953,'Low'),(162,55,990,'Low'),(163,35,997,'Low'),(164,25,1003,'Low'),(165,25,1009,'Low'),(166,30,1006,'Low'),(167,30,1006,'Low'),(168,30,1007,'Low'),(169,30,1006,'Low'),(170,30,1003,'Low'),(171,25,1005,'Low'),(172,40,1005,'Low'),(173,50,994,'Low'),(174,65,980,'Low'),(175,60,985,'Low'),(176,45,1000,'Low'),(177,40,1003,'Low'),(178,25,1005,'Low'),(179,25,1007,'Low'),(180,20,1007,'Low'),(181,20,1007,'Low'),(182,20,1007,'Low'),(183,30,1006,'Low'),(184,40,1003,'Low'),(185,45,999,'Low'),(186,55,995,'Low'),(187,75,980,'Low'),(188,55,989,'Low'),(189,30,1004,'Low'),(190,25,1007,'Low'),(191,20,1008,'Low'),(192,20,1008,'Low'),(193,25,1008,'Low'),(194,25,1005,'Low'),(195,35,1002,'Low'),(196,50,998,'Low'),(197,90,969,'Low'),(198,90,968,'Low'),(199,50,996,'Low'),(200,35,1002,'Low'),(201,25,1005,'Low'),(202,20,1007,'Low'),(203,25,1008,'Low'),(204,45,1000,'Low'),(205,60,994,'Low'),(206,50,1000,'Low'),(207,60,992,'Low'),(208,70,986,'Low'),(209,70,989,'Low'),(210,60,995,'Low'),(211,40,1002,'Low'),(212,35,1005,'Low'),(213,45,998,'Low'),(214,50,999,'Low'),(215,65,987,'Low'),(216,50,992,'Low'),(217,30,1005,'Low'),(218,45,1001,'Low'),(219,25,1007,'Low'),(220,30,1007,'Low'),(221,30,1006,'Low'),(222,45,1002,'Low'),(223,35,1005,'Low'),(224,65,994,'Low'),(225,90,969,'Low'),(226,85,972,'Low'),(227,30,1004,'Low'),(228,20,1017,'Low'),(229,20,1016,'Low'),(230,25,1011,'Low'),(231,35,1005,'Low'),(232,55,995,'Low'),(233,80,981,'Low'),(234,80,976,'Low'),(235,60,982,'Low'),(236,40,986,'Low'),(237,35,984,'Low'),(238,35,993,'Low'),(239,25,1005,'Low'),(240,20,1012,'Low'),(241,20,1012,'Low'),(242,30,1012,'Low'),(243,30,1012,'Low'),(244,30,1012,'Low'),(245,30,1012,'Low'),(246,30,1012,'Low'),(247,40,1008,'Low'),(248,45,1006,'Low'),(249,40,1009,'Low'),(250,40,1013,'Low'),(251,70,998,'Low'),(252,50,1005,'Low'),(253,45,1006,'Low'),(254,40,999,'Low'),(255,35,1002,'Low'),(256,35,1003,'Low'),(257,30,1005,'Low'),(258,40,1001,'Low'),(259,50,993,'Low'),(260,65,988,'Low'),(261,70,983,'Low'),(262,70,979,'Low'),(263,65,970,'Low'),(264,60,971,'Low'),(265,60,964,'Low'),(266,45,980,'Low'),(267,35,985,'Low'),(268,25,1009,'Low'),(269,45,1005,'Low'),(270,25,1005,'Low'),(271,15,1002,'Low'),(272,25,1009,'Low'),(273,30,1008,'Low'),(274,40,1000,'Low'),(275,45,996,'Low'),(276,70,985,'Low'),(277,90,966,'Low'),(278,105,955,'Moderate'),(279,80,957,'Low'),(280,70,969,'Low'),(281,45,994,'Low'),(282,30,1008,'Low'),(283,25,1014,'Low'),(284,25,1015,'Low'),(285,35,1005,'Low'),(286,60,990,'Low'),(287,70,983,'Low'),(288,50,990,'Low'),(289,25,1010,'Low'),(290,35,1006,'Low'),(291,65,992,'Low'),(292,95,973,'Low'),(293,115,949,'High'),(294,125,940,'High'),(295,110,947,'Moderate'),(296,85,960,'Low'),(297,70,970,'Low'),(298,50,988,'Low'),(299,25,1001,'Low'),(300,30,1002,'Low'),(301,20,1006,'Low'),(302,20,1008,'Low'),(303,25,1008,'Low'),(304,30,1006,'Low'),(305,35,1005,'Low'),(306,20,1009,'Low'),(307,20,1011,'Low');
/*!40000 ALTER TABLE `wind_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_min_pressure`
--

/*!50001 DROP VIEW IF EXISTS `avg_min_pressure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_min_pressure` AS select `cyclones`.`cyclone_name` AS `Cyclone Name`,avg(`wind_details`.`min_pressure_millibar`) AS `Avg Min Pressure` from ((`cyclones` join `progression` on((`cyclones`.`cyclone_id` = `progression`.`cyclone_id`))) join `wind_details` on((`progression`.`wind_details_id` = `wind_details`.`wind_details_id`))) group by `cyclones`.`cyclone_name` order by `cyclones`.`cyclone_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `criticalatlantichurricanes`
--

/*!50001 DROP VIEW IF EXISTS `criticalatlantichurricanes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `criticalatlantichurricanes` AS select `cyclones`.`cyclone_name` AS `Cyclone Name`,`casualties`.`casualty_est` AS `Casualties`,`destruction`.`est_damage_cost_in_million_USD` AS `Estimated Damage Cost (in million USD)` from ((`cyclones` join `destruction` on((`cyclones`.`destruction_id` = `destruction`.`destruction_id`))) join `casualties` on((`destruction`.`casualty_id` = `casualties`.`casualty_id`))) where ((`casualties`.`casualty_est` > (select avg(`casualties`.`casualty_est`) from `casualties`)) and (`destruction`.`est_damage_cost_in_million_USD` > (select avg(`destruction`.`est_damage_cost_in_million_USD`) from `destruction`)) and `cyclones`.`cyclone_name` in (select `cyclones`.`cyclone_name` from ((`cyclones` join `progression` on((`cyclones`.`cyclone_id` = `progression`.`cyclone_id`))) join `cyclone_status` on((`progression`.`status_id` = `cyclone_status`.`status_id`))) where ((`cyclone_status`.`origin_coast` = 'Atlantic') and (`cyclone_status`.`cyclone_type` = 'Hurricane')))) order by `casualties`.`casualty_est`,`destruction`.`est_damage_cost_in_million_USD` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_wind`
--

/*!50001 DROP VIEW IF EXISTS `high_wind`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_wind` AS select `cyclones`.`cyclone_name` AS `Cyclone Name`,`wind_details`.`wind_type` AS `Wind Type` from ((`cyclones` join `progression` on((`cyclones`.`cyclone_id` = `progression`.`cyclone_id`))) join `wind_details` on((`progression`.`wind_details_id` = `wind_details`.`wind_details_id`))) where (`wind_details`.`wind_type` = 'High') group by `cyclones`.`cyclone_name` order by `cyclones`.`cyclone_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `includedcasualties`
--

/*!50001 DROP VIEW IF EXISTS `includedcasualties`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `includedcasualties` AS select `cyclones`.`cyclone_name` AS `Cyclone Name`,`casualties`.`casualty_est` AS `Casualties` from ((`cyclones` join `destruction` on((`cyclones`.`destruction_id` = `destruction`.`destruction_id`))) join `casualties` on((`destruction`.`casualty_id` = `casualties`.`casualty_id`))) where (`casualties`.`casualty_est` > 0) order by `casualties`.`casualty_est` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `summer_cyclones`
--

/*!50001 DROP VIEW IF EXISTS `summer_cyclones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `summer_cyclones` AS select `cyclones`.`cyclone_name` AS `Cyclone Name`,`locations`.`latitude` AS `Latitude`,`locations`.`longitude` AS `Longitude`,`locations`.`landfall` AS `Landfall` from ((`locations` join `progression` on((`locations`.`location_id` = `progression`.`location_id`))) join `cyclones` on((`progression`.`cyclone_id` = `cyclones`.`cyclone_id`))) where (`progression`.`cyclone_date` between '2014-06-01' and '2014-09-30') order by `cyclones`.`cyclone_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 20:04:52
