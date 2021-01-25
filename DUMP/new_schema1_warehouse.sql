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
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `warehouse_type_id` int unsigned NOT NULL,
  `volume` bigint DEFAULT NULL,
  `terade_price` bigint NOT NULL,
  `price` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_warehouse_warehouse_type1_idx` (`warehouse_type_id`),
  CONSTRAINT `fk_warehouse_warehouse_type1` FOREIGN KEY (`warehouse_type_id`) REFERENCES `warehouse_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Прозрачный',1,40,200,75,10),(2,'Матовый',1,40,250,75,9),(3,'Глянец',1,40,200,75,11),(4,'Красный',2,35,150,90,5),(5,'Зеленый',2,35,150,90,8),(6,'Синий',2,35,170,90,10),(7,'Черный',2,35,250,90,4),(8,'Щипчики',3,NULL,700,300,2),(9,'Ножницы',3,NULL,900,450,4),(10,'Пилки',3,NULL,50,5,100),(11,'Щетки',3,NULL,500,100,84),(12,'Лампа',4,NULL,2500,700,2),(13,'Дезинфектор',4,NULL,25000,15000,2),(14,'Фреза',4,NULL,7500,3000,3);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 20:58:15
