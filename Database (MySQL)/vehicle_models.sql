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
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `mfg_id` bigint DEFAULT NULL,
  `seg_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg5yu6wt9e8520ni10gq8u6b7j` (`mfg_id`),
  KEY `FKeoehxbf066gnexos8p4o9fn5e` (`seg_id`),
  CONSTRAINT `FKeoehxbf066gnexos8p4o9fn5e` FOREIGN KEY (`seg_id`) REFERENCES `segments` (`id`),
  CONSTRAINT `FKg5yu6wt9e8520ni10gq8u6b7j` FOREIGN KEY (`mfg_id`) REFERENCES `manufacturers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'images/login.jpg','Toyota Yaris',1200,1,4),(2,'images/p1.jpg','Toyota Platinum Etios',800,1,4),(3,'images/p2.jpg','Toyota Prius',3000,1,4),(4,'images/6.jpg','Toyota Camry',3800,1,4),(5,'images/p2.jpg','Toyota Corolla Altis',1700,1,4),(6,'images/p3.jpg','Toyota Fortuner',3500,1,4),(7,'images/p5.jpg','Toyota Land Cruiser Prado',9600,1,4),(8,'images/suv.jpg','Toyota Land Cruiser',13000,1,4),(9,'images/145.jpg','Toyota Etios Cross',750,1,4),(10,'images/146.jpg','Toyota Etios Liva',700,1,4),(11,'images/awsm.jpg','Honda Accord 2008 2.4 Elegance AT (2010)',900,2,1),(12,'images/back1.jpg','Honda City 1.5 S MT (2011)',850,2,1),(13,'images/bentley.jpg','Honda City 1.5 V MT (2012)',950,2,1),(14,'images/compact.jpg','Honda BR-V VX (Diesel) (2016)',1100,2,1),(15,'images/select1.jpg','Honda CR V 2.0 2WD AT (2013)',1700,2,1),(16,'images/select2.jpg','Honda CR V 2.0 MT (2009)',1500,2,1),(17,'images/luxury.jpg','Honda Brio S(O)MT (2012)',500,2,1),(18,'images/select3.jpg','Honda Brio V MT (2013)',550,2,1),(19,'images/toyota-new-fortuner-image-13346.jpg','Honda Brio VX AT (2014)',600,2,1),(20,'images/small.jpg','Tata Zest XMS Petrol Revotron 1.2T (2015)',600,3,3),(21,'images/toyota-corolla-altis-image-10361.jpg','Tata Indigo LS (2008)',450,3,3),(22,'images/toyota-camry-image-13526.jpg','Tata Zest XMS Petrol Revotron 1.2T (2015)',620,3,3),(23,'images/v3.jpg','Tata Safari Storme 2.2 EX 4x2 (2016)',1100,3,3),(24,'images/xford.jpg','Tata Safari Storme 2.2 VX 4x2 (2013)',1300,3,3),(25,'images/toyota-yaris-image-14157.jpg','Tata Safari 4x2 EX (2011)',1000,3,3),(26,'images/toyota-yaris-image-14153.jpg','Tata Indica V2 DLS BS III (2005)',350,3,3),(27,'images/toyota-prius-image-13515.jpg','Tata Bolt XM Petrol Revotron 1.2T (2015)',550,3,3),(28,'images/toyota-platinum-etios-image-13239.jpg','Tata Nano LX (2010)',250,3,3),(29,'images/toyota-platinum-etios-image-13233.jpg','Maruti Suzuki SX4 VXI CNG BS IV (2012)',700,4,2),(30,'images/toyota-new-fortuner-image-13349.jpg','Maruti Suzuki Ertiga VXI CNG (2016)',800,4,2),(31,'images/toyota-new-fortuner-image-13346.jpg','Maruti Suzuki Ciaz ZXi AT (2015)',1000,4,2),(32,'images/toyota-land-cruiser-prado-image-14116.jpg','Maruti Suzuki Ertiga VXI BS IV (2014)',850,4,2),(33,'images/toyota-land-cruiser-prado-image-14114.jpg','Maruti Suzuki Ertiga VXI BS IV (2016)',900,4,2),(34,'images/toyota-land-cruiser-image-11526(1).jpg','Maruti Suzuki Ertiga ZDI BS IV(WITH ALLOY) (2015)',950,4,2),(35,'images/toyota-land-cruiser-image-11432.jpg','Maruti Suzuki Swift VXi (2015)',600,4,2),(36,'images/toyota-land-cruiser-image-11431.jpg','Maruti Suzuki Wagon R 1.0 MC VXI (2016)',450,4,2),(37,'images/toyota-etios-liva-image-11502.png','Maruti Suzuki Ignis Sigma 1.2 MT (2017)',550,4,2),(38,'images/toyota-etios-liva-image-10212.jpg','Volkswagen Vento 1.2L TSI (2015)',900,5,1),(39,'images/toyota-etios-liva-image-10208.jpg','Volkswagen Ameo Highline1.2L Plus (P) (2017)',1000,5,1),(40,'images/toyota-etios-cross-image-10224.jpg','Volkswagen Vento Highline Diesel (2012)',1100,5,1),(41,'images/toyota-corolla-altis-image-10361.jpg','Volkswagen Tiguan Comfortline TDI (2017)',2500,5,1),(42,'images/sedan.jpg','Volkswagen Tiguan Highline TDI (2017)',2800,5,1),(43,'images/toyota-etios-cross-image-10218.jpg','Volkswagen Touareg 3.0 V6 TDI (2013)',3000,5,1),(44,'images/compact.jpg','Volkswagen Polo Highline1.2L (P) (2017)',800,5,1),(45,'images/toyota-prius-image-13511.png','Volkswagen Polo Comfortline 1.2L (P) (2016)',750,5,1),(46,'images/toyota-camry-image-13526.jpg','Volkswagen Polo GT TSI (2013)',850,5,1),(47,'images/p2.jpg','Hyundai Xcent 1.2L Kappa Dual VTVT 5-Speed Manual SX (O) (2014)',750,6,3),(48,'images/p1.jpg','Hyundai Neo Fluidic Elantra 1.6 SX AT CRDi (2013)',1200,6,3),(49,'images/p3.jpg','Hyundai Verna Fluidic 1.6 VTVT SX (2012)',900,6,3),(50,'images/p5.jpg','Hyundai Creta 1.6 SX Plus Petrol (2016)',1100,6,3),(51,'images/luxury.jpg','Hyundai Creta 1.6 SX Plus AT Petrol (2017)',1200,6,3),(52,'images/login.jpg','Hyundai Creta 1.6 SX Plus Petrol (2017)',1150,6,3),(53,'images/select1.jpg','Hyundai i20 Sportz 1.2 BS IV (2014)',600,6,3),(54,'images/select2.jpg','Hyundai Elite i20 1.4 U2 CRDI Asta Diesel (2014)',850,6,3),(55,'images/select3.jpg','Hyundai Elite i20 1.2 Kappa VTVT Asta Petrol (2015)',800,6,3);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
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
