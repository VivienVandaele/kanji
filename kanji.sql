-- MariaDB dump 10.17  Distrib 10.4.7-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: kanji
-- ------------------------------------------------------
-- Server version	10.4.7-MariaDB

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
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanji`
--

LOCK TABLES `Kanji` WRITE;
/*!40000 ALTER TABLE `Kanji` DISABLE KEYS */;
INSERT INTO `Kanji` VALUES ('mouth kuchi kou, ku','口','mouth','くち','コウ、ク','https://app.kanjialive.com/口',-1,'2019-10-17 02:15:18',454,'⼝','kuchi','くち','mouth',3,1,1,1),('thousand chi sen','千','thousand','ち','セン','https://app.kanjialive.com/千',-1,'2019-10-17 02:15:13',453,'⼗','juu','じゅう','ten',3,1,1,1),('three mi, mikka, mittsu san','三','three','み','サン','https://app.kanjialive.com/三',-1,'2019-10-17 02:15:09',452,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('down shita, shimo, sa, sagaru, sageru, kuda, kudaru, kudasai, o, orosu, oriru ka, ge','下','down','した、しも、さ、くだ、お','カ、ゲ','https://app.kanjialive.com/下',-1,'2019-10-17 02:15:05',451,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('up ue, uwa, kami, a, ageru, agaru, nobo, noboru jou, shou','上','up','うえ、うわ、かみ、あ、のぼ','ジョウ、ショウ','https://app.kanjialive.com/上',-1,'2019-10-17 02:14:56',450,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('ten too, to juu','十','ten','とお、と','ジュウ','https://app.kanjialive.com/十',-1,'2019-10-17 02:14:52',449,'⼗','juu','じゅう','ten',2,1,1,1),('power, force chikara ryoku, riki','力','power, force','ちから','リョク、リキ','https://app.kanjialive.com/力',-1,'2019-10-17 02:14:49',448,'⼒','chikara','ちから','power',2,1,1,1),('eight ya, you, yattsu hachi','八','eight','や、よう','ハチ','https://app.kanjialive.com/八',-1,'2019-10-17 02:14:30',447,'⼋','hachi','はち','eight',2,1,1,1),('enter, put in i, hai, iri, iru, hairu, ireru, ire nyuu','入','enter, put in','い、はい','ニュウ','https://app.kanjialive.com/入',-1,'2019-10-17 02:14:24',446,'⼊','iru','いる','to enter',2,1,1,1),('human being, person hito jin, nin','人','human being, person','ひと','ジン、ニン','https://app.kanjialive.com/人',-1,'2019-10-17 02:14:18',445,'⼈','hito','ひと','person',2,1,1,1),('two futa, futatsu, futari ni','二','two','ふた','ニ','https://app.kanjialive.com/二',-1,'2019-10-17 02:14:14',444,'⼆','ni','に','two',2,1,1,1),('seven nana, nano, nanatsu shichi','七','seven','なな、なの','シチ','https://app.kanjialive.com/七',-1,'2019-10-17 02:14:04',442,'⼀','ichi','いち','one, horizontal stroke',2,1,1,1),('nine kokono, kokonotsu kyuu, ku','九','nine','ここの','キュウ、ク','https://app.kanjialive.com/九',-1,'2019-10-17 02:14:09',443,'⼄','otsu','おつ','the second ',2,1,1,1),('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',-1,'2019-10-17 02:14:00',441,'⼀','ichi','いち','one, horizontal stroke',1,1,1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vocabulary`
--

LOCK TABLES `Vocabulary` WRITE;
/*!40000 ALTER TABLE `Vocabulary` DISABLE KEYS */;
INSERT INTO `Vocabulary` VALUES (157,'工場（こうじょう）','factory',6,'2019-10-13 10:33:53',0,1,1,1),(156,'市長（しちょう）','mayor',6,'2019-10-13 10:28:56',0,1,1,1),(155,'市役所（しやくしょ）','city hall, town hall',6,'2019-10-13 10:34:11',0,1,1,1),(154,'コップ','cup, glass',6,'2019-10-13 10:30:24',0,1,1,1),(180,'おなかがすきました','I\'m hungry',6,'2019-10-19 09:53:34',1,1,1,1),(153,'お皿（おさら）','plate, dish',6,'2019-10-13 10:30:18',0,1,1,1),(165,'作り方（つくりかた）','how to make',6,'2019-10-19 09:52:53',1,1,1,1),(164,'~方（～かた）','way to ~, method of ~',6,'2019-10-13 10:29:54',0,1,1,1),(163,'見学（けんがく）','study tour',6,'2019-10-13 10:30:21',0,1,1,1),(166,'相撲（すもう）','sumo',6,'2019-10-19 09:53:36',1,1,1,1),(167,'大学院（だいがくいん）','graduate school',6,'2019-10-19 09:56:54',1,1,1,1),(168,'工学（こうがく）','engineering',6,'2019-10-13 10:28:24',0,1,1,1),(169,'将来（しょうらい）','future',6,'2019-10-13 10:33:28',0,1,1,1),(170,'返します（かえします）','to return',6,'2019-10-13 10:28:07',0,1,1,1),(171,'迎えます（むかえます）','welcome, meet',6,'2019-10-13 10:34:15',0,1,1,1),(172,'持ちます（もちます）','hold, carry, possess',6,'2019-10-19 09:53:45',1,1,1,1),(173,'手伝います（てつだいます）','help, assist',6,'2019-10-13 10:28:50',0,1,1,1),(174,'洗います（あらいます）','wash',6,'2019-10-13 10:33:47',0,1,1,1),(175,'使います（つかいます）','use',6,'2019-10-13 10:34:01',0,1,1,1),(176,'欲しい（ほしい）','to want',6,'2019-10-13 10:28:36',0,1,1,1),(177,'痛い（いたい）','painful',6,'2019-10-13 10:34:37',0,1,1,1),(178,'ただいま','I\'m home',6,'2019-10-13 10:33:34',0,1,1,1),(179,'布団（ふとん）','futon',6,'2019-10-13 10:34:34',0,1,1,1),(181,'のどが渇きました（のどがかわきました）','I\'m thirsty',6,'2019-10-19 09:56:38',1,1,1,1),(182,'疲れました（つかれました）','I\'m tired',6,'2019-10-19 09:57:50',1,1,1,1),(183,'彼 (かれ)','boyfriend',6,'2019-10-19 09:53:37',1,1,1,1),(184,'彼女（かのじょ）','girlfriend, she',6,'2019-10-19 09:56:42',1,1,1,1),(185,'料金（りょうきん）','rate, charge',6,'2019-10-13 10:28:34',0,1,1,1),(186,'生け花（いけばな）','flower arrangement',6,'2019-10-13 10:28:45',0,1,1,1),(187,'目覚まし時計（めざましどけい）','alarm clock',6,'2019-10-19 09:58:02',1,1,1,1),(188,'歯（は）','tooth',6,'2019-10-13 10:33:56',0,1,1,1),(189,'曲（きょく）','piece of music',6,'2019-10-13 10:30:13',0,1,1,1),(190,'待ちます（まちます）','wait',6,'2019-10-13 10:33:44',0,1,1,1),(191,'死にます（しにます）','die',6,'2019-10-13 10:34:03',0,1,1,1),(192,'弾きます（ひきます）','to play an instrument',6,'2019-10-19 09:53:21',1,1,1,1),(193,'座ります（すわります）','to sit',6,'2019-10-19 09:53:23',1,1,1,1),(194,'立ちます（たちます）','stand up',6,'2019-10-13 10:33:32',0,1,1,1),(195,'払います（はらいます）','to pay',6,'2019-10-19 09:57:38',1,1,1,1),(197,'磨きます（みがきます）','to brush, polish',5,'2019-10-13 10:34:24',0,1,1,1),(200,'乗ります（のります）','to get on',2,'2019-10-13 10:34:29',0,1,1,1),(199,'消します（けします）','turn off, extinguish',2,'2019-10-13 10:29:05',0,1,1,1),(196,'浴びます（あびます）','take (a shower)',6,'2019-10-13 10:33:41',0,1,1,1),(198,'出かけます（でかけます）','go out',2,'2019-10-15 09:54:33',1,1,1,1),(201,'降ります（おります）','to get off',2,'2019-10-13 10:33:25',0,1,1,1),(202,'始めます（はじめます）','to begin, start',2,'2019-10-15 09:57:01',1,1,1,1),(203,'見せます（みせます）','to show',2,'2019-10-13 10:33:37',0,1,1,1),(204,'載せます（のせます）','to put',2,'2019-10-15 09:57:06',1,1,1,1),(205,'自分で（じぶんで）','but oneself',2,'2019-10-15 09:57:11',1,1,1,1),(206,'自分で（じぶんで）','by oneself',2,'2019-10-13 10:29:28',0,1,1,1),(207,'雑誌（ざっし）','magazine',1,'2019-10-14 10:09:59',0,0,1,1),(208,'パソコン','personal computer',1,'2019-10-14 10:11:49',0,0,1,1),(209,'傘（かさ）','umbrella',1,'2019-10-14 10:12:16',0,0,1,1),(210,'かばん','bag',1,'2019-10-14 10:12:45',0,0,1,1),(211,'財布（さいふ）','wallet, purse',1,'2019-10-14 10:13:39',0,0,1,1),(212,'新聞（しんぶん）','newspaper',1,'2019-10-14 10:14:47',0,0,1,1),(213,'砂糖（さとう）','sugar',1,'2019-10-14 10:16:59',0,0,1,1),(214,'塩（しお）','salt',1,'2019-10-14 10:17:26',0,0,1,1);
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

-- Dump completed on 2019-10-17 11:51:39
