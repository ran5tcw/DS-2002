-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sakila_2
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `dim_customers`
--
use sakila_2;
DROP TABLE IF EXISTS `dim_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dim_customers` (
  `customer_key` bigint NOT NULL,
  `first_name` text,
  `last_name` text,
  `email` text,
  `active` bigint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `address` text,
  `district` text,
  `postal_code` text,
  `phone` text,
  `city` text,
  `country` text,
  PRIMARY KEY (`customer_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dim_date` (
  `date_key` int NOT NULL,
  `full_date` date DEFAULT NULL,
  `date_name` char(11) NOT NULL,
  `date_name_us` char(11) NOT NULL,
  `date_name_eu` char(11) NOT NULL,
  `day_of_week` tinyint NOT NULL,
  `day_name_of_week` char(10) NOT NULL,
  `day_of_month` tinyint NOT NULL,
  `day_of_year` smallint NOT NULL,
  `weekday_weekend` char(10) NOT NULL,
  `week_of_year` tinyint NOT NULL,
  `month_name` char(10) NOT NULL,
  `month_of_year` tinyint NOT NULL,
  `is_last_day_of_month` char(1) NOT NULL,
  `calendar_quarter` tinyint NOT NULL,
  `calendar_year` smallint NOT NULL,
  `calendar_year_month` char(10) NOT NULL,
  `calendar_year_qtr` char(10) NOT NULL,
  `fiscal_month_of_year` tinyint NOT NULL,
  `fiscal_quarter` tinyint NOT NULL,
  `fiscal_year` int NOT NULL,
  `fiscal_year_month` char(10) NOT NULL,
  `fiscal_year_qtr` char(10) NOT NULL,
  PRIMARY KEY (`date_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_film`
--

DROP TABLE IF EXISTS `dim_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dim_film` (
  `film_key` bigint NOT NULL,
  `title` text,
  `description` text,
  `release_year` bigint DEFAULT NULL,
  `rental_duration` bigint DEFAULT NULL,
  `rental_rate` double DEFAULT NULL,
  `length` bigint DEFAULT NULL,
  `replacement_cost` double DEFAULT NULL,
  `rating` text,
  `special_features` text,
  `last_update` text,
  `film_language` text,
  PRIMARY KEY (`film_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_store`
--

DROP TABLE IF EXISTS `dim_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dim_store` (
  `store_id` bigint NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `address` text,
  `district` text,
  `postal_code` text,
  `phone` text,
  `city` text,
  `country` text,
  `store_key` int DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_rental`
--

DROP TABLE IF EXISTS `fact_rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `fact_rental` (
  `fact_rental_key` bigint NOT NULL,
  `rental_key` bigint DEFAULT NULL,
  `customer_key` bigint DEFAULT NULL,
  `store_key` bigint DEFAULT NULL,
  `film_key` bigint DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `rental_date_key` bigint DEFAULT NULL,
  `return_date_key` bigint DEFAULT NULL,
  `payment_date_key` bigint DEFAULT NULL,
  `last_update_key` bigint DEFAULT NULL,
  PRIMARY KEY (`fact_rental_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 17:31:11
