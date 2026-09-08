CREATE DATABASE  IF NOT EXISTS `codegym_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codegym_ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: codegym_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Lý Tiểu Long','1998-02-14','0901234567','Hà Nội','long@gmail.com'),(2,'Trương Tam Phong','1985-05-20','0912345678','TP HCM','phong@gmail.com'),(3,'Đoàn Dự','1999-08-10','0923456789','Đà Nẵng','du@gmail.com'),(4,'Vương Ngữ Yên','2000-12-05','0934567890','Huế','yen@gmail.com'),(5,'Tiêu Phong','1982-10-15','0945678901','Hải Phòng','phongtieu@gmail.com'),(6,'Hư Trúc','1995-04-25','0956789012','Cần Thơ','truc@gmail.com'),(7,'Mộ Dung Phục','1990-07-30','0967890123','Nghệ An','phuc@gmail.com'),(8,'A Châu','1997-09-12','0978901234','Đồng Nai','chau@gmail.com'),(9,'A Tử','1999-01-18','0989012345','Bình Dương','tu@gmail.com'),(10,'Lệnh Hồ Xung','1993-03-22','0990123456','Hà Nội','xung@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Nguyễn Văn An','1990-05-15','Hà Nội'),(2,'Trần Thị Bình','1992-08-20','Đà Nẵng'),(3,'Lê Văn Cường','1988-12-10','TP HCM'),(4,'Phạm Thị Dung','1995-03-25','Cần Thơ'),(5,'Hoàng Văn Em','1993-07-30','Hải Phòng'),(6,'Vũ Thị Hoa','1991-09-05','Huế'),(7,'Đặng Văn Giang','1989-11-12','Nghệ An'),(8,'Bùi Thị Hạnh','1996-01-18','Đồng Nai'),(9,'Đỗ Văn Hùng','1994-04-22','Bình Dương'),(10,'Ngô Thị Lan','1997-06-15','Hà Nội');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,1,2),(1,2,1),(2,3,3),(3,4,1),(4,5,2),(5,6,5),(6,7,1),(7,8,2),(8,9,4),(9,10,10),(10,1,1);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,'Tiền mặt','2023-09-01','2023-09-05','Hà Nội'),(2,2,1,'Thẻ tín dụng','2023-09-02','2023-09-06','TP HCM'),(3,3,4,'Chuyển khoản','2023-10-10','2023-10-15','Đà Nẵng'),(4,4,3,'Tiền mặt','2023-10-12','2023-10-16','Huế'),(5,5,6,'Thẻ tín dụng','2023-11-05','2023-11-10','Hải Phòng'),(6,6,5,'Chuyển khoản','2023-11-08','2023-11-12','Cần Thơ'),(7,7,8,'Tiền mặt','2023-12-01','2023-12-05','Nghệ An'),(8,8,7,'Thẻ tín dụng','2023-12-15','2023-12-20','Đồng Nai'),(9,9,10,'Chuyển khoản','2024-01-05','2024-01-10','Bình Dương'),(10,10,9,'Tiền mặt','2024-01-10','2024-01-15','Hà Nội');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `product_chk_1` CHECK ((`price` > 100)),
  CONSTRAINT `product_chk_2` CHECK ((`stock` > 10))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Iphone X',1000,10,20),(2,'Samsung Note 10',1200,5,60),(3,'Samsung A5',400,6,20),(4,'Iphone X',1000,10,20),(5,'Samsung Note 10',1200,5,60),(6,'Samsung A5',400,10,25),(7,'Iphone 11',600,15,40),(8,'Iphone 8 Plus 128G',500,10,15),(9,'Oppo F10',350,10,50),(10,'Macbook Pro 2020',1500,5,12),(11,'Dell XPS 13',1300,20,18),(12,'Apple Watch S5',300,15,30),(13,'Airpods Pro',250,5,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-08 23:21:41
