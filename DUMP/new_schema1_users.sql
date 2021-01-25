-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema1
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) NOT NULL,
  `lastname` varchar(145) NOT NULL,
  `gender` enum('M','W') NOT NULL,
  `birthday_at` date NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(245) NOT NULL,
  `number_visits` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ира','Мазина','W','1980-01-21',79165551166,'1@mail.ru',10),(2,'Алена','Иванова','W','1993-10-13',79165551177,'2@mail.ru',2),(3,'Маша','Кортяшкина','W','1977-01-01',79165551188,'3@mail.ru',1),(4,'Катя','Коровина','W','1988-09-29',79165551199,'4@mail.ru',20),(5,'Даша','Пастухова','W','1989-02-09',79165551111,'5@mail.ru',17),(6,'Максим','Петренко','M','1991-05-07',79165551122,'6@mail.ru',9),(7,'Таня','Максимова','W','1980-12-21',79165551133,'7@mail.ru',8),(8,'Василиса','Цой','W','1980-09-10',79165551144,'8@mail.ru',1),(9,'Даниил','Владычин','M','1979-05-11',79165552266,'9@mail.ru',12),(10,'Ира','Зашибина','W','1995-11-05',79165553366,'10@mail.ru',10),(11,'Павел','Иванов','M','1990-10-21',79165554466,'11@mail.ru',11);
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

-- Dump completed on 2021-01-25 20:58:13
