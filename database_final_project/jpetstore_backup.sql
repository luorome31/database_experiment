-- MySQL dump 10.13  Distrib 5.5.36, for Win32 (x86)
--
-- Host: localhost    Database: mypetstore
-- ------------------------------------------------------
-- Server version	5.5.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('ACID','acid@yourdomain.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555'),('j2ee','meishinan@gmail.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555'),('meishinan','meishinan318@gmail.com','mei','shinan',NULL,'csu_street','csu_street','Changsha','Hunan','zh','China','18250147393'),('serviceTest','test@example.com','John','Doe','OK','123 Main St','Apt 1B','Anytown','OK','12345','USA','123-456-7890'),('test_user','test@example.com','John','Doe','OK','123 Main St','Apt 1B','Anytown','NY','12345','USA','123-456-7890');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannerdata`
--

DROP TABLE IF EXISTS `bannerdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannerdata`
--

LOCK TABLES `bannerdata` WRITE;
/*!40000 ALTER TABLE `bannerdata` DISABLE KEYS */;
INSERT INTO `bannerdata` VALUES ('BIRDS','<image src=\"images/banner_birds.gif\">'),('CATS','<image src=\"images/banner_cats.gif\">'),('DOGS','<image src=\"images/banner_dogs.gif\">'),('FISH','<image src=\"images/banner_fish.gif\">'),('REPTILES','<image src=\"images/banner_reptiles.gif\">');
/*!40000 ALTER TABLE `bannerdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `username` varchar(255) NOT NULL,
  `itemId` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`username`,`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('BIRDS','Birds','<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>'),('CATS','Cats','<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>'),('DOGS','Dogs','<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>'),('FISH','Fish','<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>'),('FOX','FOX','<image src=\"../images/fox.gif\"><font size=\"5\" color=\"blue\"> FOX</font>'),('REPTILES','Reptiles','<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('EST-1',9900),('EST-10',10000),('EST-11',10000),('EST-12',10000),('EST-13',10000),('EST-14',10000),('EST-15',10000),('EST-16',10000),('EST-17',10000),('EST-18',10000),('EST-19',10000),('EST-2',10000),('EST-20',10000),('EST-21',10000),('EST-22',10000),('EST-23',10000),('EST-24',10000),('EST-25',10000),('EST-26',10000),('EST-27',10000),('EST-28',10000),('EST-3',10000),('EST-4',10000),('EST-5',10000),('EST-6',10000),('EST-7',10000),('EST-8',10000),('EST-9',10000);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('EST-1','FI-SW-01',16.50,10.00,1,'P','Large',NULL,NULL,NULL,NULL),('EST-10','K9-DL-01',18.50,12.00,1,'P','Spotted Adult Female',NULL,NULL,NULL,NULL),('EST-11','RP-SN-01',18.50,12.00,1,'P','Venomless',NULL,NULL,NULL,NULL),('EST-12','RP-SN-01',18.50,12.00,1,'P','Rattleless',NULL,NULL,NULL,NULL),('EST-13','RP-LI-02',18.50,12.00,1,'P','Green Adult',NULL,NULL,NULL,NULL),('EST-14','FL-DSH-01',58.50,12.00,1,'P','Tailless',NULL,NULL,NULL,NULL),('EST-15','FL-DSH-01',23.50,12.00,1,'P','With tail',NULL,NULL,NULL,NULL),('EST-16','FL-DLH-02',93.50,12.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-17','FL-DLH-02',93.50,12.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-18','AV-CB-01',193.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-19','AV-SB-02',15.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-2','FI-SW-01',16.50,10.00,1,'P','Small',NULL,NULL,NULL,NULL),('EST-20','FI-FW-02',5.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-21','FI-FW-02',5.29,1.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-22','K9-RT-02',135.50,100.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-23','K9-RT-02',145.49,100.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-24','K9-RT-02',255.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-25','K9-RT-02',325.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-26','K9-CW-01',125.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-27','K9-CW-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-28','K9-RT-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-3','FI-SW-02',18.50,12.00,1,'P','Toothless',NULL,NULL,NULL,NULL),('EST-4','FI-FW-01',18.50,12.00,1,'P','Spotted',NULL,NULL,NULL,NULL),('EST-5','FI-FW-01',18.50,12.00,1,'P','Spotless',NULL,NULL,NULL,NULL),('EST-6','K9-BD-01',18.50,12.00,1,'P','Male Adult',NULL,NULL,NULL,NULL),('EST-7','K9-BD-01',18.50,12.00,1,'P','Female Puppy',NULL,NULL,NULL,NULL),('EST-8','K9-PO-02',18.50,12.00,1,'P','Male Puppy',NULL,NULL,NULL,NULL),('EST-9','K9-DL-01',18.50,12.00,1,'P','Spotless Male Puppy',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineitem`
--

DROP TABLE IF EXISTS `lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineitem`
--

LOCK TABLES `lineitem` WRITE;
/*!40000 ALTER TABLE `lineitem` DISABLE KEYS */;
INSERT INTO `lineitem` VALUES (0,1,'EST-4',1,18.50),(0,2,'EST-8',1,18.50),(0,3,'EST-19',11,15.50),(0,4,'EST-21',2,5.29),(0,5,'EST-6',9,18.50),(0,6,'EST-7',3,18.50),(0,7,'EST-9',4,18.50),(1000,1,'EST-12',8,18.50),(1000,2,'EST-18',25,193.50),(1000,3,'EST-19',11,15.50),(1000,4,'EST-21',2,5.29),(1000,5,'EST-6',9,18.50),(1000,6,'EST-7',3,18.50),(1000,7,'EST-9',4,18.50),(1001,1,'EST-9',1,18.50),(1001,2,'EST-26',1,125.50),(1001,3,'EST-24',1,255.50),(1002,1,'EST-14',1,58.50),(1003,1,'EST-15',1,23.50),(1004,1,'EST-28',1,155.29),(1005,1,'EST-13',2,18.50),(1005,2,'EST-6',1,18.50),(1006,1,'EST-8',9,18.50),(1006,2,'EST-9',2,18.50),(1007,1,'EST-27',1,155.29),(1008,1,'EST-9',1,18.50),(1009,1,'EST-7',1,18.50),(1010,1,'EST-7',1,18.50),(1011,1,'EST-25',1,325.29),(1012,1,'EST-8',1,18.50),(1013,1,'EST-28',1,155.29),(1013,2,'EST-24',1,255.50),(1014,1,'EST-28',1,155.29),(1015,1,'EST-27',1,155.29),(1016,1,'EST-25',10,325.29),(1017,1,'EST-8',1,18.50),(1017,2,'EST-28',1,155.29),(1018,1,'EST-27',1,155.29),(1019,1,'EST-8',1,18.50),(1020,1,'EST-3',1,18.50),(1021,1,'EST-27',7,155.29),(1022,1,'EST-24',8,255.50),(1023,1,'EST-6',2,18.50),(1023,2,'EST-1',7,16.50),(1024,1,'EST-8',1,18.50),(1025,1,'EST-20',9,5.50),(1026,1,'EST-20',4,5.50),(1026,2,'EST-24',83,255.50),(1026,3,'EST-28',2,155.29),(1026,4,'EST-5',1,18.50),(1027,1,'EST-24',1,255.50),(1028,1,'EST-24',1,255.50),(1029,1,'EST-5',5,18.50),(1029,2,'EST-24',8,255.50),(1029,3,'EST-26',1,125.50),(1029,4,'EST-23',1,145.49),(1030,1,'EST-9',2,18.50),(1030,2,'EST-8',1,18.50),(1031,1,'EST-10',3,18.50),(1031,2,'EST-20',2,5.50),(1031,3,'EST-24',5,255.50),(1031,4,'EST-26',2,125.50),(1032,1,'EST-23',1,145.49),(1033,1,'EST-28',1,155.29),(1034,1,'EST-10',1,18.50),(1035,1,'EST-10',1,18.50),(1036,1,'EST-23',6,145.49),(1037,1,'EST-20',1,5.50),(1037,2,'EST-23',5,145.49),(1038,1,'EST-28',1,155.29),(1039,1,'EST-22',1,135.50),(1040,1,'EST-22',1,135.50),(1041,1,'EST-28',1,155.29),(1042,1,'EST-28',1,155.29),(1043,1,'EST-20',1,5.50),(1043,2,'EST-28',2,155.29),(1044,1,'EST-28',1,155.29),(1045,1,'EST-8',1,18.50),(1046,1,'EST-9',1,18.50),(1047,1,'EST-8',1,18.50),(1047,2,'EST-10',5,18.50),(9999,0,'0',0,0.00);
/*!40000 ALTER TABLE `lineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsheet`
--

DROP TABLE IF EXISTS `logsheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logsheet` (
  `userId` varchar(255) NOT NULL,
  `record` text,
  `recordDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsheet`
--

LOCK TABLES `logsheet` WRITE;
/*!40000 ALTER TABLE `logsheet` DISABLE KEYS */;
INSERT INTO `logsheet` VALUES ('test','test','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Remove Item from Cart - workingItemId: EST-12','2023-11-07'),('j2ee','View Item - itemId: EST-18','2023-11-07'),('test','test','2023-11-07'),('test','test','2023-11-07'),('test','test','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-7','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','View Item - itemId: EST-7','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-7','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','View Item - itemId: EST-27','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-27','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-13','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-21','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-11','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-14','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-13','2023-11-07'),('j2ee','Remove Item from Cart - workingItemId: EST-13','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Remove Item from Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-12','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-7','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: ','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-7','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-6','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2023-11-07'),('j2ee','View Item - itemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-18','2023-11-07'),('meishinan','Add Item to Cart - workingItemId: EST-13','2023-11-07'),('meishinan','Add Item to Cart - workingItemId: EST-13','2023-11-07'),('j2ee','View Item - itemId: EST-19','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-26','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-24','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-14','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-15','2023-11-07'),('j2ee','View Item - itemId: EST-15','2023-11-07'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-11-08'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-11-08'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-11-08'),('meishinan','View Item - itemId: EST-6','2023-11-08'),('meishinan','Add Item to Cart - workingItemId: EST-6','2023-11-08'),('meishinan','Add Item to Cart - workingItemId: EST-6','2023-11-08'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-27','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-7','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-25','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-24','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-25','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-9','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-27','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-25','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-25','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-28','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-27','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-8','2023-12-31'),('j2ee','Add Item to Cart - workingItemId: EST-3','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-3','2024-01-03'),('j2ee','View Item - itemId: EST-5','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-03'),('j2ee','View Item - itemId: EST-5','2024-01-03'),('j2ee','View Item - itemId: EST-4','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-27','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-1','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-6','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-1','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-8','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-03'),('j2ee','View Item - itemId: EST-20','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-03'),('j2ee','View Item - itemId: EST-20','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-03'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-03'),('j2ee','View Item - itemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','View Item - itemId: EST-20','2024-01-04'),('j2ee','View Item - itemId: EST-24','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-04'),('j2ee','View Item - itemId: EST-24','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-28','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-04'),('j2ee','View Item - itemId: EST-24','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-04'),('j2ee','View Item - itemId: EST-24','2024-01-04'),('j2ee','View Item - itemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-5','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-26','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-9','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-9','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-8','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-9','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-04'),('j2ee','Add Item to Cart - workingItemId: EST-24','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-26','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-10','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-10','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-10','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-26','2024-01-06'),('j2ee','View Item - itemId: EST-20','2024-01-06'),('j2ee','View Item - itemId: EST-20','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-06'),('j2ee','Add Item to Cart - workingItemId: EST-22','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-23','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-07'),('j2ee','View Item - itemId: EST-5','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-07'),('j2ee','View Item - itemId: EST-19','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-19','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-20','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-07'),('j2ee','Add Item to Cart - workingItemId: EST-8','2024-01-12'),('j2ee','Add Item to Cart - workingItemId: EST-9','2024-01-12'),('j2ee','Add Item to Cart - workingItemId: EST-8','2024-01-13'),('j2ee','Add Item to Cart - workingItemId: EST-10','2024-01-13'),('j2ee','Add Item to Cart - workingItemId: EST-28','2024-01-13'),('j2ee','Add Item to Cart - workingItemId: EST-8','2024-01-13'),('j2ee','Add Item to Cart - workingItemId: EST-26','2024-01-13'),('test','test','2024-03-18'),('test','test','2024-03-18');
/*!40000 ALTER TABLE `logsheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (0,'j2ee','2023-11-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1000,'j2ee','2023-11-04','address1','address2','city','state','zip','country','billaddress1','billaddress2','billcity','billstate','billzip','billcountry','courier',100.00,'billfirstname','billlastname','shipfirstname','shiplastname','creditcard','12/12','cardtype','locale'),(1001,'j2ee','2023-11-04','address1','address2','city','state','zip','country','billaddress1','billaddress2','billcity','billstate','billzip','billcountry','courier',100.00,'billfirstname','billlastname','shipfirstname','shiplastname','creditcard','12/12','cardtype','locale'),(1002,'j2ee','2023-11-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',58.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1003,'j2ee','2023-11-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',23.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1004,'j2ee','2023-11-08','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1005,'meishinan','2023-11-08','csu_street','csu_street','Changsha','Hunan','zh','China','csu_street','csu_street','Changsha','Hunan','zh','China','UPS',55.50,'mei','shinan','mei','shinan','999 9999 9999 9999','12/03','Visa','CA'),(1006,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',203.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1007,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1008,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1009,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1010,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1011,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',325.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1012,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1013,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',410.79,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1014,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1015,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1016,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',3252.90,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1017,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',173.79,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1018,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1019,'j2ee','2023-12-31','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1020,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1021,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',1087.03,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1022,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',2044.00,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1023,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',152.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1024,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1025,'j2ee','2024-01-03','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',49.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1026,'j2ee','2024-01-04','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',21557.58,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1027,'j2ee','2024-01-04','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',255.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1028,'j2ee','2024-01-04','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',255.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1029,'j2ee','2024-01-04','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',2407.49,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1030,'j2ee','2024-01-04','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',55.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1031,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',1595.00,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1032,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',145.49,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1033,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1034,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1035,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1036,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',872.94,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1037,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',732.95,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1038,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1039,'j2ee','2024-01-06','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',135.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1040,'j2ee','2024-01-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',135.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1041,'j2ee','2024-01-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1042,'j2ee','2024-01-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1043,'j2ee','2024-01-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',316.08,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1044,'j2ee','2024-01-07','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',155.29,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1045,'j2ee','2024-01-12','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1046,'j2ee','2024-01-12','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',18.50,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(1047,'j2ee','2024-01-13','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','UPS',111.00,'ABC','XYX','ABC','XYX','999 9999 9999 9999','12/03','Visa','CA'),(11111,'j2ee','2024-03-18','address1','address2','city','state','zip','country','billaddress1','billaddress2','billcity','billstate','billzip','billcountry','courier',100.00,'billfirstname','billlastname','shipfirstname','shiplastname','creditcard','12/12','cardtype','locale');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (0,0,'2023-11-06','P'),(1000,1000,'2023-11-04','ok'),(1001,1001,'2023-11-04','ok'),(1002,1002,'2023-11-07','P'),(1003,1003,'2023-11-07','P'),(1004,1004,'2023-11-08','P'),(1005,1005,'2023-11-08','P'),(1006,1006,'2023-12-31','P'),(1007,1007,'2023-12-31','P'),(1008,1008,'2023-12-31','P'),(1009,1009,'2023-12-31','P'),(1010,1010,'2023-12-31','P'),(1011,1011,'2023-12-31','P'),(1012,1012,'2023-12-31','P'),(1013,1013,'2023-12-31','P'),(1014,1014,'2023-12-31','P'),(1015,1015,'2023-12-31','P'),(1016,1016,'2023-12-31','P'),(1017,1017,'2023-12-31','P'),(1018,1018,'2023-12-31','P'),(1019,1019,'2023-12-31','P'),(1020,1020,'2024-01-03','P'),(1021,1021,'2024-01-03','P'),(1022,1022,'2024-01-03','P'),(1023,1023,'2024-01-03','P'),(1024,1024,'2024-01-03','P'),(1025,1025,'2024-01-03','P'),(1026,1026,'2024-01-04','P'),(1027,1027,'2024-01-04','P'),(1028,1028,'2024-01-04','P'),(1029,1029,'2024-01-04','P'),(1030,1030,'2024-01-04','P'),(1031,1031,'2024-01-06','P'),(1032,1032,'2024-01-06','P'),(1033,1033,'2024-01-06','P'),(1034,1034,'2024-01-06','P'),(1035,1035,'2024-01-06','P'),(1036,1036,'2024-01-06','P'),(1037,1037,'2024-01-06','P'),(1038,1038,'2024-01-06','P'),(1039,1039,'2024-01-06','P'),(1040,1040,'2024-01-07','P'),(1041,1041,'2024-01-07','P'),(1042,1042,'2024-01-07','P'),(1043,1043,'2024-01-07','P'),(1044,1044,'2024-01-07','P'),(1045,1045,'2024-01-12','P'),(1046,1046,'2024-01-12','P'),(1047,1047,'2024-01-13','P'),(11111,11111,'2024-03-18','ok');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AV-CB-01','BIRDS','Amazon Parrot','<image src=\"images/bird2.gif\">Great companion for up to 75 years'),('AV-SB-02','BIRDS','Finch','<image src=\"images/bird1.gif\">Great stress reliever'),('FI-FW-01','FISH','Koi','<image src=\"images/fish3.gif\">Fresh Water fish from Japan'),('FI-FW-02','FISH','Goldfish','<image src=\"images/fish2.gif\">Fresh Water fish from China'),('FI-SW-01','FISH','Angelfish','<image src=\"images/fish1.gif\">Salt Water fish from Australia'),('FI-SW-02','FISH','Tiger Shark','<image src=\"images/fish4.gif\">Salt Water fish from Australia'),('FISH-110','FISH','york','<image src=\"images/fish101.gif\">Salt Water fish from Asia'),('FL-DLH-02','CATS','Persian','<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess'),('FL-DSH-01','CATS','Manx','<image src=\"images/cat2.gif\">Great for reducing mouse populations'),('K9-BD-01','DOGS','Bulldog','<image src=\"images/dog2.gif\">Friendly dog from England'),('K9-CW-01','DOGS','Chihuahua','<image src=\"images/dog4.gif\">Great companion dog'),('K9-DL-01','DOGS','Dalmation','<image src=\"images/dog5.gif\">Great dog for a Fire Station'),('K9-PO-02','DOGS','Poodle','<image src=\"images/dog6.gif\">Cute dog from France'),('K9-RT-01','DOGS','Golden Retriever','<image src=\"images/dog1.gif\">Great family dog'),('K9-RT-02','DOGS','Labrador Retriever','<image src=\"images/dog5.gif\">Great hunting dog'),('RP-LI-02','REPTILES','Iguana','<image src=\"images/lizard1.gif\">Friendly green friend'),('RP-SN-01','REPTILES','Rattlesnake','<image src=\"images/snake1.gif\">Doubles as a watch dog');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` int(11) DEFAULT NULL,
  `banneropt` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('ACID','english','CATS',1,1),('j2ee','english','DOGS',1,1),('meishinan','english','CATS',NULL,NULL),('serviceTest','English','CAT123',NULL,NULL),('test_user2','English','CAT123',NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('ordernum',1049);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signon`
--

DROP TABLE IF EXISTS `signon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signon`
--

LOCK TABLES `signon` WRITE;
/*!40000 ALTER TABLE `signon` DISABLE KEYS */;
INSERT INTO `signon` VALUES ('ACID','ACID'),('j2ee','j2ee'),('meishinan','1234'),('serviceTest','123'),('test_user','password123');
/*!40000 ALTER TABLE `signon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024',' '),(2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');
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

-- Dump completed on 2024-06-30  1:47:19