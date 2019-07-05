-- MySQL dump 10.17  Distrib 10.3.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: kanji
-- ------------------------------------------------------
-- Server version	10.3.14-MariaDB

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
-- Table structure for table `Kanji`
--

DROP TABLE IF EXISTS `Kanji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kanji` (
  `name` text NOT NULL,
  `chara` text NOT NULL,
  `meaning` text NOT NULL,
  `kunyomi` text NOT NULL,
  `onyomi` text NOT NULL,
  `linkKanjiAlive` text NOT NULL,
  `day` int(11) NOT NULL,
  `dateNext` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radicalChar` text NOT NULL,
  `radicalName` text NOT NULL,
  `radicalHiragana` text NOT NULL,
  `radicalMeaning` text NOT NULL,
  `strokes` int(11) NOT NULL,
  `toTestKanji` tinyint(4) NOT NULL DEFAULT 0,
  `toTestMeaning` tinyint(4) NOT NULL DEFAULT 0,
  `testable` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanji`
--

LOCK TABLES `Kanji` WRITE;
/*!40000 ALTER TABLE `Kanji` DISABLE KEYS */;
INSERT INTO `Kanji` VALUES ('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',-1,'2019-07-01 08:02:42',349,'⼀','ichi','いち','one, horizontal stroke',1,1,1,1);
/*!40000 ALTER TABLE `Kanji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vocabulary`
--

DROP TABLE IF EXISTS `Vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vocabulary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chara` text NOT NULL,
  `meaning` text NOT NULL,
  `day` int(11) NOT NULL DEFAULT 1,
  `dateNext` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `toTestKanji` tinyint(4) NOT NULL DEFAULT 0,
  `toTestMeaning` tinyint(4) NOT NULL DEFAULT 0,
  `testable` tinyint(4) NOT NULL DEFAULT 1,
  `word` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vocabulary`
--

LOCK TABLES `Vocabulary` WRITE;
/*!40000 ALTER TABLE `Vocabulary` DISABLE KEYS */;
INSERT INTO `Vocabulary` VALUES (12,'ä¸€æ˜¨æ—¥','The day before yesterday',10,'2017-11-19 13:25:31',0,0,1,1),(13,'æ˜¨æ—¥','Yesterday',10,'2017-11-19 13:38:43',0,0,1,1),(14,'ä»Šæœ','This morning',10,'2017-11-19 13:25:37',0,0,1,1),(15,'ä»Šæ™©','This evening / Tonight',15,'2017-11-24 13:28:03',0,0,1,1),(16,'æ˜Žæ—¥','Tomorrow',15,'2017-11-24 13:28:12',0,0,1,1),(17,'æ˜Žå¾Œæ—¥','The day after tomorrow',10,'2017-11-19 13:38:31',0,0,1,1),(19,'ãŠæ—©ã†ã”ã–ã„ã¾ã™','Good morning',10,'2017-11-19 13:38:34',0,0,1,1),(20,'ä»Šæ—¥ã¯','Good afternoon',15,'2017-11-24 13:40:28',0,0,1,1),(21,'ä»Šæ™©ã¯','Good evening',15,'2017-11-24 13:40:34',0,0,1,1),(22,'å·¦æ§˜ãªã‚‰','Goodbye',10,'2017-11-19 13:25:02',0,0,1,1),(23,'å…ƒæ°—','Fine / Healthy',15,'2017-11-24 13:40:35',0,0,1,1),(24,'å­¦ç”Ÿã ã€‚','Is student.',7,'2017-05-30 12:09:12',0,0,1,0),(25,'å‹é”','Friends',15,'2017-11-24 13:40:39',0,0,1,1),(26,'å…ƒæ°—ã˜ã‚ƒãªã„ã€‚','Is not well.',7,'2017-05-30 12:09:15',0,0,1,0),(27,'å­¦ç”Ÿã ã£ãŸã€‚','Was student.',7,'2017-05-30 12:09:17',0,0,1,0),(28,'å‹é”ã˜ã‚ƒãªã‹ã£ãŸã€‚','Was not friend.',6,'2017-05-25 01:17:14',0,0,1,0),(29,'è©¦é¨“','exam',10,'2017-11-19 13:25:12',0,0,1,1),(30,'ä»Šæ—¥ã¯è©¦é¨“ã ã€‚','Today is exam.',7,'2017-05-30 12:09:28',0,0,1,0),(31,'ã§ã‚‚','but',15,'2017-11-24 13:40:27',0,0,1,1),(32,'ã†ã‚“ã€ãƒˆãƒ ã‚‚å­¦ç”Ÿã€‚','Yeah, and Tom is also a student.',6,'2017-05-25 01:16:09',0,0,1,0),(33,'ã†ã‚“ã€ã§ã‚‚ãƒˆãƒ ã¯å­¦ç”Ÿã˜ã‚ƒãªã„ã€‚','Yeah, but Tom is not a student.',6,'2017-05-25 01:16:14',0,0,1,0),(34,'èª°ãŒå­¦ç”Ÿï¼Ÿ','Who is the one that is student ?',6,'2017-05-25 01:16:21',0,0,1,0),(35,'è¦ªåˆ‡','Kind',10,'2017-11-19 13:26:04',0,0,1,1),(36,'é‡Žèœ','Vegetables',10,'2017-11-19 13:25:39',0,0,1,1),(37,'ãã‚Œã„','Pretty, clean',10,'2017-11-19 13:25:07',0,0,1,1),(38,'é™ã‹ãªäººã€‚','Quiet person.',6,'2017-05-25 01:16:41',0,0,1,0),(39,'å‹é”ã¯è¦ªåˆ‡ãªäººã ã€‚','Friend is kind person.',6,'2017-05-25 01:16:49',0,0,1,0),(40,'ãƒœãƒ–ã¯é­šãŒå¥½ãã˜ã‚ƒãªã‹ã£ãŸã€‚','Bob did not like fish.',6,'2017-05-25 01:16:56',0,0,1,0),(41,'ä»Šæ—¥','Today',10,'2017-11-19 13:24:46',0,0,1,1),(42,'é­šãŒå¥½ãã˜ã‚ƒãªã„äººã¯ã€è‚‰ãŒå¥½ãã ã€‚','Person who does not like fish like meat.',6,'2017-05-25 01:18:00',0,0,1,0),(43,'ãŠã„ã—ã„','tasty',10,'2017-11-19 13:26:08',0,0,1,1),(44,'ãƒ“ãƒ«','building',10,'2017-11-19 13:26:07',0,0,1,1),(45,'å€¤æ®µ','Price',10,'2017-11-30 20:38:16',1,1,1,1),(46,'ã‚ã¾ã‚Š / ã‚ã‚“ã¾ã‚Š','Not very',10,'2017-11-19 13:26:12',0,0,1,1),(47,'ãã®æ—¥','That day',10,'2017-11-19 13:40:12',0,0,1,1),(48,'äººé¡ž','Human race',10,'2017-11-19 13:40:13',0,0,1,1),(49,'é£Ÿã¹ç‰©','Food',10,'2017-11-19 13:40:15',0,0,1,1),(50,'é«˜ã„ãƒ“ãƒ«ã€‚','Tall building.',6,'2017-05-25 01:18:02',0,0,1,0),(51,'é«˜ããªã„ãƒ“ãƒ«ã€‚','Not tall building.',6,'2017-05-25 01:18:03',0,0,1,0),(52,'é«˜ã‹ã£ãŸãƒ“ãƒ«ã€‚','Building that was tall.',6,'2017-05-25 01:18:05',0,0,1,0),(53,'é«˜ããªã‹ã£ãŸãƒ“ãƒ«ã€‚','Building that was not tall.',5,'2017-05-24 01:16:02',0,0,1,0),(54,'ã‹ã£ã“ã„ã„','cool; handsome',10,'2017-11-19 13:40:17',0,0,1,1),(55,'ãŠå¸°ã‚Šãªã•ã„','Welcome back',10,'2017-11-19 13:40:21',0,0,1,1),(56,'ãŸã ã„ã¾','I am home',10,'2017-11-30 20:38:18',1,1,1,1),(57,'å±ãªã„','Dangerous, watch out!',10,'2017-11-19 13:40:19',0,0,1,1),(58,'æ€ã„å‡ºã™','to recall; to remember',10,'2017-11-19 13:40:23',0,0,1,1),(59,'åˆ†ã‹ã‚‹','to understand',10,'2017-11-30 20:38:22',1,1,1,1),(60,'å¯ã‚‹ã€€ï¼ˆã­ã‚‹ï¼‰','to sleep',7,'2017-11-27 20:35:02',1,1,1,1),(61,'æ•™ãˆã‚‹','to teach, to inform',7,'2017-11-27 20:35:04',1,1,1,1),(62,'ã„ã‚‹','to exist (animate)',10,'2017-11-30 20:38:23',1,1,1,1),(63,'ã‚ã‚‹','to exist (inanimate)',10,'2017-11-30 20:38:24',1,1,1,1),(64,'ã™ã‚‹','to do',10,'2017-11-30 20:38:25',1,1,1,1),(65,'æ”¯é…ã™ã‚‹','to rule, to control',7,'2017-11-27 20:36:13',1,1,1,1),(66,'èµ·ãã‚‹','to wake; to occur',7,'2017-11-27 20:35:29',1,1,1,1),(67,'è€ƒãˆã‚‹','to think',7,'2017-11-27 20:36:21',1,1,1,1),(68,'ç€ã‚‹','to wear',6,'2017-11-20 08:36:24',0,0,1,1),(69,'è©±ã™','to speak',10,'2017-11-30 20:38:26',1,1,1,1),(70,'èžã','to ask; to listen',7,'2017-11-27 20:35:33',1,1,1,1),(71,'æ³³ã','to swim',7,'2017-11-27 20:35:35',1,1,1,1),(72,'éŠã¶','to play',7,'2017-11-27 20:35:37',1,1,1,1),(73,'å¾…ã¤','to wait',7,'2017-11-27 20:35:39',1,1,1,1),(74,'é£²ã‚€','to drink',7,'2017-11-27 20:35:40',1,1,1,1),(75,'è²·ã†','to buy',10,'2017-11-30 20:38:27',1,1,1,1),(76,'æ­»ã­','to die',7,'2017-11-27 20:35:43',1,1,1,1),(77,'æ¥ã‚‹','to come',7,'2017-11-27 20:36:31',1,1,1,1),(78,'è¦ã‚‹','to need',7,'2017-11-27 20:34:43',1,1,1,1),(79,'å¸°ã‚‹','to go home',7,'2017-11-27 20:35:44',1,1,1,1),(80,'ã˜ã‚ƒã¹ã‚‹','to talk',7,'2017-11-27 20:35:47',1,1,1,1),(81,'çŸ¥ã‚‹','to know',7,'2017-11-27 20:35:50',1,1,1,1),(82,'å…¥ã‚‹','to enter',7,'2017-11-27 20:35:51',1,1,1,1),(83,'èµ°ã‚‹','to run',7,'2017-11-27 20:35:59',1,1,1,1),(84,'æ¸›ã‚‹','to decrease',7,'2017-11-27 20:36:03',1,1,1,1),(85,'å£²ã‚‹','to sell',7,'2017-11-27 20:34:39',1,1,1,1),(86,'æ›¸ã','to write',7,'2017-11-27 20:34:45',1,1,1,1),(87,'æ‚²ã—ã„','sad',7,'2017-11-27 20:35:00',1,1,1,1),(88,'ç„¦ã‚‹','to be in a hurry',6,'2017-11-20 08:38:30',0,0,1,1),(89,'é™ã‚‹','to limit',7,'2017-11-27 20:34:53',1,1,1,1),(90,'äº¤ã˜ã‚‹','to mingle',6,'2017-11-26 20:34:32',1,1,1,1),(91,'å‹‰å¼·ã¯ã€ã—ãŸã€‚','About study, did it.',3,'2017-05-22 01:17:44',0,0,1,0),(92,'å‹é”ãŒæ¥ãŸã€‚','Friend is the one that came.',3,'2017-05-22 01:17:49',0,0,1,0),(93,'ç§ã¯è²·ã‚ãªã‹ã£ãŸã€‚','As for me, did not buy.',3,'2017-05-22 01:17:54',0,0,1,0),(94,'ã¶ã‚‰ã¶ã‚‰','wandering; aimlessly',7,'2017-11-27 20:34:41',1,1,1,1),(95,'æ­©ã','to walk',6,'2017-11-26 20:36:38',1,1,1,1),(96,'é«˜é€Ÿ','high-speed',5,'2017-11-20 08:34:24',0,0,1,1),(97,'é“è·¯','road',4,'2017-11-19 05:40:16',0,0,1,1),(98,'è¡—ã‚’ã¶ã‚‰ã¶ã‚‰æ­©ãã€‚','Aimlessly walk through town.',3,'2017-05-22 01:17:58',0,0,1,0),(99,'é™ã‹','quiet',5,'2017-11-25 20:38:41',1,1,1,1),(106,'å€¤æ®µãŒé«˜ã„ãƒ¬ã‚¹ãƒˆãƒ©ãƒ³ã¯ã‚ã¾ã‚Šå¥½ãã˜ã‚ƒãªã„ã€‚','Don\'t like high price restaurants very much.',1,'2017-05-23 00:09:34',0,0,1,0),(108,'å®¿é¡Œ','homework',4,'2017-11-20 08:38:43',1,0,1,1),(109,'éƒ¨å±‹','room',5,'2017-11-25 20:38:45',1,1,1,1),(110,'ã„ã™','chair',5,'2017-11-24 17:40:17',1,1,1,1),(111,'ä¼šã†','to meet',5,'2017-11-25 20:38:55',1,1,1,1),(112,'åŒ»è€…','doctor',5,'2017-11-25 20:39:01',1,1,1,1),(113,'å›³æ›¸é¤¨','library',3,'2017-11-20 08:36:40',1,0,1,1),(114,'ãªã‚‹','to become',5,'2017-11-25 20:39:03',1,1,1,1),(115,'å‹ã¡','victory',5,'2017-11-25 20:39:13',1,1,1,1),(116,'å‘ã‹ã†','to go towards',4,'2017-11-24 20:37:32',1,1,1,1),(118,'ã©ã†','how',4,'2017-11-24 20:37:33',1,1,1,1),(119,'ç¿’ã†','to learn',4,'2017-11-24 20:37:35',1,1,1,1),(120,'å¤§äºº','adult',4,'2017-11-24 20:37:41',1,1,1,1),(121,'èµ¤ã„ã‚ºãƒœãƒ³ã‚’è²·ã†å‹é”ã¯ãƒœãƒ–ã ã€‚','Friend who buy red pants is Bob.',1,'2017-05-24 11:22:01',0,0,1,0),(122,'æ™©ã”é£¯ã‚’é£Ÿã¹ã¾ã›ã‚“ã§ã—ãŸã­ã€‚','Didn\'t eat dinner, huh?',1,'2017-05-24 21:44:43',0,0,1,0),(123,'å…ˆé€±ã€ãƒœãƒ–ã«ä¼šã„ã¾ã—ãŸã‚ˆã€‚','You know, met Bob last week.',1,'2017-05-24 21:46:19',0,0,1,0),(124,'ææ€–','terror',4,'2017-11-24 20:37:43',1,1,1,1),(125,'å±ˆè¾±','disgrace, humiliation',2,'2017-11-20 08:34:37',1,0,1,1),(126,'ã“ã“','here',4,'2017-11-24 20:36:42',1,1,1,1),(127,'ãã‚“ãªã«','so much; so; like that',4,'2017-11-24 20:37:52',1,1,1,1),(128,'ã©ã†ã—ã¦','why?, for what reason?',4,'2017-11-24 20:36:43',1,1,1,1),(129,'ãŠã‚‚ã—ã‚ã„','interesting',4,'2017-11-24 20:36:47',1,1,1,1),(130,'ã©ã†ãžã‚ˆã‚ã—ã','Pleased to meet you',4,'2017-11-24 20:36:50',1,1,1,1),(131,'ã“ã¡ã‚‰ã“ã','Likewise, it\'s me',4,'2017-11-24 20:36:53',1,1,1,1),(132,'ã©ã¡ã‚‰','which',4,'2017-11-24 20:36:55',1,1,1,1),(133,'ã‹ã‚‰','from',4,'2017-11-24 20:36:57',1,1,1,1),(134,'ã©ã“','where',4,'2017-11-24 20:36:58',1,1,1,1),(135,'å¤§å­¦','university',4,'2017-11-24 20:37:00',1,1,1,1),(136,'ã¡ãŒã„ã¾ã™','wrong',4,'2017-11-24 20:37:03',1,1,1,1),(137,'ä¼šç¤¾','company',4,'2017-11-24 20:37:12',1,1,1,1),(138,'å°‚é–€ï¼ˆã›ã‚“ã‚‚ã‚“ï¼‰','subject of study',4,'2017-11-24 20:37:15',1,1,1,1),(139,'æ­´å²ï¼ˆã‚Œãã—ï¼‰','history',4,'2017-11-24 20:37:49',1,1,1,1),(140,'ç¾Žè¡“ï¼ˆã³ã˜ã‚…ã¤ï¼‰','art',4,'2017-11-24 20:37:19',1,1,1,1),(141,'æ”¿æ²»ï¼ˆã›ã„ã˜ï¼‰','politics',4,'2017-11-24 20:37:22',1,1,1,1),(144,'æ•°å­¦','mathematics',4,'2017-11-24 20:37:25',1,1,1,1),(145,'çµŒæ¸ˆï¼ˆã‘ã„ã–ã„ï¼‰','economy',3,'2017-11-23 20:34:35',1,1,1,1),(146,'ä¼èª¬','legend',4,'2017-11-24 20:38:12',1,1,1,1),(147,'å†’é™º','adventure',4,'2017-11-24 20:38:14',1,1,1,1);
/*!40000 ALTER TABLE `Vocabulary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-05 23:48:16
