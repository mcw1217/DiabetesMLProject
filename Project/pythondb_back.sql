-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: pythondb
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fromip` varchar(20) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `booking` varchar(300) DEFAULT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (2,'test','test@naver.com','$2b$12$fNLUkxm66bbVSoaDCwjf5uqLl/QnfPBJfuY7GrSq0iNXph556S2em','127.0.0.1','일반 회원',NULL,'2022-11-19 18:30:03'),(3,'mcw1217','mcw1217@naver.com','$2b$12$GpDNo0sgddYC8C4V9oeYpOb3PJy4jcZHH4LfIQm2BEvCYTTSGGpnK','127.0.0.1','관리자',NULL,'2022-11-20 11:27:03'),(4,'admin','admin@naver.com','$2b$12$Z1dMpzUBD2tbBt/fSsMAreDH29VUkcoqKCzk4Ezn7WTe5KnMxY4ta','127.0.0.1','관리자',NULL,'2022-11-20 15:21:21');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_survey`
--

DROP TABLE IF EXISTS `save_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save_survey` (
  `survey_content` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_survey`
--

LOCK TABLES `save_survey` WRITE;
/*!40000 ALTER TABLE `save_survey` DISABLE KEYS */;
INSERT INTO `save_survey` VALUES ('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Negative'),('20, Female, Yes, Yes, No, No, No, No, No, No, No, No, No, No, No, No,Positive');
/*!40000 ALTER TABLE `save_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey` (
  `userid` varchar(500) DEFAULT NULL,
  `survey_content` varchar(100) DEFAULT NULL,
  `hospital` varchar(500) DEFAULT NULL,
  `y` varchar(10) DEFAULT NULL,
  `m` varchar(10) DEFAULT NULL,
  `d` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES ('4','21,Female,Yes,Yes,No,No,No,No,No,No,No,No,No,No,No,No','4','2023','1','3'),('2','20,Female,Yes,Yes,No,Yes,Yes,Yes,No,No,No,No,No,No,No,No','4','2023','1','3'),('2','20,Female,Yes,Yes,No,Yes,Yes,Yes,No,No,No,No,No,No,No,No','4','2023','1','3'),('2','20,Female,Yes,Yes,No,No,No,No,No,No,No,No,No,No,No,No','4','2023','3','4'),('3','20,Female,Yes,Yes,No,No,No,No,No,No,No,No,No,No,No,No','3','2022','7','4'),('2','20,Female,Yes,No,No,No,Yes,No,No,No,No,No,No,No,No,No','3','2023','3','3');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22  5:23:08
