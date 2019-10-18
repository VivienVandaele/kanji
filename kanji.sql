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
) ENGINE=MyISAM AUTO_INCREMENT=476 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanji`
--

LOCK TABLES `Kanji` WRITE;
/*!40000 ALTER TABLE `Kanji` DISABLE KEYS */;
INSERT INTO `Kanji` VALUES ('mouth kuchi kou, ku','口','mouth','くち','コウ、ク','https://app.kanjialive.com/口',0,'2019-10-18 13:10:06',454,'⼝','kuchi','くち','mouth',3,0,0,1),('thousand chi sen','千','thousand','ち','セン','https://app.kanjialive.com/千',0,'2019-10-18 13:09:12',453,'⼗','juu','じゅう','ten',3,0,0,1),('three mi, mikka, mittsu san','三','three','み','サン','https://app.kanjialive.com/三',0,'2019-10-18 13:08:59',452,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('down shita, shimo, sa, sagaru, sageru, kuda, kudaru, kudasai, o, orosu, oriru ka, ge','下','down','した、しも、さ、くだ、お','カ、ゲ','https://app.kanjialive.com/下',0,'2019-10-18 13:08:26',451,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('up ue, uwa, kami, a, ageru, agaru, nobo, noboru jou, shou','上','up','うえ、うわ、かみ、あ、のぼ','ジョウ、ショウ','https://app.kanjialive.com/上',0,'2019-10-18 13:09:05',450,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('ten too, to juu','十','ten','とお、と','ジュウ','https://app.kanjialive.com/十',0,'2019-10-18 13:09:57',449,'⼗','juu','じゅう','ten',2,0,0,1),('power, force chikara ryoku, riki','力','power, force','ちから','リョク、リキ','https://app.kanjialive.com/力',0,'2019-10-18 13:10:26',448,'⼒','chikara','ちから','power',2,0,0,1),('eight ya, you, yattsu hachi','八','eight','や、よう','ハチ','https://app.kanjialive.com/八',0,'2019-10-18 13:09:37',447,'⼋','hachi','はち','eight',2,0,0,1),('enter, put in i, hai, iri, iru, hairu, ireru, ire nyuu','入','enter, put in','い、はい','ニュウ','https://app.kanjialive.com/入',0,'2019-10-18 13:08:43',446,'⼊','iru','いる','to enter',2,0,0,1),('human being, person hito jin, nin','人','human being, person','ひと','ジン、ニン','https://app.kanjialive.com/人',0,'2019-10-18 13:08:56',445,'⼈','hito','ひと','person',2,0,0,1),('two futa, futatsu, futari ni','二','two','ふた','ニ','https://app.kanjialive.com/二',0,'2019-10-18 13:09:42',444,'⼆','ni','に','two',2,0,0,1),('seven nana, nano, nanatsu shichi','七','seven','なな、なの','シチ','https://app.kanjialive.com/七',0,'2019-10-18 13:09:27',442,'⼀','ichi','いち','one, horizontal stroke',2,0,0,1),('nine kokono, kokonotsu kyuu, ku','九','nine','ここの','キュウ、ク','https://app.kanjialive.com/九',0,'2019-10-18 13:09:20',443,'⼄','otsu','おつ','the second ',2,0,0,1),('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',0,'2019-10-18 13:08:39',441,'⼀','ichi','いち','one, horizontal stroke',1,0,0,1),('river kawa sen','川','river','かわ','セン','https://app.kanjialive.com/川',-1,'2019-10-18 11:26:49',455,'川','sanbongawa','さんぼんがわ','river',3,0,0,1),('soil, earth, ground tsuchi do, to','土','soil, earth, ground','つち','ド、ト','https://app.kanjialive.com/土',-1,'2019-10-18 11:26:50',456,'⼟','tsuchi','つち','earth',3,0,0,1),('middle, in naka chuu','中','middle, in','なか','チュウ','https://app.kanjialive.com/中',-1,'2019-10-18 11:27:06',457,'⼁','tatebou','たてぼう','vertical stroke',4,0,0,1),('evening yuu seki','夕','evening','ゆう','セキ','https://app.kanjialive.com/夕',-1,'2019-10-18 11:27:09',458,'⼣','yuube','ゆうべ','evening',3,0,0,1),('big oo, ookii dai, tai','大','big','おお','ダイ、タイ','https://app.kanjialive.com/大',-1,'2019-10-18 11:27:13',459,'⼤','dai','だい','large, big',3,0,0,1),('five itsu, itsutsu go','五','five','いつ','ゴ','https://app.kanjialive.com/五',-1,'2019-10-18 11:27:16',460,'⼆','ni','に','two',4,0,0,1),('six mu, mui, muttsu roku','六','six','む、むい','ロク','https://app.kanjialive.com/六',-1,'2019-10-18 11:27:21',461,'⼋','hachi','はち','eight',4,0,0,1),('woman onna, me jo, nyo, nyou','女','woman','おんな、め','ジョ、ニョ、ニョウ','https://app.kanjialive.com/女',-1,'2019-10-18 11:27:27',462,'⼥','onna','おんな','woman',3,0,0,1),('child, noun suffix ko shi, su','子','child, noun suffix','こ','シ、ス','https://app.kanjialive.com/子',-1,'2019-10-18 11:27:29',463,'⼦','ko','こ','child, son',3,0,0,1),('circle, yen maru, marui en','円','circle, yen','まる','エン','https://app.kanjialive.com/円',-1,'2019-10-18 11:27:32',464,'⼌ ','keigamae','けいがまえ','to enclose',4,0,0,1),('heaven ame, ama ten','天','heaven','あめ、あま','テン','https://app.kanjialive.com/天',-1,'2019-10-18 11:27:34',465,'⼤','dai','だい','large, big',4,0,0,1),('small chii, chiisai, ko, o shou','小','small','ちい、こ、お','ショウ','https://app.kanjialive.com/小',-1,'2019-10-18 11:27:37',466,'⼩','shou','しょう','small',3,0,0,1),('mountain yama san','山','mountain','やま','サン','https://app.kanjialive.com/山',-1,'2019-10-18 11:27:39',467,'⼭','yama','やま','mountain',3,0,0,1),('hand te, ta shu, zu','手','hand','て、た','シュ、ズ','https://app.kanjialive.com/手',-1,'2019-10-18 11:27:44',468,'⼿','te','て','hand',4,0,0,1),('letter, writings, sentence fumi bun, mon','文','letter, writings, sentence','ふみ','ブン、モン','https://app.kanjialive.com/文',-1,'2019-10-18 11:27:57',469,'⽂','bun','ぶん','literature, letters',4,0,0,1),('day, sun, Japan hi, ka nichi, jitsu','日','day, sun, Japan','ひ、か','ニチ、ジツ','https://app.kanjialive.com/日',-1,'2019-10-18 11:28:01',470,'⽇','hi','ひ','sun, day, time',4,0,0,1),('moon, month tsuki getsu, gatsu','月','moon, month','つき','ゲツ、ガツ','https://app.kanjialive.com/月',-1,'2019-10-18 11:28:04',471,'⽉','tsuki','つき','moon, month, period',4,0,0,1),('tree, wood ki, ko boku, moku','木','tree, wood','き、こ','ボク、モク','https://app.kanjialive.com/木',-1,'2019-10-18 11:28:09',472,'⽊','ki','き','tree, wood',4,0,0,1),('water mizu sui','水','water','みず','スイ','https://app.kanjialive.com/水',-1,'2019-10-18 11:28:14',473,'⽔','mizu','みず','water',4,0,0,1),('fire hi ka','火','fire','ひ','カ','https://app.kanjialive.com/火',-1,'2019-10-18 11:28:17',474,'⽕','hi','ひ','fire',4,0,0,1),('dog inu ken','犬','dog','いぬ','ケン','https://app.kanjialive.com/犬',-1,'2019-10-18 11:28:23',475,'⽝','inu','いぬ','dog',4,0,0,1);
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
INSERT INTO `Vocabulary` VALUES (157,'工場（こうじょう）','factory',7,'2019-10-25 02:50:58',0,0,1,1),(156,'市長（しちょう）','mayor',7,'2019-10-25 02:50:01',0,0,1,1),(155,'市役所（しやくしょ）','city hall, town hall',7,'2019-10-25 02:51:16',0,0,1,1),(154,'コップ','cup, glass',7,'2019-10-25 02:50:29',0,0,1,1),(180,'おなかがすきました','I\'m hungry',6,'2019-10-19 09:53:34',0,0,1,1),(153,'お皿（おさら）','plate, dish',7,'2019-10-25 02:50:24',0,0,1,1),(165,'作り方（つくりかた）','how to make',6,'2019-10-19 09:52:53',0,0,1,1),(164,'~方（～かた）','way to ~, method of ~',7,'2019-10-25 02:50:15',0,0,1,1),(163,'見学（けんがく）','study tour',7,'2019-10-25 02:50:28',0,0,1,1),(166,'相撲（すもう）','sumo',6,'2019-10-19 09:53:36',0,0,1,1),(167,'大学院（だいがくいん）','graduate school',6,'2019-10-19 09:56:54',0,0,1,1),(168,'工学（こうがく）','engineering',7,'2019-10-25 02:49:37',0,0,1,1),(169,'将来（しょうらい）','future',7,'2019-10-25 02:50:40',0,0,1,1),(170,'返します（かえします）','to return',7,'2019-10-25 02:49:34',0,0,1,1),(171,'迎えます（むかえます）','welcome, meet',7,'2019-10-25 02:51:24',0,0,1,1),(172,'持ちます（もちます）','hold, carry, possess',6,'2019-10-19 09:53:45',0,0,1,1),(173,'手伝います（てつだいます）','help, assist',7,'2019-10-25 02:49:53',0,0,1,1),(174,'洗います（あらいます）','wash',7,'2019-10-25 02:50:56',0,0,1,1),(175,'使います（つかいます）','use',7,'2019-10-25 02:51:11',0,0,1,1),(176,'欲しい（ほしい）','to want',7,'2019-10-25 02:49:44',0,0,1,1),(177,'痛い（いたい）','painful',7,'2019-10-25 02:51:37',0,0,1,1),(178,'ただいま','I\'m home',7,'2019-10-25 02:50:47',0,0,1,1),(179,'布団（ふとん）','futon',7,'2019-10-25 02:51:35',0,0,1,1),(181,'のどが渇きました（のどがかわきました）','I\'m thirsty',6,'2019-10-19 09:56:38',0,0,1,1),(182,'疲れました（つかれました）','I\'m tired',6,'2019-10-19 09:57:50',0,0,1,1),(183,'彼 (かれ)','boyfriend',6,'2019-10-19 09:53:37',0,0,1,1),(184,'彼女（かのじょ）','girlfriend, she',6,'2019-10-19 09:56:42',0,0,1,1),(185,'料金（りょうきん）','rate, charge',7,'2019-10-25 02:49:41',0,0,1,1),(186,'生け花（いけばな）','flower arrangement',7,'2019-10-25 02:49:47',0,0,1,1),(187,'目覚まし時計（めざましどけい）','alarm clock',6,'2019-10-19 09:58:02',0,0,1,1),(188,'歯（は）','tooth',7,'2019-10-25 02:51:04',0,0,1,1),(189,'曲（きょく）','piece of music',7,'2019-10-25 02:50:23',0,0,1,1),(190,'待ちます（まちます）','wait',7,'2019-10-25 02:50:54',0,0,1,1),(191,'死にます（しにます）','die',7,'2019-10-25 02:51:13',0,0,1,1),(192,'弾きます（ひきます）','to play an instrument',6,'2019-10-19 09:53:21',0,0,1,1),(193,'座ります（すわります）','to sit',6,'2019-10-19 09:53:23',0,0,1,1),(194,'立ちます（たちます）','stand up',7,'2019-10-25 02:50:46',0,0,1,1),(195,'払います（はらいます）','to pay',6,'2019-10-19 09:57:38',0,0,1,1),(197,'磨きます（みがきます）','to brush, polish',6,'2019-10-24 02:51:32',0,0,1,1),(200,'乗ります（のります）','to get on',3,'2019-10-21 02:51:34',0,0,1,1),(199,'消します（けします）','turn off, extinguish',3,'2019-10-21 02:50:05',0,0,1,1),(196,'浴びます（あびます）','take (a shower)',7,'2019-10-25 02:50:52',0,0,1,1),(198,'出かけます（でかけます）','go out',3,'2019-10-21 02:52:34',0,0,1,1),(201,'降ります（おります）','to get off',3,'2019-10-21 02:50:32',0,0,1,1),(202,'始めます（はじめます）','to begin, start',3,'2019-10-21 02:52:36',0,0,1,1),(203,'見せます（みせます）','to show',3,'2019-10-21 02:50:49',0,0,1,1),(204,'載せます（のせます）','to put',3,'2019-10-21 02:52:55',0,0,1,1),(205,'自分で（じぶんで）','but oneself',3,'2019-10-21 02:52:58',0,0,1,1),(206,'自分で（じぶんで）','by oneself',3,'2019-10-21 02:50:09',0,0,1,1),(207,'雑誌（ざっし）','magazine',2,'2019-10-20 02:51:42',0,0,1,1),(208,'パソコン','personal computer',2,'2019-10-20 02:51:53',0,0,1,1),(209,'傘（かさ）','umbrella',2,'2019-10-20 02:51:56',0,0,1,1),(210,'かばん','bag',2,'2019-10-20 02:51:59',0,0,1,1),(211,'財布（さいふ）','wallet, purse',2,'2019-10-20 02:52:09',0,0,1,1),(212,'新聞（しんぶん）','newspaper',2,'2019-10-20 02:52:24',0,0,1,1),(213,'砂糖（さとう）','sugar',2,'2019-10-20 02:52:26',0,0,1,1),(214,'塩（しお）','salt',2,'2019-10-20 02:52:28',0,0,1,1);
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

-- Dump completed on 2019-10-18 20:27:40
