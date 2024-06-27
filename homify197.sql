CREATE DATABASE  IF NOT EXISTS `groupassignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `groupassignment`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: groupassignment
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `adminID` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(45) DEFAULT NULL,
  `adminPassword` varchar(50) DEFAULT NULL,
  `adminEmail` varchar(50) DEFAULT NULL,
  `adminPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (101,'Danial','A1111','danial@gmail.com','0192029081'),(102,'Munir','C3333','munir@gmail.com','0122884828'),(103,'Wizney','B2222','wizney@gmail.com','0133939390'),(104,'Zaki','D4444','muhammadzaki@gmail.com','0133935928'),(105,'Intan','E5555','intannnn@gmail.com','0122928098');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ProdID` int NOT NULL,
  `PurcID` int NOT NULL,
  PRIMARY KEY (`ProdID`,`PurcID`),
  KEY `ProID_idx` (`ProdID`),
  KEY `PurcID_idx999` (`PurcID`),
  CONSTRAINT `ProdID` FOREIGN KEY (`ProdID`) REFERENCES `product` (`ProdID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PurcID` FOREIGN KEY (`PurcID`) REFERENCES `purchase` (`PurcID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (100001,300001),(100001,300002),(100002,300001),(100002,300004),(100003,300001);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `DeliID` int NOT NULL AUTO_INCREMENT,
  `DeliType` varchar(45) DEFAULT NULL,
  `DeliFee` float DEFAULT NULL,
  `DeliStatus` varchar(45) DEFAULT 'Preparing Order',
  `AdminID` int DEFAULT NULL,
  PRIMARY KEY (`DeliID`),
  KEY `AdminID2_idx` (`AdminID`),
  CONSTRAINT `AdminID2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`adminID`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=990006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (990001,'N',100,'On Its Way',101),(990002,'F',100,'Packing Items',102),(990003,'N',150,'Delivered',103),(990004,'N',150,'Shipping',104),(990005,'F',150,'Delivered',105);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `InvoiceID` int NOT NULL AUTO_INCREMENT,
  `CustName` varchar(45) DEFAULT NULL,
  `CustAdd` varchar(50) DEFAULT NULL,
  `CustPhone` varchar(45) DEFAULT NULL,
  `CustEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InvoiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=500006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (500001,'John Doe','111 Jalan Petaling, 50000, Wilayah Persekutuan','0162499049','john_doe@yahoo.com'),(500002,'Beckham Brian','31 Jln Jintan Taman Supreme, 56100, KL','0134344468','beckhamvbrian@gmail.com'),(500003,'Ali bin Ahmad',' Luh Pearl Taman Pearl, 31400, Perak','0183928757','alicikedis@gmail.com'),(500004,'Chermain Cheng','No. 11 Jalan Mesra, 55000, Wilayah Persekutuan','0173587007','CCheng@gmail.com'),(500005,'Devi A/P Krish','6B 1St Floor, 70000, Negeri Sembilan','0179361473','DeviKrish@gmail.com');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProdID` int NOT NULL AUTO_INCREMENT,
  `ProdName` varchar(45) DEFAULT NULL,
  `ProdPrice` varchar(255) DEFAULT NULL,
  `ProdColour` varchar(45) DEFAULT NULL,
  `ProdQuantity` int DEFAULT NULL,
  `ProdDiscount` int DEFAULT '0',
  `ProdDesc` varchar(45) DEFAULT NULL,
  `ProdCategory` varchar(45) DEFAULT NULL,
  `ProdAddInfo` varchar(255) DEFAULT NULL,
  `ProdImage` varchar(255) DEFAULT NULL,
  `SuppID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  PRIMARY KEY (`ProdID`),
  KEY `SuppID_idx` (`SuppID`),
  KEY `AdminID_idx` (`AdminID`),
  CONSTRAINT `AdminID` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`adminID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `SuppID` FOREIGN KEY (`SuppID`) REFERENCES `supplier` (`SuppID`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=100004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (100001,'hanyut','488.34','fvdcsx',4,0,'gvfd','frvrvrv','dcsx','https://www.ikea.com/my/en/images/products/sandsberg-adde-table-and-4-chairs-black-black__1016431_pe830392_s5.jpg?f=xs',501,101),(100002,'POANG','949','Glose dark brown',35,0,'10 year guarantee','CHAIR','Width: 68 cm  Depth: 94 cm  Height: 95 cm  Seat width: 56 cm  Seat depth: 50 cm  Seat height: 45 cm','https://www.ikea.com/my/en/images/products/poaeng-rocking-chair-black-brown-glose-dark-brown__0153121_pe311399_s5.jpg?f=xs',503,105),(100003,'padam','34','padam',345345,0,'padam','padam','padam','https://www.ikea.com/my/en/images/products/poaeng-rocking-chair-black-brown-glose-dark-brown__0153121_pe311399_s5.jpg?f=xs',501,104);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `PurcID` int NOT NULL AUTO_INCREMENT,
  `PurcTotal` float DEFAULT NULL,
  `InvoiceID` int DEFAULT NULL,
  `DeliID` int DEFAULT NULL,
  PRIMARY KEY (`PurcID`),
  KEY `InvoiceID_idx2` (`InvoiceID`),
  KEY `DeliID_idx2` (`DeliID`),
  KEY `InvoiceID_idx999` (`InvoiceID`),
  KEY `DeliID_idx999` (`DeliID`),
  CONSTRAINT `DeliID` FOREIGN KEY (`DeliID`) REFERENCES `delivery` (`DeliID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=300006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (300001,1420,500001,990001),(300002,1555,500002,990002),(300003,1470,500003,990003),(300004,649,500004,990004),(300005,3225,500005,990005);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `ReceiptID` int NOT NULL AUTO_INCREMENT,
  `PaymentInfo` varchar(255) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `InvoiceID` int DEFAULT NULL,
  `DeliID` int DEFAULT NULL,
  PRIMARY KEY (`ReceiptID`),
  KEY `InvoiceID2_idx` (`InvoiceID`),
  KEY `DeliID2_idx` (`DeliID`),
  CONSTRAINT `DeliID2` FOREIGN KEY (`DeliID`) REFERENCES `delivery` (`DeliID`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `InvoiceID2` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=700006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (700001,'-','2023-08-01 10:00:00',500001,990001),(700002,'-','2023-08-23 00:00:00',500002,990002),(700003,'-','2023-07-01 00:10:00',500003,990003),(700004,'-','2023-08-21 00:00:00',500004,990004),(700005,'-','2023-06-08 00:00:00',500005,990005);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SuppID` int NOT NULL AUTO_INCREMENT,
  `SuppName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SuppID`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (501,'RND Furniture'),(502,'Bristol Technologies'),(503,'Teak Furniture');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-19  4:33:37
