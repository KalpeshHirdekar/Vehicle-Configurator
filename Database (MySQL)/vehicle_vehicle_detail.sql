-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vehicle
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vehicle_detail`
--

DROP TABLE IF EXISTS `vehicle_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_detail` (
  `config_id` int NOT NULL AUTO_INCREMENT,
  `comp_type` varchar(255) DEFAULT NULL,
  `is_configurable` varchar(255) DEFAULT NULL,
  `comp_id` int DEFAULT NULL,
  `model_id` int DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  KEY `FKa593xqt4mxktc7m7oupjoguuy` (`comp_id`),
  KEY `FKaedld9hn41o0mnv18bdj2el4y` (`model_id`),
  CONSTRAINT `FKa593xqt4mxktc7m7oupjoguuy` FOREIGN KEY (`comp_id`) REFERENCES `component` (`comp_id`),
  CONSTRAINT `FKaedld9hn41o0mnv18bdj2el4y` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_detail`
--

LOCK TABLES `vehicle_detail` WRITE;
/*!40000 ALTER TABLE `vehicle_detail` DISABLE KEYS */;
INSERT INTO `vehicle_detail` VALUES (1,'c','yes',12,1),(2,'s','no',7,2),(3,'i','yes',16,3),(4,'e','no',6,3),(5,'c','yes',20,11),(6,'e','no',17,12),(7,'s','yes',4,13),(8,'i','no',20,30),(9,'c','yes',13,31),(10,'e','no',14,4),(11,'s','yes',14,34),(12,'c','no',13,1),(13,'s','no',15,1),(14,'i','yes',7,1),(15,'e','yes',10,1),(16,'c','yes',2,1),(17,'c','yes',3,1),(18,'i','no',5,1),(19,'i','yes',27,2),(20,'e','no',24,2),(21,'c','no',21,2),(22,'s','yes',17,2),(23,'c','yes',15,2),(24,'c','yes',8,45),(25,'e','no',19,22),(26,'i','yes',14,7),(27,'s','no',3,50),(28,'c','yes',21,31),(29,'s','yes',9,15),(30,'e','no',2,33),(31,'i','no',26,11),(32,'c','yes',16,49),(33,'e','yes',7,44),(34,'s','no',18,29),(35,'c','yes',11,2),(36,'c','no',5,10),(37,'i','yes',13,3),(38,'e','yes',25,20),(39,'c','yes',1,18),(40,'c','yes',6,12),(41,'i','no',10,8),(42,'i','yes',23,25),(43,'e','no',22,21),(44,'c','no',20,35),(45,'s','yes',15,36),(46,'c','yes',12,40),(47,'s','yes',4,39),(48,'i','no',17,14),(49,'i','yes',27,5),(50,'e','no',24,9),(51,'c','no',21,47),(52,'s','yes',17,38),(53,'c','yes',15,26),(54,'e','yes',2,48),(55,'c','no',3,19),(56,'c','yes',8,4),(57,'e','no',19,4),(58,'i','yes',14,4),(59,'s','no',3,4),(60,'c','yes',21,4),(61,'s','yes',9,4),(62,'e','no',2,4),(63,'i','no',26,4),(64,'c','yes',16,4),(65,'e','yes',7,4),(66,'s','no',18,5),(67,'c','yes',11,5),(68,'c','no',5,5),(69,'i','yes',13,5),(70,'e','yes',25,5),(71,'c','yes',1,5),(72,'c','yes',6,5),(73,'i','no',10,5),(74,'i','yes',23,5),(75,'e','no',22,5),(76,'c','no',20,5),(77,'s','yes',15,5),(78,'c','yes',12,5),(79,'s','yes',4,5),(80,'i','no',17,6),(81,'i','yes',27,6),(82,'e','no',24,6),(83,'c','no',21,6),(84,'s','yes',17,6),(85,'c','yes',15,6),(86,'e','yes',2,6),(87,'c','no',3,6),(88,'s','no',18,7),(89,'c','yes',11,7),(90,'c','no',7,7),(91,'i','yes',13,7),(92,'e','yes',27,7),(93,'c','yes',1,7),(94,'c','yes',8,7),(95,'i','no',10,7),(96,'i','yes',23,7),(97,'e','no',22,7),(98,'c','no',20,7),(99,'s','yes',17,7),(100,'c','yes',12,7),(101,'s','yes',3,7),(102,'i','no',17,8),(103,'i','yes',27,8),(104,'e','no',23,8),(105,'c','no',21,8),(106,'s','yes',17,8),(107,'c','yes',17,8),(108,'e','yes',2,8),(109,'c','no',3,8);
/*!40000 ALTER TABLE `vehicle_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 22:18:42
