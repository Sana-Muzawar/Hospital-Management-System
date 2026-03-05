-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hospmgt
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `A_ID` varchar(25) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `DOB` varchar(25) DEFAULT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Email_ID` varchar(25) DEFAULT NULL,
  `Mobile_no` int DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('201','Akash','30-03-1988','M','akash88@gmail.com',9134,'Bangalore'),('202','Karan','01-10-1999','M','karan99@gmail.com',8249,'Delhi'),('203','Reetu','28-12-2000','F','reetu@28gmail.com',7098,'Kerala'),('204','Aisha','07-10-1995','F','aisha95@gmail.com',8997,'Chennai');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `P_Id` varchar(25) NOT NULL,
  `Specialization` varchar(25) DEFAULT NULL,
  `Doctor_Name` varchar(25) DEFAULT NULL,
  `Consultant_fee` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`P_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('101','Cardiologist','Ram',500,'2024-02-29','08:30:00'),('102','Surgeon','Nick',800,'2024-02-22','10:00:00'),('103','Dental','Ria',400,'2024-02-27','09:30:00'),('104','Pediatrician','Tia',500,'2024-02-25','11:30:00');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `P_ID` varchar(25) DEFAULT NULL,
  `Bill_No` varchar(25) NOT NULL,
  `Date` varchar(25) DEFAULT NULL,
  `Time` varchar(25) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`Bill_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('101','456','2024-02-17','11:00:00',1200),('102','457','2024-02-17','11:25:00',1000),('103','458','2024-02-18','10:15:00',800),('104','459','2024-02-18','15:30:00',2000),('105','500','2024-02-18','17:45:00',1500);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `D_ID` varchar(25) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Specialization` varchar(25) DEFAULT NULL,
  `Experience` varchar(25) DEFAULT NULL,
  `Language` varchar(25) DEFAULT NULL,
  `Mobile_no` int DEFAULT NULL,
  `Email_ID` varchar(25) DEFAULT NULL,
  `Schedule` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('401',40,'F','Dental','5','English',9909,'ria12@gmail.com','8am-10am'),('402',30,'M','Cardiologist','10','Hindi',7737,'ram58@gmail.com','10am-11am'),('403',35,'F','Pediatrician','15','Kannada',6787,'tia32@gmail.com','9am-11am'),('404',30,'M','Surgeon','12','English',9542,'nick54@gmail.com','2pm-4pm');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `P_Id` varchar(25) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `DOB` varchar(25) DEFAULT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Blood_Group` varchar(25) DEFAULT NULL,
  `Email_ID` varchar(25) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `Mobile_no` int DEFAULT NULL,
  `CGHS_Private` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`P_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('101','John','10-03-2000','M','O+','john123@gmail.com','Delhi',8383,'CGHS'),('103','Sam','02-06-1999','M','A+','sam26@gmail.com','Goa',7485,'Private'),('104','Amara','03-04-2000','F','O-','amara34@gmail.com','Chennai',8078,'CGHS');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `D_ID` varchar(25) DEFAULT NULL,
  `P_ID` varchar(25) NOT NULL,
  `Medicine` varchar(25) DEFAULT NULL,
  `Remark` varchar(25) DEFAULT NULL,
  `Advice` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('401','103','Tablets','Tooth ache','Rest'),('403','104','Cough syrup','Cough','Rest');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-05 15:18:36
