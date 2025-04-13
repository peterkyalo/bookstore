-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `uk_country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (8,'Australia'),(16,'Brazil'),(7,'Canada'),(14,'China'),(9,'France'),(10,'Germany'),(12,'Italy'),(13,'Japan'),(15,'Russia'),(11,'Spain'),(6,'United Kingdom'),(5,'United States');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_status`
--

DROP TABLE IF EXISTS `address_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_value` varchar(20) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `uk_status_value` (`status_value`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_status`
--

LOCK TABLES `address_status` WRITE;
/*!40000 ALTER TABLE `address_status` DISABLE KEYS */;
INSERT INTO `address_status` VALUES (7,'Billing'),(5,'Current'),(12,'Permanent'),(6,'Previous'),(8,'Shipping'),(11,'Temporary'),(10,'Vacation'),(9,'Work');
/*!40000 ALTER TABLE `address_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `street_number` varchar(10) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country_id` int NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_address_country` (`country_id`),
  CONSTRAINT `fk_address_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (21,'123','Main Street','New York',8,'10001'),(22,'456','Oak Avenue','London',16,'SW1A 1AA'),(23,'789','Maple Road','Toronto',7,'M5V 2H1'),(24,'101','Pine Lane','Sydney',14,'2000'),(25,'202','Elm Street','Paris',9,'75008'),(26,'303','Cedar Blvd','Berlin',10,'10115'),(27,'404','Birch Way','Madrid',12,'28013'),(28,'505','Spruce Circle','Rome',13,'00100'),(29,'606','Willow Drive','Tokyo',15,'100-0001'),(30,'707','Aspen Court','Beijing',11,'100000'),(31,'808','Redwood Lane','Moscow',11,'101000'),(32,'909','Sycamore Street','São Paulo',6,'01000-000'),(33,'121','Magnolia Avenue','Chicago',5,'60601'),(34,'232','Juniper Road','Manchester',12,'M1 1AB'),(35,'343','Dogwood Lane','Vancouver',13,'V6B 1H4'),(36,'454','Hawthorn Way','Melbourne',14,'3000'),(37,'565','Linden Street','Lyon',6,'69001'),(38,'676','Poplar Avenue','Hamburg',6,'20095'),(39,'787','Chestnut Road','Barcelona',7,'08001'),(40,'898','Walnut Boulevard','Milan',8,'20121');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_language`
--

DROP TABLE IF EXISTS `book_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language_code` varchar(8) NOT NULL,
  `language_name` varchar(50) NOT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `uk_language_code` (`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_language`
--

LOCK TABLES `book_language` WRITE;
/*!40000 ALTER TABLE `book_language` DISABLE KEYS */;
INSERT INTO `book_language` VALUES (11,'en','English'),(12,'fr','French'),(13,'es','Spanish'),(14,'de','German'),(15,'it','Italian'),(16,'ja','Japanese'),(17,'zh','Chinese'),(18,'ru','Russian');
/*!40000 ALTER TABLE `book_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(100) NOT NULL,
  PRIMARY KEY (`publisher_id`),
  UNIQUE KEY `uk_publisher_name` (`publisher_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (12,'Cambridge University Press'),(9,'Hachette Livre'),(6,'HarperCollins'),(8,'Macmillan'),(11,'Oxford University Press'),(5,'Penguin Random House'),(10,'Scholastic'),(7,'Simon & Schuster');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `uk_author_name` (`author_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (8,'Agatha Christie'),(12,'Charles Dickens'),(15,'Ernest Hemingway'),(14,'Fyodor Dostoevsky'),(6,'George R.R. Martin'),(5,'J.K. Rowling'),(9,'J.R.R. Tolkien'),(10,'Jane Austen'),(13,'Leo Tolstoy'),(11,'Mark Twain'),(7,'Stephen King'),(16,'Virginia Woolf');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `publisher_id` int NOT NULL,
  `language_id` int NOT NULL,
  `num_pages` int DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `uk_isbn` (`isbn`),
  KEY `fk_book_publisher` (`publisher_id`),
  KEY `fk_book_language` (`language_id`),
  CONSTRAINT `fk_book_language` FOREIGN KEY (`language_id`) REFERENCES `book_language` (`language_id`),
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (101,'Harry Potter and the Philosopher\'s Stone','9780747532743',12,11,223,'1997-06-26',12.99,50),(102,'A Game of Thrones','9780553103540',9,12,694,'1996-08-01',15.99,30),(103,'The Shining','9780307743657',6,13,447,'1977-01-28',9.99,25),(104,'Murder on the Orient Express','9780007119318',8,14,256,'1934-01-01',8.99,40),(105,'The Hobbit','9780547928227',12,15,310,'1937-09-21',14.99,35),(106,'Pride and Prejudice','9780141439518',6,16,279,'1813-01-28',7.99,45),(107,'The Adventures of Huckleberry Finn','9780486280615',11,17,366,'1884-12-10',6.99,30),(108,'A Tale of Two Cities','9781853260391',5,18,489,'1859-11-26',8.99,38),(109,'War and Peace','9781400079988',11,11,1392,'1869-01-01',19.99,20),(110,'Crime and Punishment','9780143058144',10,11,671,'1866-01-01',10.99,28),(111,'The Old Man and the Sea','9780684801223',7,12,127,'1952-09-01',6.99,30),(112,'Mrs Dalloway','9780156628709',7,13,194,'1925-05-14',7.99,25),(113,'The Great Gatsby','9780743273565',11,14,180,'1925-04-10',8.99,38),(114,'To Kill a Mockingbird','9780061120084',8,15,281,'1960-07-11',9.99,42),(115,'1984','9780451524935',5,16,328,'1949-06-08',7.99,36),(116,'The Catcher in the Rye','9780316769488',10,17,277,'1951-07-16',8.99,33),(117,'The Lord of the Rings','9780544003415',7,18,1178,'1954-07-29',19.99,20),(118,'The Da Vinci Code','9780307474278',10,11,489,'2003-03-18',14.99,35),(119,'The Handmaid\'s Tale','9780385490818',5,12,11,'1985-08-01',10.99,28),(120,'Norwegian Wood','9780375704024',6,13,296,'1987-08-04',11.99,15);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_author` (
  `book_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `fk_bookauthor_author` (`author_id`),
  CONSTRAINT `fk_bookauthor_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  CONSTRAINT `fk_bookauthor_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` VALUES (107,5),(117,5),(105,6),(106,6),(119,6),(114,7),(101,8),(115,8),(108,9),(109,9),(110,10),(120,10),(112,11),(113,11),(116,11),(102,12),(118,12),(111,13),(104,14),(103,15);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `uk_customer_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John','Smith','john.smith@example.com','555-0101'),(2,'Emily','Johnson','emily.johnson@example.com','555-0102'),(3,'Michael','Williams','michael.williams@example.com','555-0103'),(4,'Sarah','Brown','sarah.brown@example.com','555-0104'),(5,'David','Jones','david.jones@example.com','555-0105'),(6,'Jessica','Garcia','jessica.garcia@example.com','555-0106'),(7,'Robert','Miller','robert.miller@example.com','555-0107'),(8,'Jennifer','Davis','jennifer.davis@example.com','555-0108'),(9,'Thomas','Rodriguez','thomas.rodriguez@example.com','555-0109'),(10,'Lisa','Martinez','lisa.martinez@example.com','555-0110');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `method_id` int NOT NULL AUTO_INCREMENT,
  `method_name` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`method_id`),
  UNIQUE KEY `uk_method_name` (`method_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES (4,'Standard',5.99),(5,'Express',12.99),(6,'Overnight',24.99),(7,'International',35.99),(8,'Free',0.00),(9,'Same Day',39.99);
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_value` varchar(20) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `uk_order_status_value` (`status_value`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (14,'Backordered'),(10,'Cancelled'),(9,'Delivered'),(13,'Partially Shipped'),(6,'Pending'),(7,'Processing'),(12,'Refunded'),(11,'Returned'),(8,'Shipped');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Table structure for table `cust_order`
--

DROP TABLE IF EXISTS `cust_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `shipping_address_id` int NOT NULL,
  `method_id` int NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `fk_custorder_customer` (`customer_id`),
  KEY `fk_custorder_address` (`shipping_address_id`),
  KEY `fk_custorder_method` (`method_id`),
  CONSTRAINT `fk_custorder_address` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `fk_custorder_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_custorder_method` FOREIGN KEY (`method_id`) REFERENCES `shipping_method` (`method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_order`
--

LOCK TABLES `cust_order` WRITE;
/*!40000 ALTER TABLE `cust_order` DISABLE KEYS */;
INSERT INTO `cust_order` VALUES (1,1,21,4,'2023-01-15 10:30:00'),(2,2,22,5,'2023-01-16 14:45:00'),(3,3,23,6,'2023-01-17 09:15:00'),(4,4,24,4,'2023-01-18 16:20:00'),(5,5,25,5,'2023-01-19 11:00:00'),(6,6,26,7,'2023-01-20 13:30:00'),(7,7,27,8,'2023-01-21 15:45:00'),(8,8,28,9,'2023-01-22 10:00:00'),(9,1,23,4,'2023-01-23 12:15:00'),(10,9,29,5,'2023-01-24 14:30:00'),(11,10,30,6,'2023-01-25 09:45:00'),(12,2,34,7,'2023-01-26 11:00:00'),(13,3,35,8,'2023-01-27 16:30:00'),(14,4,36,4,'2023-01-28 10:15:00'),(15,5,37,5,'2023-01-29 14:00:00');
/*!40000 ALTER TABLE `cust_order` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_id` int NOT NULL,
  `address_id` int NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`customer_id`,`address_id`),
  KEY `fk_customeraddress_address` (`address_id`),
  KEY `fk_customeraddress_status` (`status_id`),
  CONSTRAINT `fk_customeraddress_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `fk_customeraddress_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_customeraddress_status` FOREIGN KEY (`status_id`) REFERENCES `address_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,21,5),(2,22,5),(3,23,5),(4,24,5),(5,25,5),(6,26,5),(7,27,5),(8,28,5),(9,29,5),(10,30,5),(5,35,6),(1,31,7),(8,38,7),(2,32,8),(10,39,8),(3,33,9),(4,34,10),(10,40,10),(6,36,11),(7,37,12);
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line` (
  `line_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`line_id`),
  KEY `fk_orderline_order` (`order_id`),
  KEY `fk_orderline_book` (`book_id`),
  CONSTRAINT `fk_orderline_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_orderline_order` FOREIGN KEY (`order_id`) REFERENCES `cust_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (35,1,101,1,12.99),(36,1,103,1,9.99),(37,1,105,1,14.99),(38,2,102,1,15.99),(39,2,104,2,8.99),(40,3,106,1,7.99),(41,4,107,1,6.99),(42,4,108,1,8.99),(43,4,109,1,19.99),(44,4,110,1,10.99),(45,5,111,1,6.99),(46,5,112,1,7.99),(47,6,113,1,8.99),(48,6,114,1,9.99),(49,6,115,1,7.99),(50,7,116,1,8.99),(51,7,117,1,19.99),(52,8,118,2,14.99),(53,9,119,1,10.99),(54,9,120,1,11.99),(55,9,111,1,12.99),(56,10,112,1,15.99),(57,10,113,1,9.99),(58,11,114,1,8.99),(59,11,115,1,14.99),(60,11,116,1,7.99),(61,11,117,1,6.99),(62,12,118,3,8.99),(63,13,119,1,19.99),(64,13,120,1,10.99),(65,14,111,2,6.99),(66,15,112,1,7.99),(67,15,113,1,8.99),(68,15,114,1,9.99);
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `status_id` int NOT NULL,
  `status_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`history_id`),
  KEY `fk_orderhistory_order` (`order_id`),
  KEY `fk_orderhistory_status` (`status_id`),
  CONSTRAINT `fk_orderhistory_order` FOREIGN KEY (`order_id`) REFERENCES `cust_order` (`order_id`),
  CONSTRAINT `fk_orderhistory_status` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (1,1,6,'2023-01-15 10:30:00'),(2,1,7,'2023-01-15 12:00:00'),(3,1,8,'2023-01-16 09:00:00'),(4,1,9,'2023-01-18 14:30:00'),(5,2,12,'2023-01-16 14:45:00'),(6,2,13,'2023-01-16 16:00:00'),(7,2,10,'2023-01-17 10:00:00'),(8,2,11,'2023-01-19 11:45:00'),(9,3,8,'2023-01-17 09:15:00'),(10,3,9,'2023-01-17 11:30:00'),(11,3,7,'2023-01-18 08:00:00'),(12,4,9,'2023-01-18 16:20:00'),(13,4,12,'2023-01-19 10:00:00'),(14,5,11,'2023-01-19 11:00:00'),(15,5,12,'2023-01-19 13:00:00'),(16,5,13,'2023-01-20 09:00:00'),(17,5,14,'2023-01-22 16:00:00'),(18,6,6,'2023-01-20 13:30:00'),(19,6,7,'2023-01-21 10:00:00'),(20,7,6,'2023-01-21 15:45:00'),(21,7,8,'2023-01-22 09:00:00'),(22,8,7,'2023-01-22 10:00:00'),(23,8,12,'2023-01-22 14:00:00'),(24,8,13,'2023-01-23 08:00:00'),(25,9,11,'2023-01-23 12:15:00'),(26,9,12,'2023-01-24 09:00:00'),(27,10,11,'2023-01-24 14:30:00'),(28,11,11,'2023-01-25 09:45:00'),(29,11,12,'2023-01-25 11:00:00'),(30,11,13,'2023-01-26 08:00:00'),(31,11,14,'2023-01-28 15:00:00'),(32,12,10,'2023-01-26 11:00:00'),(33,12,12,'2023-01-27 10:00:00'),(34,13,12,'2023-01-27 16:30:00'),(35,13,14,'2023-01-28 09:00:00'),(36,13,13,'2023-01-29 08:00:00'),(37,14,11,'2023-01-28 10:15:00'),(38,14,12,'2023-01-29 10:00:00'),(39,15,11,'2023-01-29 14:00:00');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12 18:52:06
