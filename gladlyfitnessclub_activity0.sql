-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gladlyfitnessclub
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `activity_name` varchar(55) NOT NULL,
  `activity_datetime` datetime DEFAULT NULL,
  `activity_duration` time DEFAULT NULL,
  `members_id` int NOT NULL,
  `staff_id` int NOT NULL,
  KEY `members_id` (`members_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`members_id`) REFERENCES `members` (`members_id`),
  CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES ('Bouldering','2024-03-17 22:59:24','23:59:59',111,10),('Bouldering','2024-05-09 13:42:49','15:05:05',123,12),('Bouldering','2024-06-20 05:26:46','07:10:02',113,10),('Bouldering','2024-01-14 01:21:20','05:13:59',119,11),('Bouldering','2024-07-10 00:22:55','03:56:59',122,13),('Bouldering','2024-01-30 18:17:18','21:34:55',103,14),('Swimming','2024-02-05 10:53:09','12:30:56',109,10),('Swimming','2024-03-29 10:46:18','12:20:23',109,11),('Swimming','2024-05-22 07:39:22','08:10:09',107,11),('Swimming','2024-01-15 12:18:56','15:45:01',106,10),('Swimming','2024-02-26 06:44:56','07:30:12',123,10),('Swimming','2024-03-26 21:32:27','23:00:53',124,12),('Swimming','2024-03-27 14:59:30','17:31:27',124,13),('Swimming','2024-04-08 02:36:23','03:45:21',122,14),('Swimming','2024-05-07 02:56:51','04:39:14',120,17),('Swimming','2024-01-29 23:25:23','01:10:22',110,19),('Swimming','2024-05-14 18:59:38','20:56:18',120,11),('Gym','2024-07-10 09:41:28','12:33:01',102,10),('Gym','2024-05-19 11:15:19','12:35:08',122,21),('Gym','2024-06-27 10:07:54','12:22:12',113,11),('Gym','2024-05-25 08:12:17','11:55:15',111,11),('Gym','2024-01-04 19:28:50','21:44:17',105,13),('Gym','2024-05-08 08:04:11','12:00:00',105,18),('Gym','2024-04-04 04:12:53','07:09:43',104,18),('Gym','2024-05-24 07:14:39','10:28:55',124,12),('Gym','2024-04-03 10:32:35','13:07:35',110,10),('Gym','2024-03-03 05:38:26','06:43:21',103,19),('Gym','2024-05-24 01:52:09','04:20:23',118,14),('Gym','2024-04-16 02:46:10','04:34:33',115,21),('Gym','2024-03-06 11:11:21','13:33:22',108,12),('Gym','2024-04-15 19:17:02','22:22:12',115,14),('Gym','2024-06-12 16:27:37','19:32:54',104,16),('Gym','2024-05-07 03:10:43','05:45:53',100,16),('Gym','2024-02-28 13:07:19','15:29:34',106,12),('Gym','2024-07-03 12:24:58','15:39:33',100,10),('Gym','2024-04-13 01:59:16','04:33:22',115,16),('Gym','2024-06-06 15:27:27','17:23:11',101,14),('Gym','2024-02-16 07:15:54','08:45:24',116,15),('Gym','2024-04-28 12:25:55','14:01:12',101,13),('Pilates','2024-04-20 20:17:16','23:05:05',122,11),('Pilates','2024-04-28 21:56:19','23:45:09',109,11),('Pilates','2024-03-27 09:39:06','12:28:50',114,15),('Pilates','2024-07-10 15:43:36','16:30:57',102,20),('Pilates','2024-05-11 14:53:37','15:45:08',103,22),('Pilates','2024-04-02 14:48:03','16:23:55',107,22),('Pilates','2024-01-27 21:29:43','23:55:35',114,22),('Basketball','2024-04-11 14:03:48','15:37:06',101,14),('Basketball','2024-04-11 15:37:52','18:35:55',121,19),('Basketball','2024-04-15 21:42:39','23:50:34',116,23),('Basketball','2024-07-05 08:42:37','12:28:45',122,10),('Basketball','2024-05-11 00:29:57','01:40:43',117,18),('Football','2024-02-27 06:10:48','09:23:54',121,12),('Football','2024-01-21 09:39:50','12:44:57',117,10),('Football','2024-06-18 04:54:08','07:33:09',122,13),('Dancing','2024-02-26 10:34:37','12:39:13',112,11),('Dancing','2024-01-16 06:26:10','09:08:22',111,11),('Dancing','2024-06-02 07:12:12','08:40:25',122,15),('Dancing','2024-04-30 03:07:34','06:54:23',112,20),('Dancing','2024-01-05 17:19:49','19:22:54',112,20),('Dancing','2024-02-19 19:41:39','21:45:26',107,20),('Dancing','2024-07-05 08:17:41','10:20:58',102,20),('Dancing','2024-06-12 00:43:59','03:44:21',118,11);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-19  3:58:46
