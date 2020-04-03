-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_mgmt_final
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `coust_detail`
--

DROP TABLE IF EXISTS `coust_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coust_detail` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `cemail` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cphone` varchar(12) DEFAULT NULL,
  `c_no_tables` int(11) NOT NULL,
  `c_table_ids` varchar(45) NOT NULL,
  `c_table_date` varchar(30) DEFAULT NULL,
  `c_table_time` varchar(30) DEFAULT NULL,
  `c_checkout_time` varchar(30) DEFAULT NULL,
  `is_expired` char(1) DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coust_detail`
--

LOCK TABLES `coust_detail` WRITE;
/*!40000 ALTER TABLE `coust_detail` DISABLE KEYS */;
INSERT INTO `coust_detail` VALUES (10,'Harsh Singh','harshsingh@yahoo.com','734-6587-623',1,'5,','20,07,2019','09:00','10:30','1'),(11,'Aman','amanpal17@yahoo.com','814-6319-039',1,'2,','01,08,2019','22:00','23:00','1'),(12,'Arjun','arjun@yahoo.com','732-4676-347',1,'1,','02,08,2019','10:00','11:00','1'),(13,'Yuvarj','yuvbvv','899-6874-455',1,'[9]','01,08,2019','23:40','23:59','1'),(14,'Aman','amanpal@yahoo.com','879-8879-675',1,'2,','02,08,2019','13:24','14:30','1'),(15,'Gaurav Sharma','Sharma12gaurav@gmail.com','9988729970',1,'6,','02,08,2019','13:33','14:30','1'),(16,'a','afyfy@yahoo.com','958-5828-929',1,'5,','02,08,2019','13:35','14:30','1'),(17,'Aman Pal','amanpal@yahoo.com','814-6319-039',4,'2,4,3,1,','12,10,2019','09:58','01:30','1'),(18,'manoj rana','xyz@gmail.com','979-1001-152',1,'9,','28,10,2019','11:59','11:30','1'),(19,'Aman','yahoo@gmail.com','561-5616-516',1,'1,','28,10,2019','14:30','15:30','0'),(20,'asbvfhj','sadfsadf@kjbasfb.com','165-1561-611',1,'2,','28,10,2019','14:05','14:30','0');
/*!40000 ALTER TABLE `coust_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coust_detail_hotel`
--

DROP TABLE IF EXISTS `coust_detail_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coust_detail_hotel` (
  `coust_id` int(11) NOT NULL AUTO_INCREMENT,
  `coust_name` varchar(45) NOT NULL,
  `coust_age` int(11) NOT NULL,
  `coust_gender` varchar(45) NOT NULL,
  `coust_pno` varchar(11) NOT NULL,
  `coust_tor` varchar(45) NOT NULL,
  `coust_roomn` int(11) DEFAULT NULL,
  `coust_checkIn` varchar(45) DEFAULT NULL,
  `coust_checkOut` varchar(45) DEFAULT NULL,
  `is_expired` char(1) NOT NULL,
  PRIMARY KEY (`coust_id`),
  UNIQUE KEY `coust_pno_UNIQUE` (`coust_pno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coust_detail_hotel`
--

LOCK TABLES `coust_detail_hotel` WRITE;
/*!40000 ALTER TABLE `coust_detail_hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `coust_detail_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EID` int(10) unsigned NOT NULL DEFAULT '0',
  `E_name` varchar(45) NOT NULL,
  `E_type` varchar(45) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `E_address` varchar(60) NOT NULL,
  `E_mail` varchar(45) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'vicky kumar','Manager','male','gBBEQT','JAJJAY66@131'),(2,'klaa','Dishwashers','male','jnWD',' KIAA@gmail.com'),(3,'vaseet','Cook','female','gBBEQTsveb','JAJJAY66@131'),(4,'aman','Cook','male','apo',' KIAA@gmail.com'),(5,'sonia ','Cook','female','cC','sonia123@gmail.com'),(6,'cnscn','Serving staff','male','Cjno	c','ncs334@gmail.com'),(7,'Janvi ','Cook','female','House No. 11 , New BI Line,Jalandhar','janvi423@gmail.com'),(25,'harshdeep singh','Manager','male','xjhcgsdjghrtkhkifguvrg','');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_login`
--

DROP TABLE IF EXISTS `guest_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_login` (
  `name` varchar(45) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `visit` varchar(45) DEFAULT NULL,
  `members` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_login`
--

LOCK TABLES `guest_login` WRITE;
/*!40000 ALTER TABLE `guest_login` DISABLE KEYS */;
INSERT INTO `guest_login` VALUES ('hh','          ','hhg@','Restaurant','1');
/*!40000 ALTER TABLE `guest_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials`
--

DROP TABLE IF EXISTS `login_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials`
--

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;
INSERT INTO `login_credentials` VALUES ('aman0181','aman17'),('harsh0181','harsh@0181'),('jeevan','jeevan@0181'),('yuvi0181','yuvi@0181');
/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managments`
--

DROP TABLE IF EXISTS `managments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managments` (
  `job` varchar(45) DEFAULT NULL,
  `jobtype` varchar(45) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managments`
--

LOCK TABLES `managments` WRITE;
/*!40000 ALTER TABLE `managments` DISABLE KEYS */;
INSERT INTO `managments` VALUES ('restaurant','Table Booking',1),('restaurant','Menu',1),('Employee','Employee Managment',2),('Hotel','Room Booking',3);
/*!40000 ALTER TABLE `managments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_detail`
--

DROP TABLE IF EXISTS `menu_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_detail` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Food` varchar(45) NOT NULL,
  `Rate` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_detail`
--

LOCK TABLES `menu_detail` WRITE;
/*!40000 ALTER TABLE `menu_detail` DISABLE KEYS */;
INSERT INTO `menu_detail` VALUES (1,'French Fries','250','Snacks'),(2,'Paneer Dosa','250','Snacks'),(3,'Tikki','250','Snacks'),(4,'Noodles','250','Chinese'),(5,'Spring Roll','250','Chinese'),(6,'Dal Makhni','250','Indian'),(7,'Paneer','250','Indian'),(8,'Rice','250','Indian'),(9,'Roti','250','Indian');
/*!40000 ALTER TABLE `menu_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `food` varchar(45) NOT NULL DEFAULT '',
  `rate` varchar(45) NOT NULL,
  `fid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES ('French Fries','250',1,0),('Paneer Dosa','250',2,0),('Spring Roll','250',5,0);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_query`
--

DROP TABLE IF EXISTS `table_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_query` (
  `tid` int(11) NOT NULL,
  `ttype` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `t_no_people` int(11) NOT NULL,
  `t_book_date` varchar(45) NOT NULL,
  `t_in_time` varchar(45) NOT NULL,
  `t_out_time` varchar(45) NOT NULL,
  `isFilled` varchar(5) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_query`
--

LOCK TABLES `table_query` WRITE;
/*!40000 ALTER TABLE `table_query` DISABLE KEYS */;
INSERT INTO `table_query` VALUES (2,1,9,2,'11,07,2019','09:02','10:00','No'),(5,2,10,4,'20,07,2019','09:00','10:30','No'),(2,1,11,2,'01,08,2019','22:00','23:00','No'),(1,1,12,2,'02,08,2019','10:00','11:00','No'),(9,3,13,8,'01,08,2019','23:40','23:59','No'),(2,1,9,2,'02,08,2019','13:24','14:30','No'),(6,2,15,4,'02,08,2019','13:33','14:30','No'),(5,2,16,4,'02,08,2019','13:35','14:30','No'),(2,1,9,2,'12,10,2019','09:58','01:30','No'),(4,1,9,2,'12,10,2019','09:58','01:30','No'),(3,1,9,2,'12,10,2019','09:58','01:30','No'),(1,1,9,2,'12,10,2019','09:58','01:30','No'),(9,3,18,6,'28,10,2019','11:59','11:30','No'),(1,1,19,2,'28,10,2019','14:30','15:30','No'),(2,1,20,2,'28,10,2019','14:05','14:30','No');
/*!40000 ALTER TABLE `table_query` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-31 14:45:08
