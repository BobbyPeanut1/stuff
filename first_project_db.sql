-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: first_project_db
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `countryId` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(100) NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina Faso'),(28,'Burundi'),(29,'Cabo Verde'),(30,'Cambodia'),(31,'Cameroon'),(32,'Canada'),(33,'Central African Republic'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo (Congo-Brazzaville)'),(40,'Costa Rica'),(41,'Croatia'),(42,'Cuba'),(43,'Cyprus'),(44,'Czechia (Czech Republic)'),(45,'Democratic Republic of the Congo'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'Ecuador'),(51,'Egypt'),(52,'El Salvador'),(53,'Equatorial Guinea'),(54,'Eritrea'),(55,'Estonia'),(56,'Eswatini (fmr. \"Swaziland\")'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Holy See'),(74,'Honduras'),(75,'Hungary'),(76,'Iceland'),(77,'India'),(78,'Indonesia'),(79,'Iran'),(80,'Iraq'),(81,'Ireland'),(82,'Israel'),(83,'Italy'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Kuwait'),(91,'Kyrgyzstan'),(92,'Laos'),(93,'Latvia'),(94,'Lebanon'),(95,'Lesotho'),(96,'Liberia'),(97,'Libya'),(98,'Liechtenstein'),(99,'Lithuania'),(100,'Luxembourg'),(101,'Madagascar'),(102,'Malawi'),(103,'Malaysia'),(104,'Maldives'),(105,'Mali'),(106,'Malta'),(107,'Marshall Islands'),(108,'Mauritania'),(109,'Mauritius'),(110,'Mexico'),(111,'Micronesia'),(112,'Moldova'),(113,'Monaco'),(114,'Mongolia'),(115,'Montenegro'),(116,'Morocco'),(117,'Mozambique'),(118,'Myanmar (formerly Burma)'),(119,'Namibia'),(120,'Nauru'),(121,'Nepal'),(122,'Netherlands'),(123,'New Zealand'),(124,'Nicaragua'),(125,'Niger'),(126,'Nigeria'),(127,'North Korea'),(128,'North Macedonia (formerly Macedonia)'),(129,'Norway'),(130,'Oman'),(131,'Pakistan'),(132,'Palau'),(133,'Panama'),(134,'Papua New Guinea'),(135,'Paraguay'),(136,'Peru'),(137,'Philippines'),(138,'Poland'),(139,'Portugal'),(140,'Qatar'),(141,'Romania'),(142,'Russia'),(143,'Rwanda'),(144,'Saint Kitts and Nevis'),(145,'Saint Lucia'),(146,'Saint Vincent and the Grenadines'),(147,'Samoa'),(148,'San Marino'),(149,'Sao Tome and Principe'),(150,'Saudi Arabia'),(151,'Senegal'),(152,'Serbia'),(153,'Seychelles'),(154,'Sierra Leone'),(155,'Singapore'),(156,'Slovakia'),(157,'Slovenia'),(158,'Solomon Islands'),(159,'Somalia'),(160,'South Africa'),(161,'South Korea'),(162,'South Sudan'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Sweden'),(168,'Switzerland'),(169,'Syria'),(170,'Tajikistan'),(171,'Tanzania'),(172,'Thailand'),(173,'Timor-Leste'),(174,'Togo'),(175,'Tonga'),(176,'Trinidad and Tobago'),(177,'Tunisia'),(178,'Turkey'),(179,'Turkmenistan'),(180,'Tuvalu'),(181,'Uganda'),(182,'Ukraine'),(183,'United Arab Emirates'),(184,'United Kingdom'),(185,'United States of America'),(186,'Uruguay'),(187,'Uzbekistan'),(188,'Vanuatu'),(189,'Venezuela'),(190,'Vietnam'),(191,'Yemen'),(192,'Zambia'),(193,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `userId` int DEFAULT NULL,
  `vacationId` int DEFAULT NULL,
  KEY `userId_idx` (`userId`),
  KEY `vacationId_idx` (`vacationId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacationId` FOREIGN KEY (`vacationId`) REFERENCES `vacations` (`vacationId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(45) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `roleId_idx` (`roleId`),
  CONSTRAINT `roleId` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'David','Johnson','d_johnson@gmail.com','dg123',1),(2,'Mark','Milman','mark_milman12@gmail.com','1234567',2),(3,'Bob','Salivan','bobo_sal@gmail.com','789789',2),(4,'Miriam','Kohman','miriam_koh@gmail.com','234234',2),(5,'Yoram','Amihay','y_amihay41@yahoo.com','',2),(6,'Natalie','Poterman','poter_natalie_55@outlook.com','123123',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `vacationId` int NOT NULL AUTO_INCREMENT,
  `countryId` int NOT NULL,
  `vacationDescription` varchar(800) NOT NULL,
  `vacationStartDate` datetime NOT NULL,
  `vacationEndDate` datetime NOT NULL,
  `vacationPrice` int NOT NULL,
  `photoFileName` varchar(255) NOT NULL,
  PRIMARY KEY (`vacationId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (1,77,'Explore the otherworldly landscapes of Iceland, including waterfalls, glaciers, and volcanic terrain.','2026-02-15 00:00:00','2026-02-22 00:00:00',2300,'iceland_adventure.jpg'),(2,78,'Relax and unwind on a luxury cruise through the crystal-clear waters of the Caribbean, visiting multiple islands along the way.','2026-04-10 00:00:00','2026-04-17 00:00:00',2800,'caribbean_cruise.jpg'),(3,167,'Embark on an unforgettable safari adventure in the Serengeti National Park, home to diverse wildlife including lions, elephants, and giraffes.','2026-06-05 00:00:00','2026-06-12 00:00:00',2600,'tanzania_safari.jpg'),(4,66,'Discover the rich history of Greece with visits to ancient ruins such as the Acropolis in Athens and the ancient city of Delphi.','2026-08-20 00:00:00','2026-08-27 00:00:00',1800,'greece_history.jpg'),(5,32,'Hit the slopes in world-renowned ski resorts such as Whistler Blackcomb in British Columbia or Banff in Alberta.','2026-10-10 00:00:00','2026-10-17 00:00:00',2700,'canada_skiing.jpg'),(6,116,'Experience the magic of the Sahara Desert with camel rides, overnight camping, and visits to traditional Berber villages.','2027-01-15 00:00:00','2027-01-22 00:00:00',2000,'morocco_desert.jpg'),(7,41,'Wander through the charming streets of Prague, visiting historic landmarks such as Prague Castle and Charles Bridge.','2027-03-01 00:00:00','2027-03-07 00:00:00',1500,'prague_city.jpg'),(8,104,'Relax in luxury overwater bungalows, surrounded by crystal-clear turquoise waters and pristine white sandy beaches.','2027-04-10 00:00:00','2027-04-17 00:00:00',3500,'maldives_beach.jpg'),(9,40,'Explore the ancient ruins of Machu Picchu, hike the Inca Trail, and discover the vibrant culture of Peru.','2027-06-05 00:00:00','2027-06-12 00:00:00',2400,'peru_culture.jpg'),(10,123,'Embark on an epic road trip across New Zealand, exploring stunning landscapes, fjords, and Maori culture.','2027-08-20 00:00:00','2027-08-27 00:00:00',2800,'new_zealand_road_trip.jpg'),(11,78,'Rejuvenate your mind, body, and soul with yoga, meditation, and spa treatments in the tranquil surroundings of Bali.','2027-10-10 00:00:00','2027-10-17 00:00:00',3200,'bali_wellness.jpg'),(12,129,'Sail through breathtaking fjords, admire cascading waterfalls, and witness the stunning natural beauty of Norway.','2028-01-15 00:00:00','2028-01-22 00:00:00',2700,'norway_fjords.jpg'),(13,84,'Indulge in wine tasting tours through the picturesque vineyards of Tuscany and Piedmont, sampling world-class wines and cuisine.','2028-03-01 00:00:00','2028-03-07 00:00:00',1900,'italy_wine.jpg'),(14,168,'Experience the ultimate luxury in the Swiss Alps with exclusive chalets, gourmet dining, and world-class skiing.','2028-06-05 00:00:00','2028-06-12 00:00:00',4000,'swiss_alps_retreat.jpg'),(15,88,'Embark on a thrilling safari adventure in Kenya\'s national parks, home to the Big Five and spectacular landscapes.','2028-08-20 00:00:00','2028-08-27 00:00:00',3200,'kenya_safari.jpg'),(16,66,'Explore the Greek islands, hopping from Santorini to Mykonos, and discover the stunning beaches and vibrant nightlife.','2028-10-10 00:00:00','2028-10-17 00:00:00',2800,'greece_islands.jpg'),(17,85,'Immerse yourself in Japanese culture with visits to Kyoto\'s temples, Tokyo\'s bustling streets, and traditional tea ceremonies.','2029-01-15 00:00:00','2029-01-22 00:00:00',2500,'japan_culture.jpg'),(18,41,'Sail the Adriatic Sea aboard a private yacht, exploring Croatia\'s coastal towns, secluded coves, and historic sites.','2029-03-01 00:00:00','2029-07-31 00:00:00',3500,'croatia_yachting.jpg'),(19,40,'Trek through lush rainforests, zip-line across canopy tops, and relax on pristine beaches in this eco-adventure paradise.','2029-04-10 00:00:00','2029-04-17 00:00:00',3000,'costa_rica_jungle.jpg'),(20,51,'Explore ancient wonders such as the Pyramids of Giza, the Sphinx, and the temples of Luxor along the Nile River.','2029-06-05 00:00:00','2029-06-12 00:00:00',2800,'egypt_historic.jpg'),(21,185,'Indulge in wine tasting tours through the vineyards of Napa Valley, sampling world-renowned wines and gourmet cuisine.','2029-08-20 00:00:00','2029-08-27 00:00:00',2000,'napa_valley_wine.jpg'),(22,121,'Trek to the base camp of Mount Everest, experience the breathtaking Himalayan landscapes, and immerse yourself in Nepalese culture.','2029-10-10 00:00:00','2029-10-17 00:00:00',3000,'nepal_trek.jpg'),(23,185,'Cruise through the stunning fjords and glaciers of Alaska, spotting wildlife such as whales, bears, and bald eagles.','2030-01-15 00:00:00','2030-01-22 00:00:00',3500,'alaska_cruise.jpg'),(24,84,'Explore the ancient landmarks of Rome, including the Colosseum, Roman Forum, and Vatican City.','2030-03-01 00:00:00','2030-03-07 00:00:00',2200,'rome_historic.jpg'),(25,8,'Sail among the stunning Whitsunday Islands, snorkel the Great Barrier Reef, and relax on pristine white sandy beaches.','2030-04-10 00:00:00','2030-04-17 00:00:00',3200,'whitsunday_sailing.jpg');
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-14 16:30:41
