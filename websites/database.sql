-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: 
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB-1:10.6.4+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `assignment1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `assignment1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `assignment1`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','d9d51a756602ceaf004bd18e16b58ab964e78d82');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `categoryId` varchar(45) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Mo Salah is GETTING EVEN BETTER!','Sports',' Currently the best footballer in the EPL with an unmatched performance. \r\n\r\nEdit: He had an outstanding performance last night showing that he only gets better with playtime!	','2021-11-15'),(2,'Chelsea are dominating the football scene!','Sports','And they make it look so easy when they do it.','2021-11-15'),(3,'AMD have taken over INTEL in sales!','Technology','AMD are officially the top of the computer building game. INTEL are slowly decreasing in sales.','2021-11-14'),(4,'Brand new brief case makes all kinds of business easy!','Business','the briefcase has over 10 compartments making it easy to separate all papers and electronic devices easily and in an organised fashion.','2021-11-14'),(5,'Tornado hits Northampton!','Local News','Northampton has been hit by a tornado causing millions in damages!','2021-11-14'),(6,'Killer Clowns all over Northampton!','Business','Northampton is overrun by killer clowns it is not safe to leave your house!','2021-11-13'),(7,'Phoenix Suns win the NBA!','Sports','Underdogs Phoenix Suns have beaten the Raptors to take the title and won the NBA after years of being at the bottom. ','2021-11-12'),(8,'DO NOT BUY SECOND HAND GPU\'S! Here\'s why.','Technology','Many Graphics Cards, namely the Nvidia RTX 3060Ti are being used for data mining. With the GPU shortage people are easily able to up sale them and make a profit. However, before doing so they are datamining using these GPU\'s making them lack in intended performance. People are paying up to quadruple the price for a GPU that performs at half its capacity. TRULY EVIL!','2021-11-11'),(9,'Stock market drops by 15% globally!','Business','Major stock market crash has everyone panic selling their shares!','2021-11-11'),(10,'New restaurant Pepe\'s Piri Piri taking over!','Local News','This chicken restaurant is taking over with its perfect seasoning, fries, rice and more!','2021-11-11'),(11,'Northampton University to open a Charity!','Local News','Opening a Charity to raise money for people who cannot afford the education they have a right to.','2021-11-09');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Business'),('Local News'),('Sports'),('Technology');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `names` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'bengrab@example.com','99ab1b06639084fe51c8f8094e98bf44aef532d7','Ben'),(2,'Bob@example.com','e6a0e499503365afba3e825c968bb8140940b115','Bob'),(3,'Carter@example.com','c608635db3da1f9a0e00f16378fcfd8b6c9573ae','Carter');
