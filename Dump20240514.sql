-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_test
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `meteo`
--

DROP TABLE IF EXISTS `meteo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meteo` (
  `ID_M` int NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `wind_speed` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `precipitation_probability` double DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_M`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meteo`
--

LOCK TABLES `meteo` WRITE;
/*!40000 ALTER TABLE `meteo` DISABLE KEYS */;
INSERT INTO `meteo` VALUES (8,38.1157,13.3615,21.4,9.5,69,0,'2024-05-14 18:00:00','Palermo'),(9,45.4643,9.1895,22,8.9,51,58,'2024-05-14 18:00:00','Milano'),(10,38.1157,13.3615,21.5,9.7,67,0,'2024-05-14 18:30:00','Palermo'),(11,38.1157,13.3615,21.5,9.1,65,0,'2024-05-14 19:30:00','Palermo');
/*!40000 ALTER TABLE `meteo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `ID_U` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(245) DEFAULT NULL,
  `Cognome` varchar(245) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `password` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`ID_U`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'Gabrieles','Castello','Johnn@ciaooo.it','24fab61cd9a2add54de42a34c1d89469eab8e3584926e6ca7e5cb12bc1af690b'),(2,'lorenzo','taverna','lorenzotaverna@icloud.com','b83cb68a006bf684628aaae5775e3794fe4d9ee57bb3d5c9173772b5cd4a4a94'),(3,'Mario','Rossi','mario.rossi@gmail.com','b83cb68a006bf684628aaae5775e3794fe4d9ee57bb3d5c9173772b5cd4a4a94'),(9,'gabriele','castiglione','gabriele.castiglione@email.it','b83cb68a006bf684628aaae5775e3794fe4d9ee57bb3d5c9173772b5cd4a4a94'),(10,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14 17:53:28
