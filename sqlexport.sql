-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: dummy
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int DEFAULT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `salary` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project-management-sample-data`
--

DROP TABLE IF EXISTS `project-management-sample-data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project-management-sample-data` (
  `Excel Sample Data` text,
  `MyUnknownColumn` text,
  `MyUnknownColumn_[0]` text,
  `MyUnknownColumn_[1]` text,
  `MyUnknownColumn_[2]` text,
  `MyUnknownColumn_[3]` text,
  `MyUnknownColumn_[4]` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project-management-sample-data`
--

LOCK TABLES `project-management-sample-data` WRITE;
/*!40000 ALTER TABLE `project-management-sample-data` DISABLE KEYS */;
INSERT INTO `project-management-sample-data` VALUES ('Excel Sample Data','','','','','',''),('','','','','','',''),('Project Management Data','','','','','',''),('','','','','','',''),('Project Name','Task Name','Assigned to','Start Date','Days Required','End Date','Progress'),('Marketing','Market Research','Alice','1/1/2024','13','1/14/2024','78%'),('Marketing','Content Creation','Bob','1/14/2024','14','1/28/2024','100%'),('Marketing','Social Media Planning','Charlie','1/28/2024','22','2/19/2024','45%'),('Marketing','Campaign Analysis','Daisy','2/18/2024','25','3/14/2024','0%'),('Product Dev','Prototype Development','Ethan','1/2/2024','18','1/20/2024','100%'),('Product Dev','Quality Assurance','Fiona','1/20/2024','10','1/30/2024','78%'),('Product Dev','User Interface Design','Gabriel','2/4/2024','25','2/29/2024','0%'),('Customer Svc','Service Improvement','Hannah','2/1/2024','22','2/23/2024','100%'),('Customer Svc','Ticket Resolution','Ian','2/24/2024','25','3/20/2024','100%'),('Customer Svc','Customer Feedback','Julia','3/21/2024','30','4/20/2024','0%'),('Financial','Budget Analysis','Kevin','2/2/2024','22','2/24/2024','10%'),('Financial','Financial Reporting','Mark','2/13/2024','21','2/9/2024','78%'),('Financial','Investment Planning','Mark','3/19/2024','25','4/13/2024','100%'),('Research','Market Trends Analysis','Nathan','1/2/2024','23','1/25/2024','50%'),('Research','Data Collection','Olivia','1/26/2024','32','2/27/2024','0%'),('Research','Research Paper Writing','Peter','2/28/2024','27','3/26/2024','0%'),('Development','Software Development','Quinn','1/2/2024','36','2/7/2024','100%'),('Development','Feature Enhancement','Rachel','2/8/2024','34','3/13/2024','0%'),('Development','Code Review','Sam','3/14/2024','30','4/13/2024','0%'),('Production','Manufacturing','Tim','1/3/2024','47','2/19/2024','30%'),('Production','Quality Control','Ursula','2/17/2024','27','3/15/2024','0%'),('Production','Packaging Design','Victor','3/14/2024','22','4/5/2024','0%'),('Sales','Lead Generation','Wendy','1/3/2024','60','3/3/2024','70%'),('Sales','Client Meetings','Xavier','1/6/2024','20','1/26/2024','78%'),('Sales','Contract Negotiation','Yvette','2/3/2024','35','3/9/2024','0%'),('Support','Technical Support','Zoe','1/1/2024','25','1/26/2024','100%'),('Support','Bug Fixes','Aaron','1/27/2024','31','2/27/2024','100%'),('Support','Software Updates','Bella','3/2/2024','22','3/24/2024','0%'),('Operations','Process Optimization','Calvin','1/3/2024','30','2/2/2024','40%'),('Operations','Inventory Management','Diane','2/3/2024','25','2/28/2024','0%'),('Operations','Facility Maintenance','Edward','2/29/2024','20','3/20/2024','0%'),('Consulting','Strategic Planning','Fiona','1/2/2024','35','2/6/2024','60%'),('Consulting','Market Expansion','Gary','2/2/2024','32','3/5/2024','0%'),('Consulting','Client Advisory','Helen','3/6/2024','25','3/31/2024','0%'),('Training','Employee Training','Isaac','1/4/2024','27','1/31/2024','80%'),('Training','Certification Programs','Jane','1/28/2024','30','2/27/2024','0%'),('Training','Skill Development','Kyle','2/28/2024','22','3/21/2024','0%'),('Events','Event Planning','Laura','1/3/2024','25','1/28/2024','30%'),('Events','Conference Management','Mike','2/3/2024','20','2/23/2024','0%'),('Events','Sponsorship Coordinatio','n Nancy','2/24/2024','35','3/30/2024','0%'),('Logistics','Supply Chain Management','Oscar','1/3/2024','25','1/28/2024','50%'),('Logistics','Transportation Planning','Patricia','1/29/2024','30','2/28/2024','100%'),('Logistics','Inventory Optimization','Quentin','3/29/2024','20','4/18/2024','0%'),('Engineering','Product Design','Rachel','1/2/2024','25','1/27/2024','20%'),('Engineering','System Integration','Sam','2/2/2024','22','2/24/2024','0%'),('Engineering','Prototype Testing','Tom','2/23/2024','27','3/21/2024','0%');
/*!40000 ALTER TABLE `project-management-sample-data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `gen` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('aaa',34,'cse',1),('bbb',17,'bme',2),('ccc',25,'res',2),('eee',19,'dce',6),('fff',29,'ece',7),('ggg',68,'uuc',8),('hhh',45,'jjj',9),('ddd',16,'tru',2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-06 12:03:59
