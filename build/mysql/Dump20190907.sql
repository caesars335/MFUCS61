CREATE DATABASE  IF NOT EXISTS `gg` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `gg`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gg
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVOICE` (
  `IN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IN_Createdate` datetime(6) DEFAULT NULL,
  `IN_CreateBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`IN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER`
--

DROP TABLE IF EXISTS `ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDER` (
  `OR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OR_Createdate` datetime(6) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `P_Price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER`
--

LOCK TABLES `ORDER` WRITE;
/*!40000 ALTER TABLE `ORDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYMENT` (
  `PAY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IN_ID` int(11) DEFAULT NULL,
  `PAY_Createdate` datetime(6) DEFAULT NULL,
  `PAY_Totalprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_Namae` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Createdate` datetime(6) DEFAULT NULL,
  `P_Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Province` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Group` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_Status` int(11) DEFAULT NULL,
  `P_Rate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P_DescriptionLand` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `U_ID` int(11) NOT NULL AUTO_INCREMENT,
  `U_Username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_IDcard` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_BankNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Role` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Profilepic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `U_Status` tinyint(4) DEFAULT NULL,
  `U_Birth` datetime(6) DEFAULT NULL,
  `U_Creatdeate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-07 15:01:23
