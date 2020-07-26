-- MySQL dump 10.13  Distrib 5.7.27, for osx10.14 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	5.7.27

 

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
 
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);
--
-- Dumping data for table `tasks`
--

 

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
 
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Praveen','$2b$10$QbslOzYjWk4oSW3DWajZzuosVr2Jz3xDUcNdd.XesCm.x0HNeYWVi','mistry@gmail.com','2019-11-14 18:50:06'),(2,'Kartik','$2b$10$nE.ENc.cLSYsMBB5l0tAMuOXx3HRMIww3JVosH2BdxsuCy5WKhFQ2','kartik@gmail.com','2019-11-15 19:20:14');
 
