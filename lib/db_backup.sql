-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sharingdasiss_development
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `post_requirement_id` int(11) DEFAULT NULL,
  `seeked_shared` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  `rider_post_requirement_id` int(11) DEFAULT NULL,
  `peer_service_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `box_1` int(11) DEFAULT NULL,
  `box_2` int(11) DEFAULT NULL,
  `box_3` int(11) DEFAULT NULL,
  `box_4` int(11) DEFAULT NULL,
  `box_5` int(11) DEFAULT NULL,
  `box_6` int(11) DEFAULT NULL,
  `box_7` int(11) DEFAULT NULL,
  `box_8` int(11) DEFAULT NULL,
  `box_9` int(11) DEFAULT NULL,
  `box_10` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,4,2,1,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-20 12:42:14','2015-01-23 13:20:23');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_activities`
--

DROP TABLE IF EXISTS `book_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `book_order_id` int(11) DEFAULT NULL,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `seeked_shared` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_activities`
--

LOCK TABLES `book_activities` WRITE;
/*!40000 ALTER TABLE `book_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_messages`
--

DROP TABLE IF EXISTS `book_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `posted_to` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `read` tinyint(1) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `trashed` tinyint(1) DEFAULT NULL,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `book_order_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_messages`
--

LOCK TABLES `book_messages` WRITE;
/*!40000 ALTER TABLE `book_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_negotiates`
--

DROP TABLE IF EXISTS `book_negotiates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_negotiates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nego_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_negotiates`
--

LOCK TABLES `book_negotiates` WRITE;
/*!40000 ALTER TABLE `book_negotiates` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_negotiates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order_cancels`
--

DROP TABLE IF EXISTS `book_order_cancels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_order_cancels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_order_id` int(11) DEFAULT NULL,
  `cancel_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order_cancels`
--

LOCK TABLES `book_order_cancels` WRITE;
/*!40000 ALTER TABLE `book_order_cancels` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_order_cancels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_orders`
--

DROP TABLE IF EXISTS `book_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_orders`
--

LOCK TABLES `book_orders` WRITE;
/*!40000 ALTER TABLE `book_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_post_requirements`
--

DROP TABLE IF EXISTS `book_post_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_post_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `seeker_provider` tinyint(1) DEFAULT NULL,
  `isbn_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_posting` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_post_requirements`
--

LOCK TABLES `book_post_requirements` WRITE;
/*!40000 ALTER TABLE `book_post_requirements` DISABLE KEYS */;
INSERT INTO `book_post_requirements` VALUES (1,2,4,806,28.6686,77.4321,'good narate','love story at bus stop','meeravalli',2,1,'',NULL,'2015-01-08 10:47:38','2015-01-15 05:42:19',NULL,NULL,NULL,NULL,35,11,NULL),(2,2,4,818,28.6415,77.3714,'nice explan story','love story at street','meera',2,0,'',NULL,'2015-01-08 10:48:50','2015-01-08 10:48:50','index.jpeg','image/jpeg',6869,'2015-01-08 10:48:49',25,11,NULL),(3,2,4,818,28.6415,77.3714,'good narrate ','love story at bus stop','shaik vali',3,1,'',NULL,'2015-01-15 09:45:17','2015-01-15 09:45:17',NULL,NULL,NULL,NULL,35,11,NULL),(4,2,4,806,28.6686,77.4321,'good narrate and fiction','love story at bus stop','meera',4,0,'',NULL,'2015-01-15 09:57:04','2015-01-15 09:57:04','images.jpeg','image/jpeg',12202,'2015-01-15 09:57:04',25,11,NULL),(5,2,2,195,28.7145,77.1668,'ruby book','ruby','ja',3,0,'',NULL,'2015-02-15 18:57:14','2015-02-15 18:57:14',NULL,NULL,NULL,NULL,20,1,NULL);
/*!40000 ALTER TABLE `book_post_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Academic Books','2015-01-07 07:09:29','2015-01-07 07:09:29'),(2,'Biography & Autobiography','2015-01-07 07:09:29','2015-01-07 07:09:29'),(3,'Comics','2015-01-07 07:09:29','2015-01-07 07:09:29'),(4,'Crime, Thriller & Mystery','2015-01-07 07:09:29','2015-01-07 07:09:29'),(5,'Fiction','2015-01-07 07:09:29','2015-01-07 07:09:29'),(6,'Health & Fitness','2015-01-07 07:09:29','2015-01-07 07:09:29'),(7,'Home & Lifestyle','2015-01-07 07:09:29','2015-01-07 07:09:29'),(8,'Literature','2015-01-07 07:09:29','2015-01-07 07:09:29'),(9,'Motivational','2015-01-07 07:09:29','2015-01-07 07:09:29'),(10,'Non-Fiction','2015-01-07 07:09:29','2015-01-07 07:09:29'),(11,'Romance','2015-01-07 07:09:29','2015-01-07 07:09:29'),(12,'Others','2015-01-07 07:09:29','2015-01-07 07:09:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Bangalore','2014-11-18 05:38:21','2014-11-18 05:38:21'),(2,'Delhi','2014-11-18 05:38:21','2014-11-18 05:38:21'),(3,'Faridabad','2014-11-18 05:38:21','2014-11-18 05:38:21'),(4,'Ghaziabad','2014-11-18 05:38:21','2014-11-18 05:38:21'),(5,'Gurgaon','2014-11-18 05:38:21','2014-11-18 05:38:21'),(6,'Noida','2014-11-18 05:38:21','2014-11-18 05:38:21');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_types`
--

DROP TABLE IF EXISTS `food_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_types`
--

LOCK TABLES `food_types` WRITE;
/*!40000 ALTER TABLE `food_types` DISABLE KEYS */;
INSERT INTO `food_types` VALUES (1,'Vegetarian','2014-11-18 05:38:21','2014-11-18 05:38:21'),(2,'Non-Vegetarian','2014-11-18 05:38:21','2014-11-18 05:38:21'),(3,'Any','2014-11-18 05:38:21','2014-11-18 05:38:21');
/*!40000 ALTER TABLE `food_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Adugodi',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(2,'Agaram',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(3,'Arabic College',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(4,'Arakere Gate',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(5,'Ashok Nagar',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(6,'Austin Town',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(7,'Balaji Nagar',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(8,'Banashankari',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(9,'Banaswadi',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(10,'Bangalore CBD',1,'2014-11-18 05:38:23','2014-11-18 05:38:23'),(11,'Bangalore University',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(12,'Bannerghatta Road',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(13,'Basavangudi',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(14,'Basaveshwara Nagar',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(15,'Bellandur',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(16,'Benson Town',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(17,'Bhoopasandra',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(18,'Bidadi',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(19,'Bilekahalli',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(20,'Bommanahalli',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(21,'Brigade Road',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(22,'Brookefield',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(23,'BTM Layout',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(24,'BVK Iyengar Road',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(25,'Byatarayanapura',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(26,'C V Raman Nagar',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(27,'Carmelaram',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(28,'Chamarajpet',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(29,'Chandra Layout',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(30,'Chickpete',1,'2014-11-18 05:38:24','2014-11-18 05:38:24'),(31,'Chikkabanavara',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(32,'Church Street',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(33,'Commercial Street',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(34,'Cooke Town',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(35,'Cox Town',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(36,'Crescent Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(37,'Cubbon Park',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(38,'Cunningham Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(39,'D J Halli',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(40,'Dasarahalli',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(41,'Devanahalli',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(42,'Dickenson Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(43,'Dispensary Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(44,'Doddaballapur Main Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(45,'Doddanekundi',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(46,'Dollars Colony',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(47,'Domlur',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(48,'Double Road',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(49,'Ejipura',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(50,'Electronic City',1,'2014-11-18 05:38:25','2014-11-18 05:38:25'),(51,'Frazer Town',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(52,'Gandhi Nagar',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(53,'Ganga Nagar',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(54,'Gavipuram',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(55,'HAL 2nd Stage',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(56,'HAL 3rd Stage',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(57,'HAL Airport Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(58,'Halasuru',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(59,'Hanumantha Nagar',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(60,'Haralur Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(61,'Haudin Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(62,'HBR Layout',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(63,'Hebbal',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(64,'Hennur',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(65,'Hesaraghatta Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(66,'Hoskote',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(67,'Hosur Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(68,'HRBR Layout',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(69,'HSR Layout',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(70,'Indira Nagar',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(71,'Infantry Road',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(72,'J C Nagar',1,'2014-11-18 05:38:26','2014-11-18 05:38:26'),(73,'J P Nagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(74,'Jakkur',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(75,'Jalahalli',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(76,'Jayamahal',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(77,'Jayanagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(78,'JC Road',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(79,'Jeevan Bima Nagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(80,'Jnana Bharathi',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(81,'K G Nagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(82,'Kadubeesanahalli',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(83,'Kadugodi',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(84,'Kaggalipura',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(85,'Kalasipalayam',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(86,'Kalyan Nagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(87,'Kamakshipalya',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(88,'Kammanahalli',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(89,'Kanakapura Main Road',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(90,'Kanakapura Road',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(91,'Kasturba Road',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(92,'Kasturi Nagar',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(93,'Kathriguppe',1,'2014-11-18 05:38:27','2014-11-18 05:38:27'),(94,'Kempegowda',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(95,'Kengeri',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(96,'KG Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(97,'KH Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(98,'Kodihalli',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(99,'Konanakunte',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(100,'Koramangala',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(101,'Kothanur',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(102,'KR Market',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(103,'KR Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(104,'Krishnarajapura',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(105,'Kumara Krupa Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(106,'Kumara Park East',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(107,'Kumara Park West',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(108,'Kumaraswamy Layout',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(109,'Kumbalgodu',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(110,'Laggere',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(111,'Langford Gardens',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(112,'Langford Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(113,'Lavelle Road',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(114,'Lingarajapuram',1,'2014-11-18 05:38:28','2014-11-18 05:38:28'),(115,'Madivala',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(116,'Magrath Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(117,'Mahadevapura',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(118,'Mahalakshmi Layout',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(119,'Main Guard Cross Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(120,'Malleswaram',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(121,'Marathahalli',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(122,'Maruthi Sevanagar',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(123,'Mathikere',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(124,'MG Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(125,'Millers Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(126,'Mission Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(127,'Murugeshpalya',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(128,'Museum Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(129,'Mysore Road',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(130,'Nagarbhavi',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(131,'Nagasandra',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(132,'Nagashettyhalli',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(133,'Nagawara',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(134,'Nandidurga Road Crescent',1,'2014-11-18 05:38:29','2014-11-18 05:38:29'),(135,'Nayandahalli',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(136,'New BEL Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(137,'New Thippasandra',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(138,'Old Airport Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(139,'Old Madras Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(140,'Old Race Course Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(141,'Padmanabha Nagar',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(142,'Palace Cross Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(143,'Palace Guttahalli',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(144,'Peenya Industrial Area',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(145,'Puttenahalli',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(146,'Queens Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(147,'Rajajinagar',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(148,'Rajanukunte',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(149,'Rajkunte',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(150,'Ramanagaram',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(151,'Residency Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(152,'Richmond Road',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(153,'Richmond Town',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(154,'RMV 2nd Stage',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(155,'RR Nagar',1,'2014-11-18 05:38:30','2014-11-18 05:38:30'),(156,'RT Nagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(157,'Sadahalli',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(158,'Sadashiv Nagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(159,'Sahakara Nagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(160,'Sanjaynagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(161,'Sanjeevini Nagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(162,'Sankey Road',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(163,'Sarjapur',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(164,'Seshadripuram',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(165,'Shampura',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(166,'Shanthinagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(167,'Shivaji Nagar',1,'2014-11-18 05:38:31','2014-11-18 05:38:31'),(168,'Srirampuram',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(169,'St Thomas Town',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(170,'St. Johns Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(171,'St.Marks Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(172,'Subramanyapura',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(173,'Sultanpalya',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(174,'Tannery Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(175,'Thyagaraja Nagar',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(176,'Tumkur Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(177,'Varthur Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(178,'vasanth nagar',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(179,'Victoria Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(180,'Vidyaranyapura',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(181,'Vijayanagar',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(182,'Vimanapura',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(183,'Virgonagar',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(184,'Viswaneedam',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(185,'Vittal Mallya Road',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(186,'Vivek Nagar',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(187,'VV Puram',1,'2014-11-18 05:38:32','2014-11-18 05:38:32'),(188,'Vyalikaval',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(189,'Walton Road',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(190,'Wheelers Road',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(191,'Whitefield',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(192,'Wilson Garden',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(193,'Yelahanka',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(194,'Yeshwanthpura',1,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(195,'Adarsh Nagar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(196,'Adhchini Village',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(197,'Ajmeri Gate',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(198,'Alaknanda',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(199,'Ali Pur',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(200,'Ambedkar Nagar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(201,'Ambedkar Road',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(202,'Anand Niketan',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(203,'Anand Parbat',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(204,'Anand Parbat Industrial Area',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(205,'Anand Vihar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(206,'Andrews Ganj',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(207,'Arjun Nagar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(208,'Arya Nagar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(209,'Asaf Ali Road',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(210,'Ashok Nagar',2,'2014-11-18 05:38:33','2014-11-18 05:38:33'),(211,'Ashok Vihar Phase 1',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(212,'Ashok Vihar Phase 2',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(213,'Ashok Vihar Phase 3',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(214,'Ashram',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(215,'Aurangzeb Road',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(216,'Aurobindo Marg',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(217,'Azad Market',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(218,'Azad Nagar',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(219,'Azad Nagar East',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(220,'Azadpur',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(221,'Babarpur',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(222,'Badarpur',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(223,'Badarpur Border',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(224,'Badli',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(225,'Badli Industrial Area',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(226,'Bahadur Shah Zafar Marg',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(227,'Bahadurgarh',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(228,'Bali Nagar',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(229,'Baljit Nagar',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(230,'Bara Hindu Rao',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(231,'Barakhamba Road',2,'2014-11-18 05:38:34','2014-11-18 05:38:34'),(232,'Basai Darapur',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(233,'Bawana',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(234,'Ber Sarai',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(235,'Bhagirath Palace',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(236,'Bhagirathi Vihar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(237,'Bhagwan Nagar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(238,'Bhajan Pura',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(239,'Bharat Nagar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(240,'Bhikaji Cama Place',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(241,'Bhim Nagar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(242,'Bhogal',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(243,'Bhola Nath Nagar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(244,'Bijwasan',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(245,'Brahmapuri',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(246,'Brahmpuri Road',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(247,'Brij Vihar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(248,'Budh Nagar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(249,'Budh Vihar',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(250,'Burari',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(251,'Chanakya Place',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(252,'Chander Nagar, Janakpuri',2,'2014-11-18 05:38:35','2014-11-18 05:38:35'),(253,'Chandni Chowk',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(254,'Chandu Nagar',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(255,'Chankyapuri',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(256,'Chattarpur',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(257,'Chawri Bazar',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(258,'Chhatarpur',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(259,'Chirag Delhi',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(260,'Chiranjeev Vihar',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(261,'Chittaranjan Park',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(262,'Civil Lines, New Delhi',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(263,'Connaught Circus',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(264,'Connaught Place',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(265,'Dabri',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(266,'Dadri Road',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(267,'Dakshinpuri',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(268,'Dallupura',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(269,'Dariba Kalan',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(270,'Daryaganj',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(271,'Daya Basti',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(272,'Dayalpur',2,'2014-11-18 05:38:36','2014-11-18 05:38:36'),(273,'Dayanand Colony',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(274,'Dayanand Vihar',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(275,'DDA Flats Kalkaji',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(276,'Defence Colony',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(277,'Delhi Cantonment',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(278,'Delhi Gate',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(279,'Delhi High Court',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(280,'Derawal Nagar',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(281,'Desh Bandhu Gupta Road',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(282,'Dev Nagar',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(283,'Dhaula Kuan',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(284,'Dilshad Colony',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(285,'Dilshad Garden',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(286,'Dr. Mukherjee Nagar',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(287,'Durgapuri',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(288,'Dwarka Sector 10',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(289,'Dwarka Sector 11',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(290,'Dwarka Sector 12',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(291,'Dwarka Sector 19',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(292,'Dwarka Sector 5',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(293,'Dwarka Sector 6',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(294,'Dwarka Sector 6',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(295,'Dwarka Sector 7',2,'2014-11-18 05:38:37','2014-11-18 05:38:37'),(296,'Dwarka Sector 9',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(297,'Dwarka Sector 3',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(298,'Dwarka Sector 4',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(299,'East Krishna Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(300,'East Of Kailash',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(301,'East Patel Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(302,'East Vinod Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(303,'Fateh Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(304,'Fatehpuri',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(305,'Friends Colony',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(306,'Friends Colony East',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(307,'Gagan Vihar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(308,'Gandhi Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(309,'Ganesh Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(310,'Garhi',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(311,'Gautam Nagar',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(312,'Gazipur',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(313,'GB Road',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(314,'Geeta Colony',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(315,'Geetanjali Enclave',2,'2014-11-18 05:38:38','2014-11-18 05:38:38'),(316,'Gharoli',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(317,'Ghazipur',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(318,'Ghazipur Road',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(319,'Ghitorni',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(320,'Ghonda Chowk',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(321,'Gokalpuri',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(322,'Gole Market',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(323,'Golf Links',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(324,'Govindpuri Main',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(325,'GPO, Gole Dak Khana',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(326,'Greater Kailash',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(327,'Greater Kailash Enclave',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(328,'Greater Kailash Enclave I',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(329,'Greater Kailash I',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(330,'Greater Kailash II',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(331,'Greater Noida',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(332,'Green Park',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(333,'Green Park Extension',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(334,'Greenfield Colony',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(335,'GT Karnal Road',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(336,'GT Karnal Road',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(337,'GT Karnal Road Industrial Area',2,'2014-11-18 05:38:39','2014-11-18 05:38:39'),(338,'GT Road',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(339,'Gulabi Bagh',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(340,'Gulmohar Park',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(341,'Guru Nanak Pura',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(342,'Guru Teg Bahadur Nagar',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(343,'Gurudwara Road',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(344,'Haidarpur',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(345,'Hamilton Road',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(346,'Hargovind Enclave',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(347,'Hari Nagar',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(348,'Hauz Khas',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(349,'Hauz Khas Enclave',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(350,'Hauz Khas Village',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(351,'Hauz Qazi',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(352,'IGI Airport',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(353,'INA Colony',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(354,'INA Market',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(355,'Inder Lok',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(356,'Inder Puri',2,'2014-11-18 05:38:40','2014-11-18 05:38:40'),(357,'Indraprastha Extension',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(358,'Industrial Area, Mangolpuri, Phase 1',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(359,'IP Estate',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(360,'ITO',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(361,'Jacombpura',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(362,'Jaffrabad',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(363,'Jagatpuri',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(364,'Jahangir Puri',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(365,'Jahangirpuri',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(366,'Jail Road',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(367,'Jama Masjid',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(368,'Jamia Nagar',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(369,'Janakpuri',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(370,'Janakpuri District Centre',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(371,'Jangpura',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(372,'Jangpura Extension',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(373,'Janpath',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(374,'Jasola',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(375,'Jasola Vihar',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(376,'Jawahar Nagar',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(377,'Jhandewalan',2,'2014-11-18 05:38:41','2014-11-18 05:38:41'),(378,'Jhandewalan Extension',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(379,'Jheel',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(380,'Jheel Khurenja',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(381,'Jhilmil Colony',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(382,'Jhilmil Industrial Area',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(383,'Jia Sarai',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(384,'Jitar Nagar',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(385,'Jor Bagh',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(386,'Kailash Colony',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(387,'Kailash Nagar',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(388,'Kalkaji',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(389,'Kalkaji Extension',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(390,'Kalu Sarai',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(391,'Kalyanpuri',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(392,'Kamla Nagar',2,'2014-11-18 05:38:42','2014-11-18 05:38:42'),(393,'Kanti Nagar',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(394,'Kapashera',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(395,'Karampura',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(396,'Karampura West',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(397,'Karawal Nagar',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(398,'Karkar Duma',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(399,'Karol Bagh',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(400,'Kashmiri Gate',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(401,'Kasturba Gandhi Marg',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(402,'Katwaria Sarai',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(403,'Keshav Puram',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(404,'Khajuri Khas',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(405,'Khan Market',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(406,'Khanpur',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(407,'Khari Baoli',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(408,'Khichripur',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(409,'Khirki Extention',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(410,'Khureji Khas',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(411,'Khyala',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(412,'Kidwai Nagar',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(413,'Kilokri',2,'2014-11-18 05:38:43','2014-11-18 05:38:43'),(414,'Kingsway Camp',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(415,'Kirti Nagar',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(416,'Kirti Nagar Industrial Area',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(417,'Kishan Ganj',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(418,'Kishangarh',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(419,'Kondli',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(420,'Kotla',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(421,'Kotla Mubarakpur',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(422,'Krishna Nagar',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(423,'Krishna Nagar East',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(424,'Krishna Park',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(425,'Lado Sarai',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(426,'Lajpat Nagar I',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(427,'Lajpat Nagar II',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(428,'Lajpat Nagar III',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(429,'Lajpat Nagar IV',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(430,'Lajpat Rai Market',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(431,'Lajwanti Garden',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(432,'Lawrence Road',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(433,'Laxmi Nagar',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(434,'Libaspur',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(435,'Lodhi Colony',2,'2014-11-18 05:38:44','2014-11-18 05:38:44'),(436,'Lodhi estate',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(437,'Lodhi Road',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(438,'Lohia Nagar',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(439,'Loni Bhopura Road',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(440,'Loni Road',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(441,'Madangir',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(442,'Madanpur Khadar',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(443,'Madhu Vihar',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(444,'Madipur',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(445,'Maharani Bagh',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(446,'Mahavir Enclave',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(447,'Mahipalpur',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(448,'Mahipalpur Extension',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(449,'Malka Ganj',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(450,'Malviya Nagar',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(451,'Mandawali',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(452,'Mangolpur Kalan',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(453,'Mangolpuri',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(454,'Mangolpuri Industrial Area Phase 2',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(455,'Mansarovar Garden',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(456,'market near Laxmi Nagar',2,'2014-11-18 05:38:45','2014-11-18 05:38:45'),(457,'Masjid Moth',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(458,'Masudpur',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(459,'Mathura Road',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(460,'Maujpur',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(461,'Mayapuri',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(462,'Mayapuri Industrial Area I',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(463,'Mayapuri Industrial Area II',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(464,'Mayur Vihar',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(465,'Mayur Vihar Phase 1',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(466,'Mayur Vihar Phase 2',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(467,'Mayur Vihar Phase 3',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(468,'Meera Bagh',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(469,'Meerut Road',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(470,'Meerut Road Industrial Area',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(471,'Mehrauli',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(472,'Mehrauli Road',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(473,'Minto Road',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(474,'Model Basti',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(475,'Model Town',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(476,'Model Town II',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(477,'Model Town III',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(478,'Mohammad Pur',2,'2014-11-18 05:38:46','2014-11-18 05:38:46'),(479,'Mohammad Pur Majri',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(480,'Mohammadpur',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(481,'Mohan Co-Operative Industrial Estate',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(482,'Mohan Garden',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(483,'Molarband Extension',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(484,'Mori Gate',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(485,'Moti Bagh',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(486,'Moti Bagh South',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(487,'Moti Nagar',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(488,'Motia Khan',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(489,'Mujesar',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(490,'Mukarji West',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(491,'Mukherjee Nagar',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(492,'Mundka',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(493,'Munirka',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(494,'Nabi Karim',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(495,'Nai Sarak',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(496,'Najafgarh',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(497,'Najafgarh Road',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(498,'Najafgarh Road Industrial Area',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(499,'Nanakpura',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(500,'Nand Nagari',2,'2014-11-18 05:38:47','2014-11-18 05:38:47'),(501,'Nangal Raya',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(502,'Nangloi',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(503,'Nangloi Extension',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(504,'Nangloi Jat',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(505,'Naraina',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(506,'Naraina Industrial Area',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(507,'Naraina Industrial Area Phase 1',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(508,'Naraina Vihar',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(509,'Narayana Industrial Area Phase 2',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(510,'Narela',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(511,'Narela Industrial Area',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(512,'Nathupura',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(513,'Naveen Shahdara',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(514,'Navyug, Market Lane',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(515,'Naya Bazar',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(516,'Neb Sarai',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(517,'Nehru Enclave',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(518,'Nehru Nagar',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(519,'Nehru Place',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(520,'Nehru Vihar',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(521,'Netaji Nagar',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(522,'Netaji Subhash Place',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(523,'New Friends Colony',2,'2014-11-18 05:38:48','2014-11-18 05:38:48'),(524,'New Kondli',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(525,'New Lajpat Rai Market',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(526,'New Moti Nagar',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(527,'New Rajdhani Enclave',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(528,'New Rajendra Nagar',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(529,'New Rohtak Road',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(530,'Nirman Vihar',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(531,'Niti Bagh',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(532,'Nizamuddin East',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(533,'Nizamuddin West',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(534,'Noida Link Road',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(535,'Okhla',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(536,'Okhla Industrial Area Phase III',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(537,'Okhla Industrial Area Phase-1',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(538,'Okhla Industrial Area, Phase II Okhla',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(539,'Okhla Industrial Estate',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(540,'Old Rajendra Nagar',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(541,'Paharganj',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(542,'Palam',2,'2014-11-18 05:38:49','2014-11-18 05:38:49'),(543,'Palam Colony',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(544,'Palam Village',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(545,'Palika Bazar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(546,'Panchkuian Road',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(547,'Panchsheel Enclave',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(548,'Panchsheel Park',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(549,'Pandav Nagar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(550,'Pankha Road',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(551,'Parliament Street',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(552,'Parwana Road',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(553,'Paschim Puri',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(554,'Paschim Vihar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(555,'Patel Nagar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(556,'Patiala House',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(557,'Peera Garhi',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(558,'Pitampura',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(559,'Pragati Maidan',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(560,'Prashant Vihar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(561,'Pratap Nagar',2,'2014-11-18 05:38:50','2014-11-18 05:38:50'),(562,'Preet Vihar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(563,'Prem Nagar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(564,'Priyadarshini Vihar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(565,'Pulpehladpur',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(566,'Punjabi Bagh',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(567,'Punjabi Bagh East',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(568,'Punjabi Bagh Extension',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(569,'Punjabi Bagh, West Punjabi Bagh',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(570,'Pusa Road',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(571,'Pushp Vihar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(572,'Qutab Institutional Area',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(573,'R K Puram Sector 1',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(574,'R K Puram Sector 12',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(575,'R K Puram Sector 9',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(576,'Radhey Puri Extension',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(577,'Raghubir Nagar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(578,'Railway Road',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(579,'Raj Nagar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(580,'Raja Garden',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(581,'Rajeev Nagar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(582,'Rajendra Nagar',2,'2014-11-18 05:38:51','2014-11-18 05:38:51'),(583,'Rajendra Place',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(584,'Rajgarh Colony',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(585,'Rajouri Garden',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(586,'Ram Nagar',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(587,'Ramakrishna Puram',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(588,'Ramesh Nagar',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(589,'Rampura',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(590,'Rana Pratap Bagh',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(591,'Rangpuri',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(592,'Rani Bagh',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(593,'Rani Jhansi Road',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(594,'Ranjit Nagar',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(595,'Red Fort',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(596,'RK Puram',2,'2014-11-18 05:38:52','2014-11-18 05:38:52'),(597,'RK Puram, Sector 6',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(598,'RK Puram, Sector 8',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(599,'Rohini',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(600,'Rohini, Sector 1',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(601,'Rohini, Sector 10',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(602,'Rohini, Sector 11',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(603,'Rohini, Sector 13',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(604,'Rohini, Sector 14',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(605,'Rohini, Sector 15',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(606,'Rohini, Sector 16',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(607,'Rohini, Sector 17',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(608,'Rohini, Sector 18',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(609,'Rohini, Sector 2',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(610,'Rohini, Sector 24',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(611,'Rohini, Sector 3',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(612,'Rohini, Sector 4',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(613,'Rohini, Sector 5',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(614,'Rohini, Sector 6',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(615,'Rohini, Sector 7',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(616,'Rohini, Sector 8',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(617,'Rohini, Sector 9',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(618,'Rohtak Road',2,'2014-11-18 05:38:53','2014-11-18 05:38:53'),(619,'Rohtash Nagar',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(620,'Rohtash Nagar',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(621,'Roop Nagar',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(622,'Roshan Pura',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(623,'Roshanara Road',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(624,'Sadar bazaar',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(625,'Sadar Thana Road',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(626,'Sadatpur',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(627,'Safdarjanj Enclave',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(628,'Safdarjung Development Area',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(629,'Safdarjung Enclave',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(630,'Sagarpur',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(631,'Saini Enclave',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(632,'Sainik Farm',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(633,'Saiyad Ul Ajaib',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(634,'Saket',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(635,'Samaipur Libaspur Road',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(636,'Samay Pur',2,'2014-11-18 05:38:54','2014-11-18 05:38:54'),(637,'Sangam Vihar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(638,'Sanjay Colony',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(639,'Sanjay Gandhi Transport Nagar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(640,'Sansad Marg',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(641,'Sant Nagar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(642,'Sarai Jullena',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(643,'Sarai Rohilla',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(644,'Saraswati Vihar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(645,'Sardar Bazar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(646,'Sarita Vihar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(647,'Sarojini Nagar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(648,'Sarojini Nagar Market',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(649,'Sarvapriya Vihar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(650,'Sarvodaya Enclave',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(651,'Satya Niketan',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(652,'Savita Vihar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(653,'Savitri Nagar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(654,'Sector 1, Noida',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(655,'Sector 10, Noida',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(656,'Sector 11, Ghaziabad',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(657,'Sector 11, Noida',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(658,'Sector 12, Ghaziabad',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(659,'Sector 12, IMT Manesar',2,'2014-11-18 05:38:55','2014-11-18 05:38:55'),(660,'Sector 12, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(661,'Sector 14, Gurgaon',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(662,'Sector 15, Gurgaon',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(663,'Sector 15, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(664,'Sector 15A, Faridaba',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(665,'Sector 16, Faridabad',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(666,'Sector 16, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(667,'Sector 18, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(668,'Sector 19, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(669,'Sector 2, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(670,'Sector 22, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(671,'Sector 26, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(672,'Sector 27, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(673,'Sector 29, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(674,'Sector 3, Ghaziabad',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(675,'Sector 31, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(676,'Sector 37, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(677,'Sector 38, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(678,'Sector 38A, Noida',2,'2014-11-18 05:38:56','2014-11-18 05:38:56'),(679,'Sector 4, Ghaziabad',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(680,'Sector 41, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(681,'Sector 44, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(682,'Sector 49, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(683,'Sector 5, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(684,'Sector 50, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(685,'Sector 51, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(686,'Sector 53 Gurgaon',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(687,'Sector 53, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(688,'Sector 57, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(689,'Sector 6, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(690,'Sector 61, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(691,'Sector 62, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(692,'Sector 63, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(693,'Sector 7, Faridabad',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(694,'Sector 9, Ghazia',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(695,'Sector 9, Noida',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(696,'Seelampur',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(697,'Seemapuri',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(698,'Sewa Nagar',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(699,'Shadipur',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(700,'Shahdara',2,'2014-11-18 05:38:57','2014-11-18 05:38:57'),(701,'Shahpur Jat',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(702,'Shakarpur',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(703,'Shakarpur Extension',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(704,'Shakarpur Khas',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(705,'Shakti Nagar',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(706,'Shakur Basti',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(707,'Shakurpur',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(708,'Shakurpur Colony',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(709,'Shalimar Bagh',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(710,'Shalimar Park',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(711,'Shankar Nagar',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(712,'Shanti Niketan',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(713,'Sharda Puri',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(714,'Shastri Nagar',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(715,'Shastri Park',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(716,'Sheikh Sarai',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(717,'Sheikh Sarai Phase-2',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(718,'Shiv Nagar',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(719,'Shiv Puri',2,'2014-11-18 05:38:58','2014-11-18 05:38:58'),(720,'Shivalik',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(721,'Shivpuri',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(722,'Shraddhanand Marg',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(723,'Shreshtha Vihar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(724,'Silampur',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(725,'Simapuri Old',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(726,'Siri Fort Road',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(727,'Sirkiwalan',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(728,'Sitaram Bazar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(729,'South Extension Part 1 ',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(730,'South Extension Part II',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(731,'South Patel Nagar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(732,'Srinivaspuri',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(733,'Subhash Nagar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(734,'Sukhdev Vihar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(735,'Sultanpuri',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(736,'Sundar Nagar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(737,'Sunder Vihar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(738,'Supreme Court',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(739,'Surajmal Vihar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(740,'Surya Nagar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(741,'Swasthya Vihar',2,'2014-11-18 05:38:59','2014-11-18 05:38:59'),(742,'Tagore Garden Extension',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(743,'Taimoor Nagar',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(744,'Tank Road',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(745,'Tigri',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(746,'Tilak Marg',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(747,'Tilak nagar',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(748,'Timarpur',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(749,'Tis hazari',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(750,'Tis hazari Court',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(751,'Tolstoy Marg',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(752,'Trilokpuri',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(753,'Tughlaqabad',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(754,'Tughlaqabad Extension',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(755,'Turkman Gate',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(756,'Uday Park',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(757,'Udyog Nagar',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(758,'Uttam Nagar',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(759,'Vasant Enclave',2,'2014-11-18 05:39:00','2014-11-18 05:39:00'),(760,'Vasant Kunj, Sector-A',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(761,'Vasant Kunj, Sector-B',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(762,'Vasant Kunj, Sector-c',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(763,'Vasant Kunj, Sector-D',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(764,'Vasant Vihar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(765,'Vashisht Park',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(766,'Vasundhara Enclave',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(767,'Vigyan Vihar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(768,'Vijay Enclave',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(769,'Vijay Nagar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(770,'Vikas Marg',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(771,'Vikaspuri',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(772,'Vinod Nagar West',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(773,'Vishnu Garden',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(774,'Vishwas Nagar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(775,'Vivek Vihar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(776,'Wazir Nagar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(777,'Wazirabad',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(778,'Wazirpur',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(779,'Wazirpur Industrial Area',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(780,'Wazirpur Village',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(781,'West Patel Nagar',2,'2014-11-18 05:39:01','2014-11-18 05:39:01'),(782,'West Sagarpur',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(783,'Yamuna Vihar',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(784,'Yojana Vihar',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(785,'Yusuf Sarai',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(786,'Zakir Nagar',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(787,'Zamrudpur',2,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(788,'Ballabhgarh',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(789,'Garima Garden',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(790,'Greenfield Colony',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(791,'Gurgaon Road',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(792,'Jawahar Colony',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(793,'Jeevan Nagar',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(794,'Mujesar',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(795,'New Industrial TownShip',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(796,'New Industrial Township 1',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(797,'NIT Faridabad',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(798,'Old Faridabad',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(799,'Rajeev Nagar',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(800,'Ram Nagar',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(801,'Sanjay Colony',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(802,'Sanjay Gandhi Memorial Nagar',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(803,'Sector 15A, Faridabad',3,'2014-11-18 05:39:02','2014-11-18 05:39:02'),(804,'Sector 16, Faridabad',3,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(805,'Sector 7, Faridabad',3,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(806,'Ambedkar Road',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(807,'Ashok Nagar',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(808,'Bhim Nagar',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(809,'Bhopura',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(810,'Brij Vihar',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(811,'Bulandshahr Road Industrial Area',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(812,'chikamberpur',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(813,'Chiranjeev Vihar',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(814,'Dasna Gate',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(815,'Gandhi Nagar',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(816,'Garima Garden',4,'2014-11-18 05:39:03','2014-11-18 05:39:03'),(817,'Hapur Road',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(818,'Indirapuram',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(819,'Indrapuri',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(820,'Jatwara',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(821,'Jawahar Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(822,'Kailash Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(823,'Kallupura',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(824,'Kamala Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(825,'Kaushambi',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(826,'Kavi Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(827,'Kavi Nagar Industrial Area',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(828,'Lal Kuan',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(829,'Lohia Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(830,'Loni',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(831,'Maliwara',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(832,'Meerut Road',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(833,'Meerut Road Industrial Area',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(834,'Mohan Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(835,'Nehru Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(836,'Panchsheel Park',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(837,'Pandav Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(838,'Patel Nagar',4,'2014-11-18 05:39:04','2014-11-18 05:39:04'),(839,'Railway Road',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(840,'Raj Nagar',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(841,'Rajendra Nagar',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(842,'Ram Nagar',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(843,'Ramteram Road',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(844,'Sahibabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(845,'Sahibabad Industrial Area',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(846,'Sahibabad Industrial Area Site 4',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(847,'Sangam Vihar',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(848,'Sanjay Colony',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(849,'Sector 11, Ghaziabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(850,'Sector 12, Ghaziabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(851,'Sector 3, Ghaziabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(852,'Sector 4, Ghaziabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(853,'Sector 9, Ghaziabad',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(854,'Sewa Nagar',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(855,'Shalimar Garden',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(856,'Shalimar Garden Extention 1',4,'2014-11-18 05:39:05','2014-11-18 05:39:05'),(857,'Shalimar Garden Extention 2',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(858,'Shastri Nagar',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(859,'Shivpuri',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(860,'Surya Nagar',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(861,'Turab Nagar',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(862,'Vaishali, Sector 1',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(863,'Vaishali, Sector 2',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(864,'Vaishali, Sector 3',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(865,'Vaishali, Sector 4',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(866,'Vaishali, Sector 5',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(867,'Vasundhara',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(868,'Vijay Nagar',4,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(869,'Basai',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(870,'Basai Road',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(871,'Bhim Nagar',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(872,'Chakkarpur Market',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(873,'Dayanand Colony',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(874,'Delhi Road',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(875,'DLF City Phase - II',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(876,'DLF City Phase - III',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(877,'DLF City Phase - IV',5,'2014-11-18 05:39:06','2014-11-18 05:39:06'),(878,'DLF City Phase 1',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(879,'DLF Industrial Area',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(880,'Gandhi Nagar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(881,'Hasanpur',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(882,'IMT Manesar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(883,'Islampur',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(884,'Jacombpura',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(885,'Jail Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(886,'Jawahar Nagar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(887,'Khandsa Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(888,'Manesar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(889,'Mehrauli Gurgaon Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(890,'Mehrauli Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(891,'New Colony',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(892,'New Railway Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(893,'NH 8',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(894,'Old DLF Colony',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(895,'Palam Vihar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(896,'Palam Vihar Road',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(897,'Patel Nagar',5,'2014-11-18 05:39:07','2014-11-18 05:39:07'),(898,'Pratap Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(899,'Prem Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(900,'Railway Road',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(901,'Rajeev Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(902,'Rajiv Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(903,'Ram Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(904,'Roshan Pura',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(905,'Saraswati Vihar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(906,'Sector 14, Gurgaon',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(907,'Sector 15, Gurgaon',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(908,'Sector 53 Gurgaon',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(909,'Shakti Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(910,'Shivpuri',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(911,'Sikandarpur',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(912,'Sohna Road',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(913,'South City I',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(914,'Subhash Nagar',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(915,'Sukhrali',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(916,'Sultanpur',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(917,'Sushant Lok',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(918,'Sushant Lok I',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(919,'Sushant Lok II',5,'2014-11-18 05:39:08','2014-11-18 05:39:08'),(920,'Udyog Vihar',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(921,'Udyog Vihar Phase 2',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(922,'Udyog Vihar Phase III',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(923,'Udyog Vihar Phase IV',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(924,'Udyog Vihar Phase V',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(925,'Vishnu Garden',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(926,'Wazirabad',5,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(927,'Ashok Nagar',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(928,'Atta Market',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(929,'Bhangel',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(930,'Dadri Road',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(931,'Gautam Budh Nagar',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(932,'Greater Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(933,'Harola',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(934,'Khora Colony',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(935,'Mamura',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(936,'New Ashok Nagar',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(937,'Phase 2, Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(938,'Sangam Vihar',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(939,'Sector 1, Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(940,'Sector 10, Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(941,'Sector 11, Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(942,'Sector 12, Noida',6,'2014-11-18 05:39:09','2014-11-18 05:39:09'),(943,'Sector 15, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(944,'Sector 16, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(945,'Sector 18, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(946,'Sector 19, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(947,'Sector 2, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(948,'Sector 22, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(949,'Sector 26, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(950,'Sector 27, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(951,'Sector 29, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(952,'Sector 31, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(953,'Sector 37, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(954,'Sector 38, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(955,'Sector 38A, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(956,'Sector 41, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(957,'Sector 44, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(958,'Sector 49, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(959,'Sector 5, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(960,'Sector 50, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(961,'Sector 51, Noida',6,'2014-11-18 05:39:10','2014-11-18 05:39:10'),(962,'Sector 53, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(963,'Sector 57, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(964,'Sector 6, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(965,'Sector 61, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(966,'Sector 62, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(967,'Sector 63, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11'),(968,'Sector 9, Noida',6,'2014-11-18 05:39:11','2014-11-18 05:39:11');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_types`
--

DROP TABLE IF EXISTS `meal_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meal_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_types`
--

LOCK TABLES `meal_types` WRITE;
/*!40000 ALTER TABLE `meal_types` DISABLE KEYS */;
INSERT INTO `meal_types` VALUES (1,'Breakfast','2014-11-18 05:38:21','2014-11-18 05:38:21'),(2,'Lunch','2014-11-18 05:38:21','2014-11-18 05:38:21'),(3,'Dinner','2014-11-18 05:38:21','2014-11-18 05:38:21'),(4,'Any','2014-11-18 05:38:22','2014-11-18 05:38:22');
/*!40000 ALTER TABLE `meal_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `posted_to` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT '0',
  `accepted` tinyint(1) DEFAULT '0',
  `trashed` tinyint(1) DEFAULT '0',
  `post_requirement_id` int(11) DEFAULT NULL,
  `food` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  `rider_post_requirement_id` int(11) DEFAULT NULL,
  `peer_service_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-16 09:41:15','2015-01-16 09:41:15','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,7,NULL,NULL),(2,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-16 09:42:18','2015-01-16 09:42:18','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,NULL,NULL,11),(3,'You have received a new order from vali. Please confirm the order',4,2,0,'2015-01-16 11:33:54','2015-01-16 11:33:54','New Order',1,0,0,NULL,NULL,'Ambedkar Road',NULL,NULL,NULL,5),(4,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-16 11:38:41','2015-01-16 11:38:41','New Order',1,0,0,NULL,NULL,'Hapur Road',NULL,NULL,NULL,12),(5,'You have received a new order from vali. Please confirm the order',4,3,0,'2015-01-16 12:16:47','2015-01-16 12:16:47','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,NULL,NULL,14),(6,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 05:31:10','2015-01-17 05:31:10','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,6,NULL,NULL),(7,'You have received a new order from shaik. Please confirm the order',3,1,0,'2015-01-17 05:46:05','2015-01-17 05:46:05','New Order',1,0,0,NULL,NULL,'Hapur Road',NULL,2,NULL,NULL),(8,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 05:59:45','2015-01-17 05:59:45','New Order',1,0,0,NULL,NULL,'Hapur Road',NULL,NULL,NULL,12),(9,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 06:00:38','2015-01-17 06:00:38','New Order',1,0,0,NULL,NULL,'Hapur Road',NULL,NULL,NULL,12),(10,'You have received a new order from shaik. Please confirm the order',3,2,0,'2015-01-17 06:05:09','2015-01-17 06:05:09','New Order',1,0,0,NULL,NULL,'Ambedkar Road',NULL,4,NULL,NULL),(11,'You have received a new order from shaik. Please confirm the order',3,1,0,'2015-01-17 06:10:12','2015-01-17 06:10:12','New Order',1,0,0,NULL,NULL,'Hapur Road',NULL,2,NULL,NULL),(12,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 06:12:28','2015-01-17 06:12:28','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,NULL,NULL,11),(13,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 06:32:05','2015-01-17 06:32:05','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,7,NULL,NULL),(14,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 06:36:48','2015-01-17 06:36:48','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,7,NULL,NULL),(15,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-17 06:39:05','2015-01-17 06:39:05','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,NULL,NULL,11),(16,'You have received a new order from vali. Please confirm the order',4,3,0,'2015-01-17 07:09:49','2015-01-17 07:09:49','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,NULL,NULL,14),(18,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-19 05:55:24','2015-01-19 05:55:24','New Order',1,0,0,NULL,NULL,'Garima Garden',NULL,NULL,NULL,18),(19,'You have received a new order from shaik. Please confirm the order',3,4,0,'2015-01-19 05:59:48','2015-01-19 05:59:48','New Order',1,0,0,NULL,NULL,'Indirapuram',NULL,8,NULL,NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiates`
--

DROP TABLE IF EXISTS `negotiates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negotiates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_requirement_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nego_id` int(11) DEFAULT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  `rider_post_requirement_id` int(11) DEFAULT NULL,
  `peer_service_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiates`
--

LOCK TABLES `negotiates` WRITE;
/*!40000 ALTER TABLE `negotiates` DISABLE KEYS */;
INSERT INTO `negotiates` VALUES (3,NULL,'4','2015-01-16 11:33:54','2015-01-16 11:33:54',2,NULL,NULL,5),(14,NULL,'3','2015-01-17 06:36:48','2015-01-17 06:36:48',4,7,NULL,NULL),(15,NULL,'3','2015-01-17 06:39:05','2015-01-17 06:39:05',4,NULL,NULL,11),(16,NULL,'4','2015-01-17 07:09:49','2015-01-17 07:09:49',3,NULL,NULL,14),(18,NULL,'3','2015-01-19 05:55:24','2015-01-19 05:55:24',4,NULL,NULL,18),(19,NULL,'3','2015-01-19 05:59:48','2015-01-19 05:59:48',4,8,NULL,NULL);
/*!40000 ALTER TABLE `negotiates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_cancels`
--

DROP TABLE IF EXISTS `order_cancels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_cancels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `cancel_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_cancels`
--

LOCK TABLES `order_cancels` WRITE;
/*!40000 ALTER TABLE `order_cancels` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_cancels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `post_requirement_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  `rider_post_requirement_id` int(11) DEFAULT NULL,
  `peer_service_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peer_service_post_requirements`
--

DROP TABLE IF EXISTS `peer_service_post_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_service_post_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `peer_service_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `seeker_provider` tinyint(1) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `longitude` float DEFAULT NULL,
  `home_service` tinyint(1) DEFAULT NULL,
  `service_in_one_line` text COLLATE utf8_unicode_ci,
  `when` date DEFAULT NULL,
  `charges` float DEFAULT NULL,
  `mon` tinyint(1) DEFAULT NULL,
  `tue` tinyint(1) DEFAULT NULL,
  `wed` tinyint(1) DEFAULT NULL,
  `thu` tinyint(1) DEFAULT NULL,
  `fri` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `sun` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `peer_file_name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peer_content_type` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peer_file_size` int(11) DEFAULT NULL,
  `peer_updated_at` datetime DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peer_service_post_requirements`
--

LOCK TABLES `peer_service_post_requirements` WRITE;
/*!40000 ALTER TABLE `peer_service_post_requirements` DISABLE KEYS */;
INSERT INTO `peer_service_post_requirements` VALUES (5,4,5,7,806,2,1,28.6686,'good design with culture',77.4321,NULL,'good service','2014-08-17',8000,1,0,0,0,0,1,0,'2015-01-15 05:17:50','2015-01-15 06:13:03',NULL,NULL,NULL,NULL,NULL),(7,4,5,3,819,3,1,28.7632,'good quality and time plan  ',77.2786,NULL,'photo will good quality','2014-01-16',4500,0,0,0,0,0,1,1,'2015-01-15 09:51:00','2015-01-17 09:43:56',NULL,NULL,NULL,NULL,NULL),(8,4,5,5,819,4,0,28.7632,'nice event & mgmt',77.2786,NULL,'Event plan ',NULL,5000,1,0,0,0,0,1,1,'2015-01-15 09:59:51','2015-01-15 10:01:58','images.jpeg','image/jpeg',12202,'2015-01-15 09:59:50',NULL),(11,4,5,6,818,4,0,28.6415,'good style for hair and body massage',77.3714,NULL,'good morning... style',NULL,500,1,0,0,0,0,1,1,'2015-01-15 12:47:46','2015-01-17 09:44:09','logo.jpeg','image/jpeg',17385,'2015-01-15 12:47:45',NULL),(12,4,NULL,7,818,4,0,28.5865,'good experience in design house low cost',77.3361,NULL,'good morning... style good loo',NULL,5500,1,1,0,0,0,1,1,'2015-01-16 09:12:11','2015-01-17 09:31:32','index.jpeg','image/jpeg',6869,'2015-01-16 09:12:09',NULL),(13,4,4,7,819,3,1,28.7632,'nice design',77.2786,NULL,'good service','2014-08-17',4500,1,0,0,0,0,1,0,'2015-01-16 12:11:32','2015-01-16 12:11:32',NULL,NULL,NULL,NULL,NULL),(14,4,4,2,818,3,1,28.6415,'nice health which can be good ',77.3714,NULL,'good day..... health care','2014-01-16',450,0,0,0,0,0,1,1,'2015-01-16 12:12:43','2015-01-17 07:07:55',NULL,NULL,NULL,NULL,NULL),(16,4,4,6,818,3,1,28.6415,'nice hair spa which can be good',77.3714,NULL,'good day.....','2014-01-16',450,0,0,0,0,0,1,1,'2015-01-16 12:15:17','2015-01-16 12:15:17',NULL,NULL,NULL,NULL,NULL),(17,4,4,5,816,4,1,28.6938,'good service with care',77.3475,NULL,'good service & time mgmt','2015-01-12',4500,0,0,0,0,0,0,1,'2015-01-19 05:40:26','2015-01-19 05:40:26',NULL,NULL,NULL,NULL,NULL),(18,4,4,5,816,4,0,28.6938,'good care',77.3475,NULL,'Event plan care',NULL,5050,0,0,0,0,0,0,1,'2015-01-19 05:42:13','2015-01-19 05:42:13','facebook.jpeg','image/jpeg',3794,'2015-01-19 05:42:11',NULL),(20,4,4,2,862,3,0,28.6356,'i m a doctor',77.3389,NULL,'doc',NULL,500,1,1,1,1,1,1,1,'2015-01-19 06:47:08','2015-01-19 06:47:08',NULL,NULL,NULL,NULL,NULL),(21,4,4,5,818,3,0,28.6415,'good day.... ',77.3714,NULL,'Event plan',NULL,2000,1,1,0,0,0,0,0,'2015-01-31 10:27:06','2015-01-31 10:27:06','linkedin.jpeg','image/jpeg',4431,'2015-01-31 10:27:04',NULL),(22,4,4,8,815,3,1,28.6552,'good service with passion',77.4369,NULL,'makeup for models and bridels','2015-05-02',8000,1,1,1,1,1,1,1,'2015-02-05 06:52:00','2015-02-05 06:52:00',NULL,NULL,NULL,NULL,NULL),(23,3,4,5,788,3,0,NULL,'good day....',NULL,NULL,'good morning...',NULL,500,1,0,0,0,0,1,0,'2015-02-13 12:40:20','2015-02-13 12:40:20','index.jpeg','image/jpeg',6869,'2015-02-13 12:40:13',NULL);
/*!40000 ALTER TABLE `peer_service_post_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peer_services`
--

DROP TABLE IF EXISTS `peer_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peer_service_type` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peer_services`
--

LOCK TABLES `peer_services` WRITE;
/*!40000 ALTER TABLE `peer_services` DISABLE KEYS */;
INSERT INTO `peer_services` VALUES (1,'Any','2015-01-12 00:00:00','0000-00-00 00:00:00'),(2,'Doctors','2015-01-12 04:07:15','0000-00-00 00:00:00'),(3,'Photographer','2015-01-12 04:07:16','0000-00-00 00:00:00'),(4,'Chefs','2015-01-12 04:08:15','0000-00-00 00:00:00'),(5,'Event Planer','2015-01-12 04:09:16','0000-00-00 00:00:00'),(6,'Beautician / Stylist','2015-01-12 04:10:10','0000-00-00 00:00:00'),(7,'Architech','2015-01-12 04:11:15','0000-00-00 00:00:00'),(8,'Others','2015-01-02 04:12:16','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `peer_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_requirements`
--

DROP TABLE IF EXISTS `post_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `food_type_id` int(11) DEFAULT NULL,
  `meal_type_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `no_of_persons` int(11) DEFAULT NULL,
  `budget` decimal(8,2) DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `seeker_provider` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `food_image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `food_image_file_size` int(11) DEFAULT NULL,
  `food_image_updated_at` datetime DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_requirements`
--

LOCK TABLES `post_requirements` WRITE;
/*!40000 ALTER TABLE `post_requirements` DISABLE KEYS */;
INSERT INTO `post_requirements` VALUES (1,1,3,4,818,2,2,3,28.6415,77.3714,1,60.00,'good taste ',2,0,'2015-01-08 10:40:23','2015-01-08 10:40:23','index.jpeg','image/jpeg',6869,'2015-01-08 10:40:22',NULL),(2,1,1,4,818,2,3,3,28.6415,77.3714,1,50.00,'good taste and spicey',2,1,'2015-01-08 10:41:36','2015-01-08 10:41:36',NULL,NULL,NULL,NULL,NULL),(3,1,3,4,818,3,2,3,28.6415,77.3714,1,111.00,'taste food ',3,1,'2015-01-15 09:44:09','2015-01-17 06:51:55',NULL,NULL,NULL,NULL,NULL),(4,1,1,4,818,2,3,3,28.6415,77.3714,1,111.00,'taste food with care',4,0,'2015-01-15 09:55:56','2015-01-15 09:55:56','index.jpeg','image/jpeg',6869,'2015-01-15 09:55:55',NULL),(5,1,1,4,806,2,3,2,28.6678,77.4326,1,50.00,'nice taste',3,0,'2015-02-14 06:26:48','2015-02-14 06:26:48','index.jpeg','image/jpeg',6869,'2015-02-14 06:26:43',NULL),(6,1,2,2,195,2,3,NULL,28.7145,77.1668,2,200.00,'delicious food',3,0,'2015-02-15 18:07:29','2015-02-15 18:07:29',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `post_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Individual Food Provider','2014-11-18 05:38:23','2014-11-18 05:38:23'),(2,'Caterers','2014-11-18 05:38:23','2014-11-18 05:38:23'),(3,'Chefs','2014-11-18 05:38:23','2014-11-18 05:38:23');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `negotiate_id` int(11) DEFAULT NULL,
  `book_negotiate_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rated_id` int(11) DEFAULT NULL,
  `post_requirement_id` int(11) DEFAULT NULL,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `rated_no` int(11) DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  `rider_post_requirement_id` int(11) DEFAULT NULL,
  `peer_service_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rates_on_negotiate_id` (`negotiate_id`),
  KEY `index_rates_on_book_negotiate_id` (`book_negotiate_id`),
  KEY `index_rates_on_user_id` (`user_id`),
  KEY `index_rates_on_post_requirement_id` (`post_requirement_id`),
  KEY `index_rates_on_book_post_requirement_id` (`book_post_requirement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,1,NULL,3,4,NULL,NULL,3,'Skill Sharing','2015-01-16 09:41:39','2015-01-16 09:41:39',7,NULL,NULL),(2,2,NULL,3,4,NULL,NULL,4,'Peer-to-Peer Service','2015-01-16 09:42:36','2015-01-16 09:42:36',NULL,NULL,11),(3,2,NULL,4,3,NULL,NULL,4,'Peer-to-Peer Service','2015-01-16 09:54:04','2015-01-16 09:54:04',NULL,NULL,11),(4,1,NULL,4,3,NULL,NULL,4,'Skill Sharing','2015-01-16 11:12:29','2015-01-16 11:12:29',7,NULL,NULL),(5,4,NULL,3,4,NULL,NULL,5,'Peer-to-Peer Service','2015-01-16 11:39:05','2015-01-16 11:39:05',NULL,NULL,12),(6,6,NULL,3,4,NULL,NULL,4,'Skill Sharing','2015-01-17 05:31:39','2015-01-17 05:31:39',6,NULL,NULL),(7,7,NULL,3,1,NULL,NULL,5,'Skill Sharing','2015-01-17 05:57:45','2015-01-17 05:57:45',2,NULL,NULL),(8,5,NULL,3,4,NULL,NULL,5,'Peer-to-Peer Service','2015-01-17 05:59:09','2015-01-17 05:59:09',NULL,NULL,14),(9,17,NULL,4,3,NULL,NULL,5,'Peer-to-Peer Service','2015-01-17 07:11:24','2015-01-17 07:11:24',NULL,NULL,15),(10,16,NULL,4,3,NULL,NULL,5,'Peer-to-Peer Service','2015-01-17 07:11:29','2015-01-17 07:11:29',NULL,NULL,14),(11,18,NULL,3,4,NULL,NULL,5,'Peer-to-Peer Service','2015-01-19 05:57:11','2015-01-19 05:57:11',NULL,NULL,18),(12,19,NULL,3,4,NULL,NULL,5,'Skill Sharing','2015-01-19 06:01:05','2015-01-19 06:01:05',8,NULL,NULL),(13,17,NULL,3,4,NULL,NULL,5,'Peer-to-Peer Service','2015-01-19 06:05:53','2015-01-19 06:05:53',NULL,NULL,15),(14,18,NULL,4,3,NULL,NULL,4,'Peer-to-Peer Service','2015-01-31 12:32:11','2015-01-31 12:32:11',NULL,NULL,18),(15,3,NULL,4,2,NULL,NULL,5,'Peer-to-Peer Service','2015-01-31 12:32:30','2015-01-31 12:32:30',NULL,NULL,5);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'North Indian','2014-11-18 05:38:22','2014-11-18 05:38:22'),(2,'Punjabi Food','2014-11-18 05:38:22','2014-11-18 05:38:22'),(3,'South Indian','2014-11-18 05:38:22','2014-11-18 05:38:22'),(4,'Bengali','2014-11-18 05:38:22','2014-11-18 05:38:22'),(5,'Konkani Food','2014-11-18 05:38:22','2014-11-18 05:38:22'),(6,'Goan','2014-11-18 05:38:22','2014-11-18 05:38:22'),(7,'Malwani','2014-11-18 05:38:22','2014-11-18 05:38:22'),(8,'Rajasthani','2014-11-18 05:38:22','2014-11-18 05:38:22'),(9,'Northeast India','2014-11-18 05:38:22','2014-11-18 05:38:22'),(10,'Hyderabadi','2014-11-18 05:38:22','2014-11-18 05:38:22'),(11,'Italian','2014-11-18 05:38:22','2014-11-18 05:38:22'),(12,'Thai','2014-11-18 05:38:22','2014-11-18 05:38:22'),(13,'Chinese','2014-11-18 05:38:22','2014-11-18 05:38:22'),(14,'Mexican','2014-11-18 05:38:23','2014-11-18 05:38:23'),(15,'Continental','2014-11-18 05:38:23','2014-11-18 05:38:23'),(16,'Any','2014-11-18 05:38:23','2014-11-18 05:38:23');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `post_requirement_id` int(11) DEFAULT NULL,
  `book_post_requirement_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skill_post_requirement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'jagan',NULL,NULL,NULL,'2015-02-13 19:26:31','2015-02-13 19:26:31',NULL),(2,'jdjdjadjfdhgsjdfhghsdfkhkhdfhhdfhadskhgfakshdgfkhagsdkfhagskhdgfahsdgfkh',NULL,NULL,NULL,'2015-02-14 04:57:14','2015-02-14 04:57:14',NULL),(3,'',NULL,NULL,NULL,'2015-02-14 05:11:04','2015-02-14 05:11:04',NULL),(4,'cjvzjcxvzjxcbvjzxcjbvz,xcb,vznxbc,nzcxnbvz,nxcbvznbxcmnvbcxnbvznxcbvznxbcvnzbxcvnzbxcvnzbcxnbvznxcvznxcvzbnxcv bzncx vmzbxc vzmbcxnvmzbnxcvzxmbnzvcbxnvzmbnxcvmzbvcxbnzvcbxcvzbxcvzxcbnvzbnxcvmzbnvxcbnzvxbnvzmbvxcmbzvxmbnzvmcbxnvzbcxvbzcx',NULL,NULL,NULL,'2015-02-14 05:59:12','2015-02-14 05:59:12',NULL),(5,'jdfshgskjdfhgsjkdfhgkjsdfjjj\r\n',NULL,NULL,NULL,'2015-02-14 06:19:52','2015-02-14 06:19:52',NULL),(6,'jdjdjdnfjkhsjdfgsjhfjjsdhfjhsfjdjdfhjshdfjhsjdfjsjdfjs',NULL,NULL,NULL,'2015-02-14 07:31:14','2015-02-14 07:31:14',NULL),(7,'good day...which have...',NULL,NULL,NULL,'2015-02-14 09:03:10','2015-02-14 09:03:10',NULL),(8,'hello ',NULL,NULL,NULL,'2015-02-15 17:35:10','2015-02-15 17:35:10',NULL),(9,'good book',NULL,NULL,NULL,'2015-02-15 18:42:08','2015-02-15 18:42:08',NULL),(10,'ok good',NULL,NULL,3,'2015-02-15 18:54:43','2015-02-15 18:54:43',NULL),(11,'ok good sharing tq',NULL,NULL,5,'2015-02-15 18:57:46','2015-02-15 18:57:46',NULL),(12,'good day..which have nie taste food..',NULL,NULL,NULL,'2015-02-16 05:18:18','2015-02-16 05:18:18',NULL),(13,'book have nice narrate which explain about real time examples.',NULL,NULL,5,'2015-02-16 05:20:03','2015-02-16 05:20:03',NULL),(14,'nice explanation about programing',NULL,NULL,3,'2015-02-16 05:25:54','2015-02-16 05:25:54',NULL),(15,'meeravalli explain good examples in real times.',NULL,NULL,4,'2015-02-16 05:36:39','2015-02-16 05:36:39',NULL),(16,'programs can implement tech.',NULL,NULL,3,'2015-02-16 05:38:14','2015-02-16 05:38:14',NULL),(17,'good going',NULL,NULL,4,'2015-02-17 02:42:24','2015-02-17 02:42:24',NULL),(18,'hello hw r u!!!!!!!!!!!!!!!',4,NULL,4,'2015-02-17 06:19:24','2015-02-17 06:19:24',NULL),(19,'hello how r u dng!!!!!!!!!',4,NULL,4,'2015-02-17 06:25:11','2015-02-17 06:25:11',NULL),(20,'it is good narrated!!!',3,NULL,5,'2015-02-17 06:27:45','2015-02-17 06:27:45',NULL),(21,'very tough to build up!!! you made it easy tq',2,NULL,2,'2015-02-17 09:35:30','2015-02-17 09:35:30',NULL),(22,'bus stop movie ta!!!!!',2,NULL,2,'2015-02-17 09:45:57','2015-02-17 09:45:57',NULL),(23,'i asked different thing .. he posted differently',3,NULL,5,'2015-02-17 10:31:05','2015-02-17 10:31:05',NULL),(24,'busstop love story',3,NULL,3,'2015-02-17 10:33:10','2015-02-17 10:33:10',NULL),(25,'something something in bus stop',3,NULL,NULL,'2015-02-17 10:36:17','2015-02-17 10:36:17',NULL),(26,'hello',3,NULL,NULL,'2015-02-17 19:20:14','2015-02-17 19:20:14',NULL),(27,'good',3,NULL,NULL,'2015-02-17 19:37:26','2015-02-17 19:37:26',NULL),(28,'hi hw r u',3,NULL,NULL,'2015-02-17 20:17:23','2015-02-17 20:17:23',NULL),(29,'very near tq',3,NULL,NULL,'2015-02-17 20:39:36','2015-02-17 20:39:36',NULL),(30,'hi good morning',3,NULL,NULL,'2015-02-18 02:21:13','2015-02-18 02:21:13',NULL),(31,'hello good morning',3,NULL,NULL,'2015-02-18 02:45:39','2015-02-18 02:45:39',NULL),(32,'gd mrng',3,NULL,NULL,'2015-02-18 02:59:36','2015-02-18 02:59:36',NULL),(33,'wojfsmlcmd',3,NULL,NULL,'2015-02-18 03:07:43','2015-02-18 03:07:43',NULL),(34,'vfdz ljv vmodvnnv ',3,NULL,NULL,'2015-02-18 03:16:45','2015-02-18 03:16:45',NULL),(35,'gmvmv mlc',3,NULL,NULL,'2015-02-18 03:23:40','2015-02-18 03:23:40',NULL),(36,'hh  dscinckcn nc c',3,NULL,NULL,'2015-02-18 03:34:27','2015-02-18 03:34:27',10),(37,'hc NC kcvm ',3,5,NULL,'2015-02-18 03:47:53','2015-02-18 03:47:53',NULL),(38,'gfjgfjhgkhg',3,6,NULL,'2015-02-18 04:26:07','2015-02-18 04:26:07',NULL),(39,'OKCACS,',3,6,NULL,'2015-02-18 04:42:19','2015-02-18 04:42:19',NULL),(40,'fakmcm',3,6,NULL,'2015-02-18 04:44:55','2015-02-18 04:44:55',NULL),(41,'good',3,6,NULL,'2015-02-18 05:23:07','2015-02-18 05:23:07',NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider_post_requirements`
--

DROP TABLE IF EXISTS `rider_post_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rider_post_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `ride_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `seeker_provider` tinyint(1) DEFAULT NULL,
  `latitute` float DEFAULT NULL,
  `longitute` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `home_service` tinyint(1) DEFAULT NULL,
  `ride_in_one_line` text COLLATE utf8_unicode_ci,
  `charges` float DEFAULT NULL,
  `mon` tinyint(1) DEFAULT NULL,
  `tue` tinyint(1) DEFAULT NULL,
  `wed` tinyint(1) DEFAULT NULL,
  `thu` tinyint(1) DEFAULT NULL,
  `fri` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `sun` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rider_file_name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rider_content_type` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rider_file_size` int(11) DEFAULT NULL,
  `rider_updated_at` datetime DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider_post_requirements`
--

LOCK TABLES `rider_post_requirements` WRITE;
/*!40000 ALTER TABLE `rider_post_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `rider_post_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ride_type` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
INSERT INTO `rides` VALUES (1,'Car Ride','2015-01-02 02:51:14','2015-01-02 02:51:43'),(2,'Bike Ride','2015-01-02 02:51:14','2015-01-02 02:51:41');
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140409174819'),('20140409175018'),('20140409175059'),('20140409175151'),('20140409175241'),('20140409175302'),('20140409175327'),('20140409180604'),('20140409192245'),('20140409192901'),('20140424184846'),('20140501075913'),('20140530085200'),('20140603110230'),('20140605202556'),('20140608053842'),('20140610121255'),('20140612115942'),('20140614101701'),('20140615075254'),('20140615075312'),('20140615075321'),('20140625073032'),('20140630180514'),('20140705182638'),('20140827194443'),('20140829161846'),('20140830044733'),('20140830163640'),('20140830163902'),('20140830163953'),('20140830164058'),('20140830190215'),('20140929081352'),('20140929081405'),('20140929102808'),('20141004052135'),('20141004075911'),('20141008055433'),('20141008055444'),('20141008060410'),('20141008060421'),('20141008065732'),('20141009043905'),('20141016063144'),('20141104050612'),('20141114094015'),('20141114094855'),('20150213173607');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Food Sharing','2014-11-18 05:38:21','2014-11-18 05:38:21'),(2,'Book Sharing','2014-11-18 05:38:21','2014-11-18 05:38:21'),(3,'Skill Sharing','2014-11-18 05:38:21','2014-11-18 05:38:21'),(4,'Peer-to-Peer Service','2015-01-12 03:15:52','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_post_requirements`
--

DROP TABLE IF EXISTS `skill_post_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_post_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `seeker_provider` tinyint(1) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `home_service` tinyint(1) DEFAULT NULL,
  `service_in_one_line` text COLLATE utf8_unicode_ci,
  `charges` float DEFAULT NULL,
  `mon` tinyint(1) DEFAULT NULL,
  `tue` tinyint(1) DEFAULT NULL,
  `wed` tinyint(1) DEFAULT NULL,
  `thu` tinyint(1) DEFAULT NULL,
  `fri` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `sun` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skill_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill_file_size` int(11) unsigned zerofill DEFAULT NULL,
  `skill_updated_at` datetime DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_skill_post_requirements_on_service_id` (`service_id`),
  KEY `index_skill_post_requirements_on_city_id` (`city_id`),
  KEY `index_skill_post_requirements_on_location_id` (`location_id`),
  KEY `index_skill_post_requirements_on_sub_category_id` (`sub_category_id`),
  KEY `index_skill_post_requirements_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_post_requirements`
--

LOCK TABLES `skill_post_requirements` WRITE;
/*!40000 ALTER TABLE `skill_post_requirements` DISABLE KEYS */;
INSERT INTO `skill_post_requirements` VALUES (1,3,6,818,6,1,1,28.6415,77.3714,'good day...',1,'good making',350,1,0,0,0,0,1,1,'2015-01-07 08:50:52','2015-01-07 08:50:52',NULL,NULL,NULL,NULL,NULL),(2,3,4,817,4,1,0,28.6748,77.4597,'good plat and taste',1,'good day...once again',450,1,1,1,0,0,0,0,'2015-01-07 08:53:48','2015-01-07 08:53:48','images.jpeg','image/jpeg',00000012202,'2015-01-07 08:53:46',NULL),(3,3,4,818,6,2,1,28.6415,77.3714,'good making',0,'good making web',500,1,0,0,0,0,1,0,'2015-01-08 10:44:32','2015-01-17 06:52:35',NULL,NULL,NULL,NULL,NULL),(4,3,4,806,5,2,0,28.6686,77.4321,'look and feel good',0,'good making site',450,1,0,0,0,0,1,1,'2015-01-08 10:45:36','2015-01-15 05:43:02','images.jpeg','image/jpeg',00000012202,'2015-01-08 10:45:35',NULL),(5,3,4,818,6,3,1,28.6415,77.3714,'practical example',0,'web tech',450,1,0,0,0,0,1,0,'2015-01-15 09:46:16','2015-01-15 09:46:16',NULL,NULL,NULL,NULL,NULL),(6,3,4,818,6,4,0,28.6415,77.3714,'well care pc&laptop',0,'mobile &laptop-pc',800,1,0,0,0,0,1,0,'2015-01-15 09:58:36','2015-01-15 09:58:36','images.jpeg','image/jpeg',00000012202,'2015-01-15 09:58:36',NULL),(7,3,4,818,2,4,0,28.6415,77.3714,'good day...',0,'good day...once again',450,1,0,0,0,0,1,0,'2015-01-16 09:39:37','2015-01-16 09:39:37','images.jpeg','image/jpeg',00000012202,'2015-01-16 09:39:36',NULL),(8,3,4,818,2,4,0,28.6415,77.3714,'good day... nice',0,'good day...once again',450,0,0,0,0,0,0,1,'2015-01-19 05:44:17','2015-01-19 05:45:05','index.jpeg','image/jpeg',00000006869,'2015-01-19 05:44:16',NULL),(9,3,4,806,7,3,1,28.6686,77.4321,'good training care',0,'good making sports training',4500,0,0,0,1,1,1,1,'2015-01-19 05:49:11','2015-01-19 05:49:41',NULL,NULL,NULL,NULL,NULL),(10,3,4,818,5,3,0,28.6415,77.3714,'good day...',1,'good day...once again',800,1,0,0,0,0,1,1,'2015-02-14 06:05:16','2015-02-14 06:05:16','index.jpeg','image/jpeg',00000006869,'2015-02-14 06:05:15',NULL);
/*!40000 ALTER TABLE `skill_post_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'All','2014-11-18 05:38:22','2014-11-18 05:38:22'),(2,'Dance & Fitness','2014-11-18 05:38:22','2014-11-18 05:38:22'),(3,'Music','2014-11-18 05:38:22','2014-11-18 05:38:22'),(4,'Cooking','2014-11-18 05:38:22','2014-11-18 05:38:22'),(5,'Teaching & Education','2014-11-18 05:38:22','2014-11-18 05:38:22'),(6,'Professional Skill','2014-11-18 05:38:22','2014-11-18 05:38:22'),(7,'Sports','2014-11-18 05:38:22','2014-11-18 05:38:22'),(8,'Art and Crafts','2014-11-18 05:38:22','2014-11-18 05:38:22');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_link` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_link` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_unlock_token` (`unlock_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'meeravalli.sshaik@gmail.com','',NULL,NULL,NULL,15,'2015-01-29 06:04:21','2015-01-28 11:07:05','127.0.0.1','127.0.0.1',NULL,'2014-11-21 06:10:09',NULL,NULL,0,NULL,NULL,'Meeravalli Shaik',NULL,'8977840588',NULL,NULL,'2014-11-21 06:10:09','2015-01-29 06:04:21','indirapuram','http://graph.facebook.com/847231975308949/picture',NULL,NULL,NULL,1,1,'facebook','847231975308949','http://www.facebook.com/MeeravalliShaik','http://www.twitter.com/MeeravalliS','',NULL),(2,'66@66.com','$2a$10$vMZDmB9l4BBb6FybOx9mcerUvEt52/ttwq54WBLHYoZLXoVpXWX2e',NULL,NULL,NULL,14,'2015-02-17 09:45:12','2015-02-17 09:20:22','127.0.0.1','127.0.0.1',NULL,'2015-01-08 06:21:14','2015-01-08 06:18:10',NULL,0,NULL,NULL,'shaik',NULL,'8977840588',NULL,NULL,'2015-01-08 06:18:10','2015-02-17 09:45:12','indirapuram','index.jpeg','image/jpeg',6869,'2015-01-08 06:18:08',1,1,NULL,NULL,NULL,NULL,NULL,NULL),(3,'demotest4123@gmail.com','$2a$10$jps2dzniYHwCUFkTEZfR8.FI.Lwr6AnIhfPHEo6xZGU9sYNwcDPVu',NULL,NULL,NULL,64,'2015-02-19 01:31:02','2015-02-18 02:20:45','127.0.0.1','127.0.0.1',NULL,'2015-01-15 09:30:17','2015-01-15 09:27:34',NULL,0,NULL,NULL,'shaik',NULL,'7053976493',NULL,NULL,'2015-01-15 09:27:34','2015-02-19 01:31:02','indirapuram','images.jpeg','image/jpeg',12202,'2015-01-15 09:27:33',0,1,NULL,NULL,'http://www.facebook.com/MeeravalliShaik','http://www.twitter.com/MeeravalliS','',NULL),(4,'testdemo4123@gmail.com','$2a$10$SN3CTdcOPtOWEa80NcwtR.lB/3MwTzxpYmhbzw6EkBgV9s3V73mUS',NULL,NULL,NULL,24,'2015-02-17 06:24:24','2015-02-17 06:18:41','127.0.0.1','127.0.0.1',NULL,'2015-01-15 09:39:22','2015-01-15 09:32:13',NULL,0,NULL,NULL,'vali',NULL,'9676487188',NULL,NULL,'2015-01-15 09:32:13','2015-02-17 06:24:24','vaishali','images.jpeg','image/jpeg',12202,'2015-01-15 09:32:13',1,1,NULL,NULL,NULL,NULL,NULL,NULL),(5,'qwe@ttt.com','$2a$10$VFGYlgfmTIotLjGJ9adA5OY3nSb3RCMu2KV6MawZO8BAxmeumlx.W',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-01-19 06:44:56','2015-01-19 06:43:54',NULL,0,NULL,NULL,'testing123',NULL,'9898989898',NULL,NULL,'2015-01-19 06:43:54','2015-01-19 06:44:56','checking',NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2015-02-19  8:53:46
