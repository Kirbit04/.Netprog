-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: NyumbaniDB
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A001','U001','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw1','2025-02-24 10:11:32'),('A002','U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw2','2025-02-24 10:11:32'),('A003','U003','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw3','2025-02-24 10:11:32'),('A004','U005','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw4','2025-02-24 10:11:32'),('A005','U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw5','2025-02-24 10:11:32'),('A006','U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw6','2025-02-24 10:11:32'),('A007','U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw7','2025-02-24 10:11:32'),('A008','U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw8','2025-02-24 10:11:32'),('A009','U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw9','2025-02-24 10:11:32'),('A010','U004','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw10','2025-02-24 10:11:32'),('A011','U006','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw11','2025-02-24 10:11:32'),('A012','U008','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw12','2025-02-24 10:11:32'),('A013','U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw13','2025-02-24 10:11:32'),('A014','U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw14','2025-02-24 10:11:32'),('A015','U009','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw15','2025-02-24 10:11:32');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `agent_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`agent_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES ('AG001','U005','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw1','2025-02-24 10:28:28'),('AG002','U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw2','2025-02-24 10:28:28'),('AG003','U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw3','2025-02-24 10:28:28'),('AG004','U009','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw4','2025-02-24 10:28:28'),('AG005','U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw5','2025-02-24 10:28:28'),('AG006','U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw6','2025-02-24 10:28:28'),('AG007','U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw7','2025-02-24 10:28:28'),('AG008','U001','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw8','2025-02-24 10:28:28'),('AG009','U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw9','2025-02-24 10:28:28'),('AG010','U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw10','2025-02-24 10:28:28'),('AG011','U006','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw11','2025-02-24 10:28:28'),('AG012','U008','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw12','2025-02-24 10:28:28'),('AG013','U004','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw13','2025-02-24 10:28:28'),('AG014','U003','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw14','2025-02-24 10:28:28'),('AG015','U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw15','2025-02-24 10:28:28');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `booking_date` date NOT NULL,
  `status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `buyer_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`buyer_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES ('B001','U004','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw1','2025-02-24 10:24:50'),('B002','U008','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw2','2025-02-24 10:24:50'),('B003','U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw3','2025-02-24 10:24:50'),('B004','U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw4','2025-02-24 10:24:50'),('B005','U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw5','2025-02-24 10:24:50'),('B006','U006','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw6','2025-02-24 10:24:50'),('B007','U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw7','2025-02-24 10:24:50'),('B008','U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw8','2025-02-24 10:24:50'),('B009','U001','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw9','2025-02-24 10:24:50'),('B010','U009','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw10','2025-02-24 10:24:50'),('B011','U003','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw11','2025-02-24 10:24:50'),('B012','U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw12','2025-02-24 10:24:50'),('B013','U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw13','2025-02-24 10:24:50'),('B014','U005','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw14','2025-02-24 10:24:50'),('B015','U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw15','2025-02-24 10:24:50');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lease_agreement`
--

DROP TABLE IF EXISTS `lease_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lease_agreement` (
  `lease_id` varchar(50) NOT NULL,
  `tenant_id` varchar(50) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rent_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lease_id`),
  KEY `tenant_id` (`tenant_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `lease_agreement_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`),
  CONSTRAINT `lease_agreement_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lease_agreement`
--

LOCK TABLES `lease_agreement` WRITE;
/*!40000 ALTER TABLE `lease_agreement` DISABLE KEYS */;
INSERT INTO `lease_agreement` VALUES ('LA001','T001','P001','2025-01-01','2026-01-01',50000.00,'Active'),('LA002','T002','P002','2025-02-01','2026-02-01',75000.00,'Active'),('LA003','T003','P003','2025-03-01','2026-03-01',60000.00,'Pending'),('LA004','T004','P004','2025-04-01','2026-04-01',80000.00,'Active'),('LA005','T005','P005','2025-05-01','2026-05-01',45000.00,'Expired'),('LA006','T006','P006','2025-06-01','2026-06-01',70000.00,'Active'),('LA007','T007','P007','2025-07-01','2026-07-01',65000.00,'Pending'),('LA008','T008','P008','2025-08-01','2026-08-01',90000.00,'Active'),('LA009','T009','P009','2025-09-01','2026-09-01',55000.00,'Active'),('LA010','T010','P010','2025-10-01','2026-10-01',85000.00,'Pending');
/*!40000 ALTER TABLE `lease_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_request`
--

DROP TABLE IF EXISTS `maintenance_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_request` (
  `request_id` varchar(50) NOT NULL,
  `tenant_id` varchar(50) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `description` text,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`),
  KEY `tenant_id` (`tenant_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `maintenance_request_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`),
  CONSTRAINT `maintenance_request_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_request`
--

LOCK TABLES `maintenance_request` WRITE;
/*!40000 ALTER TABLE `maintenance_request` DISABLE KEYS */;
INSERT INTO `maintenance_request` VALUES ('MR001','T001','P001','Leaking kitchen sink','Pending','2025-02-24 10:45:06'),('MR002','T002','P002','Broken window in the living room','In Progress','2025-02-24 10:45:06'),('MR003','T003','P003','Faulty electrical wiring','Completed','2025-02-24 10:45:06'),('MR004','T004','P004','Clogged drainage in the bathroom','Pending','2025-02-24 10:45:06'),('MR005','T005','P005','Damaged front door lock','Completed','2025-02-24 10:45:06'),('MR006','T006','P006','Air conditioning unit not working','Pending','2025-02-24 10:45:06'),('MR007','T007','P007','Cracked bedroom wall','In Progress','2025-02-24 10:45:06'),('MR008','T008','P008','Roof leaking during rain','Pending','2025-02-24 10:45:06'),('MR009','T009','P009','Broken tiles in the kitchen','Completed','2025-02-24 10:45:06'),('MR010','T010','P010','Water heater malfunction','In Progress','2025-02-24 10:45:06');
/*!40000 ALTER TABLE `maintenance_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `message` text,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('N001','U001','Your property viewing for P001 is scheduled.','Unread','2025-02-24 10:54:22'),('N002','U002','Payment for property P002 has been received.','Read','2025-02-24 10:54:22'),('N003','U003','Lease agreement for P003 is expiring soon.','Unread','2025-02-24 10:54:22'),('N004','U004','New maintenance request submitted.','Read','2025-02-24 10:54:22'),('N005','U005','Reminder: Rent payment for P005 is due.','Unread','2025-02-24 10:54:22'),('N006','U006','Property P006 has a new review.','Read','2025-02-24 10:54:22'),('N007','U007','Property P007 is now available for viewing.','Unread','2025-02-24 10:54:22'),('N008','U008','Maintenance request for P008 has been completed.','Read','2025-02-24 10:54:22'),('N009','U009','You have a new message from admin.','Unread','2025-02-24 10:54:22'),('N010','U010','System update: New features added.','Read','2025-02-24 10:54:22');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `owner_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('O001','U006','Frank Kamau','frank.kamau@email.com','+254767890123','2025-02-24 10:31:38'),('O002','U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','2025-02-24 10:31:38'),('O003','U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','2025-02-24 10:31:38'),('O004','U004','Bob Otieno','bob.otieno@email.com','+254745678901','2025-02-24 10:31:38'),('O005','U008','Grace Chebet','grace.chebet@email.com','+254789012345','2025-02-24 10:31:38'),('O006','U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','2025-02-24 10:31:38'),('O007','U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','2025-02-24 10:31:38'),('O008','U001','John Mwangi','john.mwangi@email.com','+254712345678','2025-02-24 10:31:38'),('O009','U005','Eve Achieng','eve.achieng@email.com','+254756789012','2025-02-24 10:31:38'),('O010','U009','Michael Wafula','michael.wafula@email.com','+254790123456','2025-02-24 10:31:38'),('O011','U003','Alice Njeri','alice.njeri@email.com','+254734567890','2025-02-24 10:31:38'),('O012','U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','2025-02-24 10:31:38'),('O013','U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','2025-02-24 10:31:38'),('O014','U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','2025-02-24 10:31:38'),('O015','U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','2025-02-24 10:31:38');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_method` enum('Mpesa','Card','Bank Transfer') DEFAULT NULL,
  `status` enum('Pending','Completed','Failed') DEFAULT 'Pending',
  PRIMARY KEY (`payment_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `owner_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`property_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` varchar(50) NOT NULL,
  `owner_id` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `property_type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('P001','O001','Greenview Apartments','Spacious 3-bedroom apartment with modern amenities.','Nairobi','Apartment','120 sqm',75000.00,'Available','2025-02-24 12:29:46','123 Mombasa Road','Nairobi','Nairobi County','00100',NULL),('P002','O002','Serene Villas','Luxury 4-bedroom villa with a swimming pool.','Mombasa','Villa','300 sqm',150000.00,'Occupied','2025-02-24 12:29:46','456 Nyali Beach','Mombasa','Mombasa County','80100',NULL),('P003','O003','Westlands Office Block','Fully serviced office space in a prime location.','Nairobi','Commercial','500 sqm',250000.00,'Available','2025-02-24 12:29:46','789 Waiyaki Way','Nairobi','Nairobi County','00200',NULL),('P004','O004','Lavington Heights','Modern 2-bedroom apartment with scenic views.','Nairobi','Apartment','100 sqm',85000.00,'Available','2025-02-24 12:29:46','321 Lavington Drive','Nairobi','Nairobi County','00300',NULL),('P005','O005','Thika Road Mansion','Spacious 5-bedroom house with a garden.','Thika','House','400 sqm',180000.00,'Occupied','2025-02-24 12:29:46','555 Thika Road','Thika','Kiambu County','01000',NULL),('P006','O006','Eldoret Business Plaza','Retail space in a high-traffic area.','Eldoret','Commercial','600 sqm',300000.00,'Available','2025-02-24 12:29:46','777 Market Street','Eldoret','Uasin Gishu County','30100',NULL),('P007','O007','Mombasa Beach Apartments','Seaside 2-bedroom furnished apartment.','Mombasa','Apartment','110 sqm',95000.00,'Available','2025-02-24 12:29:46','909 Beach Road','Mombasa','Mombasa County','80200',NULL),('P008','O008','Runda Estate Home','Lavish 6-bedroom home with a private garden.','Nairobi','House','550 sqm',250000.00,'Occupied','2025-02-24 12:29:46','101 Runda Close','Nairobi','Nairobi County','00400',NULL),('P009','O009','Industrial Warehouse','Large storage space with loading docks.','Nakuru','Commercial','800 sqm',400000.00,'Available','2025-02-24 12:29:46','222 Industrial Lane','Nakuru','Nakuru County','20100',NULL),('P010','O010','Kitengela Apartments','Affordable 1-bedroom units in a gated community.','Kitengela','Apartment','75 sqm',35000.00,'Available','2025-02-24 12:29:46','333 Namanga Road','Kitengela','Kajiado County','01100',NULL),('P011','O011','Nyeri Bungalows','Charming 3-bedroom bungalows with private yards.','Nyeri','House','200 sqm',70000.00,'Occupied','2025-02-24 12:29:46','444 Karatina Road','Nyeri','Nyeri County','10100',NULL),('P012','O012','Karen Executive Villas','Exclusive gated community with top security.','Nairobi','Villa','450 sqm',220000.00,'Available','2025-02-24 12:29:46','555 Karen Drive','Nairobi','Nairobi County','00500',NULL),('P013','O013','Machakos Business Hub','Modern office spaces with fiber internet.','Machakos','Commercial','350 sqm',150000.00,'Available','2025-02-24 12:29:46','666 Mbolu Malu Road','Machakos','Machakos County','90100',NULL),('P014','O014','Kisumu Luxury Lofts','High-end apartments with lake views.','Kisumu','Apartment','130 sqm',120000.00,'Available','2025-02-24 12:29:46','777 Oginga Odinga Street','Kisumu','Kisumu County','40100',NULL),('P015','O015','Malindi Resort Homes','Holiday homes perfect for short and long stays.','Malindi','House','300 sqm',180000.00,'Occupied','2025-02-24 12:29:46','888 Malindi Beach','Malindi','Kilifi County','80200',NULL);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_listing`
--

DROP TABLE IF EXISTS `property_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_listing` (
  `listing_id` varchar(50) NOT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `owner_id` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`listing_id`),
  KEY `property_id` (`property_id`),
  KEY `owner_id` (`owner_id`),
  CONSTRAINT `property_listing_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `property_listing_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_listing`
--

LOCK TABLES `property_listing` WRITE;
/*!40000 ALTER TABLE `property_listing` DISABLE KEYS */;
INSERT INTO `property_listing` VALUES ('L001','P001','O001','Active','2025-02-24 10:38:40'),('L002','P002','O002','Sold','2025-02-24 10:38:40'),('L003','P003','O003','Active','2025-02-24 10:38:40'),('L004','P004','O004','Pending','2025-02-24 10:38:40'),('L005','P005','O005','Sold','2025-02-24 10:38:40'),('L006','P006','O006','Active','2025-02-24 10:38:40'),('L007','P007','O007','Active','2025-02-24 10:38:40'),('L008','P008','O008','Sold','2025-02-24 10:38:40'),('L009','P009','O009','Active','2025-02-24 10:38:40'),('L010','P010','O010','Active','2025-02-24 10:38:40');
/*!40000 ALTER TABLE `property_listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_viewing`
--

DROP TABLE IF EXISTS `property_viewing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_viewing` (
  `viewing_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`viewing_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `property_viewing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `property_viewing_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_viewing`
--

LOCK TABLES `property_viewing` WRITE;
/*!40000 ALTER TABLE `property_viewing` DISABLE KEYS */;
INSERT INTO `property_viewing` VALUES ('V001','U001','P001','2025-03-01','Scheduled'),('V002','U002','P002','2025-03-02','Completed'),('V003','U003','P003','2025-03-03','Canceled'),('V004','U004','P004','2025-03-04','Scheduled'),('V005','U005','P005','2025-03-05','Completed'),('V006','U006','P006','2025-03-06','Scheduled'),('V007','U007','P007','2025-03-07','Canceled'),('V008','U008','P008','2025-03-08','Completed'),('V009','U009','P009','2025-03-09','Scheduled'),('V010','U010','P010','2025-03-10','Scheduled');
/*!40000 ALTER TABLE `property_viewing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_rating`
--

DROP TABLE IF EXISTS `review_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_rating` (
  `review_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `review_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `review_rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `review_rating_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `review_rating_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_rating`
--

LOCK TABLES `review_rating` WRITE;
/*!40000 ALTER TABLE `review_rating` DISABLE KEYS */;
INSERT INTO `review_rating` VALUES ('R001','U001','P001',5,'Amazing property, great location!','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R002','U002','P002',4,'Very nice apartment, but a bit noisy.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R003','U003','P003',3,'Decent, but needs some maintenance.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R004','U004','P004',5,'Loved it! Would definitely recommend.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R005','U005','P005',2,'Not as advertised, disappointed.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R006','U006','P006',4,'Good value for money.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R007','U007','P007',5,'Perfect, just what I was looking for!','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R008','U008','P008',3,'Okay, but overpriced.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R009','U009','P009',4,'Nice design and layout.','2025-02-24 10:51:57','2025-02-24 10:51:57'),('R010','U010','P010',5,'Best apartment I have rented so far!','2025-02-24 10:51:57','2025-02-24 10:51:57');
/*!40000 ALTER TABLE `review_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(36) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_staff_user` (`user_id`),
  CONSTRAINT `fk_staff_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S001','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw2','2025-02-24 10:03:17','U002'),('S002','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw9','2025-02-24 10:03:17','U009'),('S003','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw14','2025-02-24 10:03:17','U014'),('S004','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw4','2025-02-24 10:03:17','U002'),('S005','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw5','2025-02-24 10:03:17','U009'),('S006','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw6','2025-02-24 10:03:17','U014'),('S007','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw7','2025-02-24 10:03:17','U002'),('S008','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw8','2025-02-24 10:03:17','U009'),('S009','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw9','2025-02-24 10:03:17','U014'),('S010','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw10','2025-02-24 10:03:17','U002'),('S011','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw11','2025-02-24 10:03:17','U009'),('S012','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw12','2025-02-24 10:03:17','U014'),('S013','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw13','2025-02-24 10:03:17','U002'),('S014','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw14','2025-02-24 10:03:17','U009'),('S015','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw15','2025-02-24 10:03:17','U014');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_logs`
--

DROP TABLE IF EXISTS `system_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_logs` (
  `log_id` varchar(50) NOT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `action` text,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `system_logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_logs`
--

LOCK TABLES `system_logs` WRITE;
/*!40000 ALTER TABLE `system_logs` DISABLE KEYS */;
INSERT INTO `system_logs` VALUES ('L001','A001','Created new user account','2025-02-24 10:14:35'),('L002','A002','Deleted property listing','2025-02-24 10:14:35'),('L003','A003','Updated lease agreement','2025-02-24 10:14:35'),('L004','A004','Approved tenant request','2025-02-24 10:14:35'),('L005','A005','Modified staff details','2025-02-24 10:14:35'),('L006','A006','Generated financial report','2025-02-24 10:14:35'),('L007','A007','Suspended user account','2025-02-24 10:14:35'),('L008','A008','Changed admin permissions','2025-02-24 10:14:35'),('L009','A009','Archived old transactions','2025-02-24 10:14:35'),('L010','A010','Updated system settings','2025-02-24 10:14:35'),('L011','A011','Reviewed maintenance request','2025-02-24 10:14:35'),('L012','A012','Added new staff member','2025-02-24 10:14:35'),('L013','A013','Processed payment refund','2025-02-24 10:14:35'),('L014','A014','Scheduled system backup','2025-02-24 10:14:35'),('L015','A015','Restored deleted record','2025-02-24 10:14:35');
/*!40000 ALTER TABLE `system_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `tenant_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tenant_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES ('T001','U003','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw1','2025-02-24 10:19:37'),('T002','U005','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw2','2025-02-24 10:19:37'),('T003','U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw3','2025-02-24 10:19:37'),('T004','U009','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw4','2025-02-24 10:19:37'),('T005','U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw5','2025-02-24 10:19:37'),('T006','U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw6','2025-02-24 10:19:37'),('T007','U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw7','2025-02-24 10:19:37'),('T008','U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw8','2025-02-24 10:19:37'),('T009','U004','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw9','2025-02-24 10:19:37'),('T010','U006','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw10','2025-02-24 10:19:37'),('T011','U008','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw11','2025-02-24 10:19:37'),('T012','U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw12','2025-02-24 10:19:37'),('T013','U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw13','2025-02-24 10:19:37'),('T014','U001','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw14','2025-02-24 10:19:37'),('T015','U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw15','2025-02-24 10:19:37');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `property_id` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `buyer_id` varchar(36) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  KEY `idx_transaction` (`transaction_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('TX001','U001','P001',75000000.00,'Bank Transfer','Completed','2025-02-24 10:48:04',NULL,NULL),('TX002','U002','P002',15000000.00,'Credit Card','Completed','2025-02-24 10:48:04',NULL,NULL),('TX003','U003','P003',10000000.00,'Mobile Money','Pending','2025-02-24 10:48:04',NULL,NULL),('TX004','U004','P004',50000000.00,'Bank Transfer','Completed','2025-02-24 10:48:04',NULL,NULL),('TX005','U005','P005',85000000.00,'Credit Card','Failed','2025-02-24 10:48:04',NULL,NULL),('TX006','U006','P006',25000000.00,'Mobile Money','Completed','2025-02-24 10:48:04',NULL,NULL),('TX007','U007','P007',60000000.00,'Bank Transfer','Pending','2025-02-24 10:48:04',NULL,NULL),('TX008','U008','P008',90000000.00,'Credit Card','Completed','2025-02-24 10:48:04',NULL,NULL),('TX009','U009','P009',40000000.00,'Mobile Money','Completed','2025-02-24 10:48:04',NULL,NULL),('TX010','U010','P010',18000000.00,'Bank Transfer','Pending','2025-02-24 10:48:04',NULL,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff','tenant','buyer','agent','owner') DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_email` (`email`),
  KEY `idx_phone` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('U001','John Mwangi','john.mwangi@email.com','+254712345678','hashed_pw1','admin'),('U002','Jane Wanjiku','jane.wanjiku@email.com','+254723456789','hashed_pw2','staff'),('U003','Alice Njeri','alice.njeri@email.com','+254734567890','hashed_pw3','tenant'),('U004','Bob Otieno','bob.otieno@email.com','+254745678901','hashed_pw4','buyer'),('U005','Eve Achieng','eve.achieng@email.com','+254756789012','hashed_pw5','agent'),('U006','Frank Kamau','frank.kamau@email.com','+254767890123','hashed_pw6','owner'),('U007','Daniel Kipchoge','daniel.kipchoge@email.com','+254778901234','hashed_pw7','tenant'),('U008','Grace Chebet','grace.chebet@email.com','+254789012345','hashed_pw8','buyer'),('U009','Michael Wafula','michael.wafula@email.com','+254790123456','hashed_pw9','staff'),('U010','Nancy Nyambura','nancy.nyambura@email.com','+254701234567','hashed_pw10','admin'),('U011','Peter Ndungu','peter.ndungu@email.com','+254712345678','hashed_pw11','agent'),('U012','Sylvia Wambui','sylvia.wambui@email.com','+254723456789','hashed_pw12','tenant'),('U013','Kevin Muthoni','kevin.muthoni@email.com','+254734567890','hashed_pw13','owner'),('U014','Florence Njuguna','florence.njuguna@email.com','+254745678901','hashed_pw14','staff'),('U015','Victor Mwangi','victor.mwangi@email.com','+254756789012','hashed_pw15','buyer');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `role` enum('Admin','User') DEFAULT 'User',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03  8:53:00
