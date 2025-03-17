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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `members_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` int DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `branch_code` varchar(3) DEFAULT NULL,
  `membership_type` varchar(55) NOT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`members_id`),
  KEY `branch_code` (`branch_code`),
  CONSTRAINT `FK_branchcode` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`),
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`),
  CONSTRAINT `members_ibfk_2` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('Danilo','Ray',100,836183275,'daniloray@gmail.com','97, Templeogue Wood, Dublin, D12P5YP','D00','Annually','2022-01-19'),('Nik','Edwards',101,835179432,'nikedwards@gmail.com','307, Hawthorns Road, Dublin, A94EY65','A00','Monthly','2021-06-20'),('Glad','Phillips',102,832647519,'gladisephillips@gmail.com','92, Silchester Park, Dublin, A96FE09','A00','Daily','2024-06-23'),('Bim','Holland',103,836943521,'bimholland@gmail.com','88, St Helens Road, Dublin, A94A2A4','A00','Weekly','2023-08-16'),('Efren','Burke',104,836841572,'efrenburke@gmail.com','131, CarrigWood, Dublin, D24FW9Y','D00','Annually','2020-01-01'),('Justine','Walker',105,836439857,'justinewalker@gmail.com',' 26, Clanmawr, Dublin, D18E285','D00','Monthly','2023-11-17'),('John','Chandler',106,838256497,'johnchandler@gmail.com','21, Fox Lane, Dublin, D05H2K2','D00','Monthly','2021-12-24'),('Marie','Campbell',107,837165382,'mariecampbell@gmail.com','2, The Orchard, Dublin, A94PC95','A00','Weekly','2023-02-14'),('Darren','Dunn',108,833894175,'darrendunn@gmail.com','24, Castlewood Avenue, Dublin,  D06K2F3','D00','Monthly','2022-07-15'),('Emma','Carr',109,838324569,'emmacarr@gmail.com','122, Nephin Road, Dublin, D07Y891','D00','Monthly','2023-04-03'),('Sharon','Cooper',110,832391647,'sharoncooper@gmail.com','80, Saint Fintans Park, Dublin, A94A4A7','A00','Annually','2020-09-19'),('Joe','Terry',111,833691427,'joeterry@gmail.com','13, Croydon Green, Dublin, D03Y0C6','D00','Daily','2024-01-07'),('Karen','Obrien',112,832381657,'karenobrien@gmail.com','21, Alden Road, Dublin, D05H2K2','D00','Monthly','2022-05-21'),('June','Jensen',113,838541936,'junejensen@gmail.com','50, Woodlands Park, Dublin, A94AN81','A00','Monthly','2024-01-13'),('Susan','Parks',114,837986541,'susanparks@gmail.com','8, Hollyville Lawn, Dublin, D20DT92','D00','Monthly','2021-08-17'),('Matthew','Heath',115,834156389,'matthewheath@gmail.com','391, Pearse Street, Dublin, A96KV84','A00','Annually','2023-03-28'),('Alvin','Cobb',116,832167958,'alvincobb@gmail.com','12a, Carrickbrack Road, Dublin, D13F3C1','D00','Annually','2023-07-05'),('Julius','Adams',117,833654182,'juliusadams@gmail.com','27, OConnell Street Lower, Dublin, D01P5P5','D00','Monthly','2020-02-12'),('Laiza','Scott',118,837392465,'laizascott@gmail.com','116, Esker Park, Dublin, D78E3F9','D00','Monthly','2023-05-05'),('Leonard','Kennedy',119,836842915,'leonardkennedy@gmail.com','8, Innismore, Dublin, D12VN1F','D00','Monthly','2020-07-15'),('Patricia','Holt',120,834851796,'patriciaholt@gmail.com','6, Springfield, Dublin, D07VRX2','D00','Monthly','2022-09-04'),('Lydia','Ramsey',121,831429635,'lydiaramsey@gmail.com','25, Old Navan Road, Dublin, D15NX98','D00','Monthly','2021-10-12'),('Albert','Reilly',122,839526137,'albertreilly@gmail.com','4, Sigurd Road, Dublin, D07V403','D00','Annually','2024-03-08'),('Alex','Hopkins',123,837153248,'alexhopkins@gmail.com','36, Newbrook Avenue, Dublin, D05H2K2','D00','Monthly','2020-06-19'),('Owen','McCoy',124,83472359,'owenmccoy@gmail.com','37, Fairy Hill, Dublin, A94DA33','A00','Monthly','2023-11-11'),('Heaven','Reilly',125,836189671,'heavenreilly@gmail.com','98, Rose Wood, Dublin, D12P6YP','D00','Annually','2024-07-18');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upper_case_name` BEFORE INSERT ON `members` FOR EACH ROW BEGIN
    SET NEW.first_name = CONCAT(UPPER(LEFT(NEW.first_name, 1)), LOWER(SUBSTRING(NEW.first_name FROM 2))); -- CONCAT to make the first letter of name UPPERCASE and substring after that will be lowercase
    SET NEW.last_name = CONCAT(UPPER(LEFT(NEW.last_name, 1)), LOWER(SUBSTRING(NEW.last_name FROM 2))); 
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-19  3:58:46
