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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `services_id` int unsigned NOT NULL,
  `text` varchar(245) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reviews_users1_idx1` (`users_id`),
  KEY `fk_reviews_services1_idx1` (`services_id`),
  CONSTRAINT `fk_reviews_services1` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`),
  CONSTRAINT `fk_reviews_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,9,9,'Не раз была в этом салоне, всегда все на высшем уровне - и обслуживание, и цены, и качество оказываемых услуг! ','2020-12-20 13:21:31'),(2,9,4,'Ходила на массаж, к Давиду, замечательный специалист. Очень советую','2020-12-20 13:21:31'),(3,2,5,'Была на массаже у Давида. Только положительные эмоции. Классный специалист','2020-02-11 20:11:31'),(4,6,6,'Прекрасный салон, где всегда чисто, приятно. Регулярно хожу на массаж к Давиду, очень мягкие руки, никогда не было дискомфортно. ','2020-10-16 10:12:41'),(5,8,3,'Огромная благодарность массажисту Андрею! Мастер своего дела. Хожу к нему на общий массаж. Это восторг!','2020-09-17 14:45:55'),(6,1,1,'Уже третий раз колю у Анастасии Сергеевны ботокс и мне нравится результат.Попала к ней случайно и она мне очень понравилась-лишнего не навязывала','2020-10-12 13:00:31'),(7,5,2,'Всё очень здорово! Массаж супер!','2021-01-02 15:14:00'),(8,4,4,'Наталья потрясающий мастер. Чуткий, профессиональный, доброжелательный.','2020-12-27 08:27:01'),(9,2,2,'Наталья - отличный мастер. Очень сильно помогла мне с моей проблемой','2021-01-10 23:00:00');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 20:58:14
