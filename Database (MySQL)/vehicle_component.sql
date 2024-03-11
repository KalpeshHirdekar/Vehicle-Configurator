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
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `comp_id` int NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'177-hp, 2.4-liter, 16-Valve, DOHC, i-VTEC®, 4-Cylinder Engine',NULL),(2,'5-Speed Manual Transmission',NULL),(3,'Double Wishbone Front Suspension',NULL),(4,'Independent Multi-Link Rear Suspension',NULL),(5,'Front and Rear Stabilizer Bars',NULL),(6,'Variable Gear Ratio (VGR) Power-Assisted Rack-and-Pinion Steering',NULL),(7,'3-Point rear Seat Belts',NULL),(8,'Front 3-Point Seat Belts with Automatic Tensioning System',NULL),(9,'Dual-Stage, Dual Threshold Front Airbags (SRS)',NULL),(10,'Advanced Compatibility Engineering? (ACE?) body structure',NULL),(11,'Four-wheel Disc Brakes',NULL),(12,'Anti-Lock Braking System (ABS)',NULL),(13,'Lower Anchors and Tethers for Children (LATCH)',NULL),(14,'Child-Seat Tether Anchor (Rear-Center)',NULL),(15,'Emergency Trunk Opener',NULL),(16,'Blue star Air Conditioning with Air Filtration System',NULL),(17,'Power Windows with Auto-Up/Down Driver\'s and Front pax\'s windows',NULL),(18,'Power Door Locks',NULL),(19,'Cruise Control',NULL),(20,'Driver\'s Seat With 4Way Power Adjustment',NULL),(21,'JBC 160-Watt AM/FM/CD Audio System with 2 speakers',NULL),(22,'Tilt and Telescopic Steering Column',NULL),(23,'16-inch Wheels',NULL),(24,'Flat Blade Windshield Wipers',NULL),(25,'Security System',NULL),(26,'White body color',NULL),(27,'Black color bumper',NULL);
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 22:18:41
