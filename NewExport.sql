-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_api
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20230403164404_Initial','6.0.0'),('20230403173414_addImageLink','6.0.0'),('20230403174151_addBrand','6.0.0'),('20230403180241_makingSureChangesSet','6.0.0');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `Type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Price` int NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ShortDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ReviewCount` int DEFAULT NULL,
  `ImageLink` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Brand` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `InStock` int DEFAULT '0',
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'CPU','i9-9900k',435,'Intel Core i9-9900K Desktop Processor 8 Cores up to 5.0 GHz Turbo Unlocked LGA1151 300 Series 95W','8 Cores up to 5.0 GHz Turbo Unlocked',NULL,'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61qUfPKfqJL.jpg','Intel',3),(3,'CPU','i9-13900k',630,'Intel Core i9-13900K Desktop Processor 24 cores (8 P-cores + 16 E-cores) 36M Cache, up to 5.8 GHz','24 cores (8 P-cores + 16 E-cores) up to 5.8 GHz',NULL,'https://m.media-amazon.com/images/I/61uI+orDOZL._AC_SX679_.jpg','Intel',2),(4,'CPU','i7-13700k',418,'Intel Core i7-13700K Desktop Processor 16 cores (8 P-cores + 8 E-cores) 30M Cache, up to 5.4 GHz','16 cores (8 P-cores + 8 E-cores) up to 5.4 GHz',NULL,'https://m.media-amazon.com/images/I/61gcREq9LqL._AC_SX679_.jpg','Intel',5),(5,'CPU','i5-13500k',320,'Intel Core i5-13600K Desktop Processor 14 cores (6 P-cores + 8 E-cores) 24M Cache, up to 5.1 GHz','14 cores (6 P-cores + 8 E-cores) up to 5.1 GHz',NULL,'https://m.media-amazon.com/images/I/61ObMmbxwgL._AC_SX679_.jpg','Intel',1),(6,'CPU','i5-9400F',155,'Intel® Core™ i5-9400F Desktop Processor 6 Cores 4.1 GHz Turbo Without Graphics','6 Cores 4.1 GHz Turbo',NULL,'https://m.media-amazon.com/images/I/71709S6VMTL._AC_SX466_.jpg','Intel',7),(7,'GPU','GIGABYTE GeForce RTX 3050',380,'Gigabyte GeForce RTX 3050 Gaming OC 8G Graphics Card, 3X WINDFORCE Fans, 8GB GDDR6 128-bit GDDR6, GV-N3050GAMING OC-8GD Video Card','8GB 128-bit GDDR6',NULL,'https://m.media-amazon.com/images/I/714+DsKIF4L._AC_SX679_.jpg','nVIDIA',6),(8,'GPU','GIGABYTE GeForce RTX 3060',480,'GIGABYTE GeForce RTX 3060 Gaming OC 12G (REV2.0) Graphics Card, 3X WINDFORCE Fans, 12GB 192-bit GDDR6, GV-N3060GAMING OC-12GD Video Card','12GB 192-bit GDDR6',NULL,'https://m.media-amazon.com/images/I/715UuCH5OES._AC_SX679_.jpg','nVIDIA',4),(9,'GPU','Gigabyte ASUS TUF Gaming NVIDIA GeForce RTX 3080',899,'Gigabyte ASUS TUF Gaming NVIDIA GeForce RTX 3080 Graphics Card (PCIe 4.0, 10GB GDDR6X, HDMI 2.1, DisplayPort 1.4a, Dual Ball Fan Bearings, Military-Grade Certification, GPU Tweak II)','10GB GDDR6X',NULL,'https://m.media-amazon.com/images/I/51hpFQNOHVL._AC_US40_.jpg','nVIDIA',2),(10,'GPU','ASUS ROG STRIX NVIDIA GeForce RTX 3090',1800,'ASUS ROG STRIX NVIDIA GeForce RTX 3090 Gaming Graphics Card- PCIe 4.0, 24GB GDDR6X, HDMI 2.1, DisplayPort 1.4a, Axial-Tech Fan Design, 2.9-Slot','24GB GDDR6X, HDMI 2.1',NULL,'https://m.media-amazon.com/images/I/91XyrUFYKfL._AC_SX450_.jpg','nVIDIA',8),(11,'RAM','Crucial RAM 64GB Kit',250,'Crucial RAM 64GB Kit (2x32GB) DDR5 4800MHz CL40 Desktop Memory CT2K32G48C40U5','DDR5 4800MHz',NULL,'https://m.media-amazon.com/images/I/61mb0D6P8bL._AC_SX450_PIbundle-2,TopRight,0,0_SH20_.jpg','Crucial',4),(12,'RAM','Corsair Vengeance LPX 16GB',65,'Corsair Vengeance LPX 16GB (2x8GB) DDR4 DRAM 3200MHz C16 Desktop Memory Kit - Black (CMK16GX4M2B3200C16)','DDR4 DRAM 3200MHz',NULL,'https://m.media-amazon.com/images/I/21xj0cR60NL._AC_US40_.jpg','Corsair',3),(13,'RAM','Corsair Vengeance RGB Pro 32GB',132,'Corsair Vengeance RGB Pro 32GB (2x16GB) DDR4 3200 (PC4-25600) C16 Desktop memory – Black','DDR4 3200Mhz',NULL,'https://m.media-amazon.com/images/I/31j7scQGYES._AC_US40_.jpg','Corsair',5),(14,'Motherboard','MSI MAG Z590 Tomahawk WiFi Gaming Motherboard',201,'MSI MAG Z590 Tomahawk WiFi Gaming Motherboard (ATX, 11th/10th Gen Intel Core, LGA 1200 Socket, DDR4, PCIe 4, CFX, M.2 Slots, USB 3.2 Gen 2, Wi-Fi 6E, DP/HDMI, Mystic Light RGB) (Renewed)','1200 Socket, DDR4, PCIe 4, CFX, M.2 Slots',NULL,'https://m.media-amazon.com/images/I/51Javb1uH6L._AC_US40_.jpg','MSI',6),(15,'Motherboard','MSI MEG X670E GODLIKE Gaming Motherboard',1280,'MSI MEG X670E GODLIKE Gaming Motherboard (AMD AM5, DDR5, PCIe 5.0, SATA 6Gb/s, M.2, USB 3.2 Gen 2, Wi-Fi 6E, HDMI/DP, Dual LAN, SLI, EATX)','AM5, DDR5, PCIe 5.0, SATA 6Gb/s, M.2,',NULL,'https://m.media-amazon.com/images/I/514f6Szid6L._AC_US40_.jpg','MSI',7),(16,'Motherboard','ASUS AM4 TUF Gaming X570-Plus',210,'ASUS AM4 TUF Gaming X570-Plus (Wi-Fi) AM4 Zen 3 Ryzen 5000 & 3rd Gen Ryzen ATX Motherboard with PCIe 4.0, Dual M.2, 12+2 with Dr. MOS Power Stage','PCIe 4.0, Dual M.2',NULL,'https://m.media-amazon.com/images/I/41BFW6Kt+lL._AC_US40_.jpg','ASUS',2),(17,'Motherboard','Asus ROG Maximus XIII Extreme Glacial',1500,'Asus ROG Maximus XIII Extreme Glacial (WiFi 6E) Z590 LGA 1200(Intel® 11th) EATX gaming motherboard (PCIe 4.0,18+2 power stages,integrated EK water block, 5xM.2 slots, 2xThunderbolt™ 4, 10 & 2.5Gb LAN)','integrated EK water block, 5xM.2 slots, 2xThunderbolt™ 4',NULL,'https://m.media-amazon.com/images/I/41pzTDHL7KL._AC_US40_.jpg','ASUS',11),(18,'PSU','Corsair RMX Series (2021), RM1000x',190,'Corsair RMX Series (2021), RM1000x, 1000 Watt, Gold, Fully Modular Power Supply,Black','1000 Watt, Gold, Fully Modular',NULL,'https://m.media-amazon.com/images/I/414VzwSqXwS._AC_US40_.jpg','Corsair',9),(19,'PSU','Corsair HX1500i, HXi Series',400,'Corsair HX1500i, HXi Series, 80 PLUS Platinum Fully Modular Ultra-Low Noise ATX Digital Power Supply (Triple EPS12V Connectors, 140mm Fluid Dynamic Bearing Fan, Zero RPM Fan Mode) Black','80 PLUS Platinum Fully Modular',NULL,'https://m.media-amazon.com/images/I/410cDoeQwfL._AC_US40_.jpg','Corsair',2),(20,'PSU','Asus 1000W ROG Loki',490,'Asus 1000W ROG Loki SFX-L Platinum PSU, Small Form Factor, Fully Modular, 80+ Platinum, 0dB Fan Button, RGB, ATX-to- SFX Bracket, 10 Year Warranty','80+ Platinum, 0dB Fan Button, RGB, ATX-to- SFX Bracket',NULL,'https://m.media-amazon.com/images/I/41RCWL73wML._AC_US40_.jpg','ASUS',5),(21,'FAN','Corsair LL Series LL120 RGB',130,'Corsair LL Series LL120 RGB 120mm Dual Light Loop RGB LED PWM Fan 3 Fan Pack with Lighting Node Pro (CO-9050072-WW), Black','120mm Dual Light Loop RGB LED PWM Fan 3 Fan Pack',NULL,'https://m.media-amazon.com/images/I/51GlfZCtpoL._AC_US40_.jpg','Corsair',6),(22,'FAN','Noctua NF-P12 redux-1700 PWM',16,'Noctua NF-P12 redux-1700 PWM, High Performance Cooling Fan, 4-Pin, 1700 RPM (120mm, Grey)',' 4-Pin, 1700 RPM (120mm, Grey)',NULL,'https://m.media-amazon.com/images/I/41WW6lGd9sL._AC_US40_.jpg','Noctua',8),(23,'FAN','CORSAIR iCUE SP120 RGB',80,'CORSAIR iCUE SP120 RGB Elite Performance 120mm White PWM Triple Fan Kit with iCUE Lighting Node','120mm White PWM Triple Fan Kit',NULL,'https://m.media-amazon.com/images/I/41F1nfV4s2S._AC_US40_.jpg','Corsair',1),(24,'CASE','NZXT H5 Elite Compact ATX Mid-Tower',140,'NZXT H5 Elite Compact ATX Mid-Tower PC Gaming Case – Built-in RGB Lighting – Tempered Glass Front and Side Panels – Cable Management – 2 x 140mm RGB Fans Included – 280mm Radiator Support – Black','Built-in RGB Lighting – Tempered Glass Front and Side Panels',NULL,'https://m.media-amazon.com/images/I/41naNhGw58L._AC_US40_.jpg','NZXT',5),(25,'CASE','ASUS TUF Gaming GT501 ZENITSU Mid-Tower',210,'ASUS TUF Gaming GT501 ZENITSU Mid-Tower Computer Case for up to EATX Motherboards with USB 3.0 Front Panel Cases GT501/GRY/WITH Handle Demon Slayer Edition','Up to EATX Motherboards with USB 3.0 Front Panel',NULL,'https://m.media-amazon.com/images/I/41GeuddzPgL._AC_US40_.jpg','ASUS',0),(26,'CASE','NZXT H5 Flow Compact ATX Mid-Tower',95,'NZXT H5 Flow Compact ATX Mid-Tower PC Gaming Case – High Airflow Perforated Front Panel – Tempered Glass Side Panel – Cable Management – 2 x 120mm Fans Included – 280mm Radiator Support – White','High Airflow Perforated Front Panel – Tempered Glass Side Panel',NULL,'https://m.media-amazon.com/images/I/41BdzLrr0NL._AC_US40_.jpg','NZXT',7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int NOT NULL,
  `Title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ReviewId`),
  KEY `IX_Reviews_ProductId` (`ProductId`),
  CONSTRAINT `FK_Reviews_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 10:32:49
