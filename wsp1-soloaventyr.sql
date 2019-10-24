-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Rädda Hans'),(2,2,3,'Fortsätt'),(3,3,4,'Fråga konstiga människor som står vid matstånd.'),(4,3,5,'Fortsätt att leta efter häxans hus, hungriga och trötta.'),(5,5,6,'Ät bären'),(6,5,7,'Fortsätt att vara hungriga'),(7,6,8,'Fortsätt'),(10,8,9,'Attackera genom att smyga in och attacker bakifrån'),(11,8,10,'Attackera häxan genom att bara springa in och slåss.'),(12,4,11,'Fortsätt'),(13,1,12,'Rädda föräldrarna'),(14,12,13,' Försök att dra ned häxan från sin kvast. '),(15,12,14,'Spring efter häxan och kasta stenar på hon'),(16,14,15,'Bo kvar i huset'),(17,14,16,'Flytta till en stor stad och spendera alla pengar ni har.'),(18,7,1,'Slut'),(19,9,1,'Slut'),(20,11,1,'Slut'),(21,10,1,'Slut'),(22,13,1,'Slut'),(23,15,1,'Slut'),(24,16,1,'Slut');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Du har det tuffa valet att antigen rädda din lillebror Hans eller dina föräldrar.'),(2,'Häxan flyger iväg med föräldrarna, gå på ett äventyr för att rädda föräldrarna.'),(3,'Du och Hans springer efter häxan och kommer fram till en mystisk stad.'),(4,'Ni får svar vars hon bor och mat utav matstånden.'),(5,'Ni kommer tillslut fram till en skog med massa olika bär att äta.'),(6,'Du och Hans äter bären och känner sig starka nog att besegra häxan.'),(7,'Du och Hans blev så hungriga att ni svälte ihjäl, skulle ha ätit dom där bären ;).'),(8,'Efter en lång natt av letande hittade ni häxans hus där ni såg era föräldrar städa häxans kök.'),(9,'Häxan hade kameror i sitt hus och såg er smyga in, ni blir tagna och blir slavar.'),(10,'Ni lyckas med att attackera häxan och putta in hon i sin stora ugn och grilla hon.\n'),(11,'Du och Hans väljer att äta maten som slutar i att ni blir förgiftade och sedan märker ni att hon som gav er maten var häxan, Du och Hans blir kidnappade och blir slavar till häxan tillsammans med era föräldrar.'),(12,'Häxan flyger iväg med Hans.'),(13,'Häxan dödar er med sin magi.'),(14,'Ni kastar tillräckligt med sten för att häxan ska störta, ni tar Hans och springer men häxan kommer tillbaks.'),(15,'Häxan kommer tillbaka och äter upp er.'),(16,'Ni rymmer från häxan men lever fattigt resten av livet.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24  8:44:37
