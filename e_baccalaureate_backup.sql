-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: e_baccalaureate
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` char(3) NOT NULL,
  `form` char(2) NOT NULL,
  `attendance_percentage` decimal(6,2) NOT NULL,
  PRIMARY KEY (`form`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('010','8A',97.87),('005','8D',99.68),('009','8E',96.25),('001','8I',100.00),('008','8L',95.34),('002','8S',99.17),('003','8T',98.76),('004','8U',97.57),('007','8W',96.46),('006','8Y',98.56);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behaviour`
--

DROP TABLE IF EXISTS `behaviour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `behaviour` (
  `student_id` char(3) NOT NULL,
  `recognition_points` int NOT NULL,
  `behaviour_logs` int NOT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `behaviour_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behaviour`
--

LOCK TABLES `behaviour` WRITE;
/*!40000 ALTER TABLE `behaviour` DISABLE KEYS */;
INSERT INTO `behaviour` VALUES ('001',89,0),('002',76,0),('003',45,13),('004',72,2),('005',124,3),('006',61,3),('007',65,2),('008',94,1),('009',59,4),('010',91,1);
/*!40000 ALTER TABLE `behaviour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `humanity_option_ebacc`
--

DROP TABLE IF EXISTS `humanity_option_ebacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `humanity_option_ebacc` (
  `student_id` char(3) NOT NULL,
  `humanity` varchar(10) NOT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `humanity_option_ebacc_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humanity_option_ebacc`
--

LOCK TABLES `humanity_option_ebacc` WRITE;
/*!40000 ALTER TABLE `humanity_option_ebacc` DISABLE KEYS */;
INSERT INTO `humanity_option_ebacc` VALUES ('001','history'),('002','geography'),('003','history'),('004','geography'),('005','geography'),('006','history'),('007','geography'),('008','history'),('009','history'),('010','history');
/*!40000 ALTER TABLE `humanity_option_ebacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_option`
--

DROP TABLE IF EXISTS `language_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_option` (
  `student_id` char(3) NOT NULL,
  `language` varchar(10) NOT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `language_option_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_option`
--

LOCK TABLES `language_option` WRITE;
/*!40000 ALTER TABLE `language_option` DISABLE KEYS */;
INSERT INTO `language_option` VALUES ('001','spanish'),('002','german'),('003','spanish'),('004','french'),('005','german'),('006','french'),('007','french'),('008','spanish'),('009','french'),('010','french');
/*!40000 ALTER TABLE `language_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` char(3) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `PP` varchar(3) NOT NULL,
  `SEN` varchar(2) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('001','Amelie','Ara','No','No'),('002','Shalom','Masha','No','K2'),('003','Zain','Kasen','Yes','No'),('004','Lamiya','Fareed','Yes','No'),('005','Imaan','Hassan','No','K2'),('006','Faith','Tulip','Yes','No'),('007','Poppy','Smith','No','No'),('008','Esme','Lopez','No','No'),('009','Emily','Roger','No','K1'),('010','Farheen','Mohamed','No','No');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triple_science`
--

DROP TABLE IF EXISTS `triple_science`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triple_science` (
  `student_id` char(3) NOT NULL,
  `triple_science` char(3) NOT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `triple_science_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `triple_science_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triple_science`
--

LOCK TABLES `triple_science` WRITE;
/*!40000 ALTER TABLE `triple_science` DISABLE KEYS */;
INSERT INTO `triple_science` VALUES ('001','yes'),('003','yes'),('006','yes'),('009','yes'),('010','yes'),('001','yes'),('003','yes'),('006','yes'),('009','yes'),('010','yes');
/*!40000 ALTER TABLE `triple_science` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 19:10:09
