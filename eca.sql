-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: eca
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('Arizona','Phoenix'),('Califonia','Los Angeles'),('Califonia','San Diego'),('Califonia','San Francisco'),('Colorado','Denver'),('Florida','Fort Lauderdale'),('Florida','Miami'),('Florida','Orlando'),('Florida','St Petersburg'),('Florida','Tampa'),('Georgia','Atlanta'),('Illinois','Chicago'),('Kansas','Leawood'),('Louisiana','New Orleans'),('Maryland','Baltimore'),('Massachusetts','Boston'),('Minnesota','Minneapolis'),('Missouri','Kansas City'),('Missouri','St Louis'),('Nevada','Las Vegas'),('New Jersey','Newark'),('New York','New York City'),('North Carolina','Charlotte'),('Oregon','Portland'),('Pennsylvania','Philadelphia'),('South Carolina','Charleston'),('Tennessee','Nashville'),('Texas','Austin'),('Texas','Dallas'),('Texas','Houston'),('Washington','Seattle');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(255) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `enrollment_location` varchar(255) DEFAULT NULL,
  `enrollment_date` varchar(255) DEFAULT NULL,
  `guardian_first_name` varchar(255) DEFAULT NULL,
  `guardian_last_name` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `guardian_phone` varchar(255) DEFAULT NULL,
  `student_first_name` varchar(255) DEFAULT NULL,
  `student_last_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `fulfillment_status` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('6434ff8eaf0ce938d4a86e36',11,'2023-04-11','Kansas City','06/26/23 - 06/30/23','Dylan','Delancey','alphanumeric@gmail.com','913-333-2543','Alph','Ed','1295.00','PENDING',17),('6434fdd09222e77527782e28',10,'2023-04-11','Kansas City','06/19/23 - 06/23/23','Dylan','Delancey','dylanwdelancey@gmail.com','913-333-2543','Betty','Boo','1295.00','PENDING',16),('6434fa8f75970a2f668899e9',9,'2023-04-11','Kansas City','08/07/23 - 08/11/23','Dylan','Delancey','dylanwdelancey@gmail.com','913-333-2543','Pene','Wether','1295.00','PENDING',15),('6434f0551d7f8d2d3bbf6837',8,'2023-04-11','Kansas City','06/26/23 - 06/30/23','Dylan','Delancey','dylanwdelancey@gmail.com','913-333-2543','Jason','Will','1295.00','PENDING',19),('6434a26f7077d826f2775125',7,'2023-04-11','New York, NY','06/05/23 - 06/09/23','Dylan','Delancey','alphanumeric@gmail.com','913-333-2543','Billy','Bob','1295.00','PENDING',16),('64309bd568028315577997d0',6,'2023-04-07','Kansas City','07/10/23 - 07/14/23','Dylan','Delancey','dylanwdelancey@gmail.com','913-333-2543','Al','Johnson','1295.00','FULFILLED',19),('64309be88ebc396b1b05f617',6,'2023-04-07','Kansas City','07/10/23 - 07/14/23','Dylan','Delancey','dylanwdelancey@gmail.com','913-333-2543','Ben','Wilson','1295.00','FULFILLED',19),('64308a77a25059602018908a',5,'2023-04-07','Denver, CO','08/07/23 - 08/11/23','Dylan','Delancey','alphanumeric@gmail.com','913-333-2543','Jason','Wilson','1295.00','FULFILLED',19),('64308b85d6ac9c5212f79c47',5,'2023-04-07','Denver, CO','08/07/23 - 08/11/23','Dylan','Delancey','alphanumeric@gmail.com','913-333-2543','Will','Wilson','1295.00','FULFILLED',19),('643011482e224e44337df366',4,'2023-04-07','Boston, MA','06/05/23 - 06/09/23','Dylan','Delancey','alphanumeric@gmail.com','913-333-2543','John','Smith','1295.00','FULFILLED',19),('64301671e76bf95e594aec92',3,'2023-04-07','Kansas City','07/10/23 - 07/14/23','jhon','wick','hafed.upwork@gmail.com','555555555','jhon','wick','1295.00','PENDING',19),('642df6bdf1268b0dc11bdf1a',2,'2023-04-05','Los Angeles, CA','06/12/23 - 06/16/23','tester','tester','test91171@gmail.com','8574623100','dbugg','teste','1295.00','PENDING',19),('642db14fc8d70f68a992ca8e',1,'2023-04-05','Phoenix, AZ','05/29/23 - 06/02/23','test','admin','test709090@gmail.com','9857462310','dbug','test','1295.00','PENDING',19);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passwords` (
  `password` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` VALUES ('U2FsdGVkX1+FUkG4em1q+wXIT4pb+xjMzg+WTBSun1U=','San Francisco',NULL),('U2FsdGVkX18XrFkgG3vjvxqsNmesnQjZ+RLj60SwCmM=','Phoenix',NULL),('U2FsdGVkX19olncY/f8AdastkCd0cs/CRGxa14d4MOk=','Los Angeles',NULL),('U2FsdGVkX18JPwpOjCdWcWNLkUSArqJPyKY9bmX44CU=','San Diego',NULL),('U2FsdGVkX1/v7Uj8ZGZ0illA49kjlYALu8WrMlo3N6k=','Denver',NULL),('U2FsdGVkX1/DD8h60QmSdAcYd3i6vlW4/zQt+2sDSJw=','Fort Lauderdale',NULL),('U2FsdGVkX1/cJD2FWnTsTOyFMiVCx0mlx1qbMfxQlqs=','Miami',NULL),('U2FsdGVkX18VLEYNiGKJlHOunB///phdIGmzVnpCDOo=','Orlando',NULL),('U2FsdGVkX1952BLJ1bLDuNKkqATALLJgslcz/ly0XdU=','St Petersburg',NULL),('U2FsdGVkX1/J/8XWFp2G79KROHz3MDabFLGHibN8HSI=','Tampa',NULL),('U2FsdGVkX19jk5kduWEm3a2kk3lRm6F8uN2VZuWEwNo=','Atlanta',NULL),('U2FsdGVkX1+R6UESM59Bq7I6I7S3U0yUXCCHLipxGGg=','Chicago',NULL),('U2FsdGVkX18TUo9purc5gR5UHnsrqGj99pCjxrgZplk=','Leawood',NULL),('U2FsdGVkX1+esdS8e8su0hVEQcS+7JOwxnatK6IICI0=','New Orleans',NULL),('U2FsdGVkX189NGQlii3V+Ak5qoqoU7LXoEygT4p/5vo=','Baltimore',NULL),('U2FsdGVkX19juXU7Y2QmFN0vHUQeNkGtsIiyQ4MqVkI=','Boston',NULL),('U2FsdGVkX19ZH19E8Vt1n07RinAGjiEA/CHZIhpg840=','Minneapolis',NULL),('U2FsdGVkX1/HhqMd29x6CjkDM5/hb9WsGoZHdb38Vlk=','Seattle',NULL),('U2FsdGVkX18fwI3FynqnAD2EF0A26/X0AeH1jDE3Vmw=','Houston',NULL),('U2FsdGVkX19aSESFUhm4xdTzY6viZUuww0IXatHVFck=','Dallas',NULL),('U2FsdGVkX1/0RvkWaOM96tfuMG1zeGXTyJo4PVATWus=','Austin',NULL),('U2FsdGVkX1/tBT0OB9Vv8hMarzAlqCQwxw5vI8Ti55Q=','Nashville',NULL),('U2FsdGVkX1848xnRB6fUVnBGGAGoA8NiityvLDiXRD8=','Philadelphia',NULL),('U2FsdGVkX1/hATjMX5jzk6Ko0U1YdFhvIpvcpTlQ0es=','Portland',NULL),('U2FsdGVkX1/9nbLONY6ftwAcxQpU0pSinR+WTFEOLbk=','Charlotte',NULL),('U2FsdGVkX1+r7RZEP4Jlk91bdtBPxGqZJqOLqqmhYx4=','New York City',NULL),('U2FsdGVkX1/Dt+Zpr7R6k1Ze4KfHlUATWxYXmYlpEM0=','Newark',NULL),('U2FsdGVkX1+y676FPSihBSEBOPGpI0auhefSVUM7u1Q=','Las Vegas',NULL),('U2FsdGVkX19fToNwqIJCSWLHvANizVcgwkyr7CJ+U2o=','St Louis',NULL),('U2FsdGVkX19+0ugcXRIlGevLQohY07IsyG0ZIU9BLws=','Kansas City',NULL),('U2FsdGVkX1+FYLBdjThLNIibE0RhIfOwmUhUVxeBE08=','login','dylan');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 16:21:29
