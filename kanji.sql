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
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanji`
--

LOCK TABLES `Kanji` WRITE;
/*!40000 ALTER TABLE `Kanji` DISABLE KEYS */;
INSERT INTO `Kanji` VALUES ('mouth kuchi kou, ku','口','mouth','くち','コウ、ク','https://app.kanjialive.com/口',2,'2019-10-22 10:11:17',454,'⼝','kuchi','くち','mouth',3,0,0,1),('thousand chi sen','千','thousand','ち','セン','https://app.kanjialive.com/千',2,'2019-10-22 10:08:56',453,'⼗','juu','じゅう','ten',3,0,0,1),('three mi, mikka, mittsu san','三','three','み','サン','https://app.kanjialive.com/三',2,'2019-10-22 03:37:08',452,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('down shita, shimo, sa, sagaru, sageru, kuda, kudaru, kudasai, o, orosu, oriru ka, ge','下','down','した、しも、さ、くだ、お','カ、ゲ','https://app.kanjialive.com/下',2,'2019-10-22 03:36:05',451,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('up ue, uwa, kami, a, ageru, agaru, nobo, noboru jou, shou','上','up','うえ、うわ、かみ、あ、のぼ','ジョウ、ショウ','https://app.kanjialive.com/上',2,'2019-10-22 10:08:40',450,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('ten too, to juu','十','ten','とお、と','ジュウ','https://app.kanjialive.com/十',2,'2019-10-22 03:37:06',449,'⼗','juu','じゅう','ten',2,0,0,1),('power, force chikara ryoku, riki','力','power, force','ちから','リョク、リキ','https://app.kanjialive.com/力',2,'2019-10-22 10:09:30',448,'⼒','chikara','ちから','power',2,0,0,1),('eight ya, you, yattsu hachi','八','eight','や、よう','ハチ','https://app.kanjialive.com/八',2,'2019-10-22 10:08:23',447,'⼋','hachi','はち','eight',2,0,0,1),('enter, put in i, hai, iri, iru, hairu, ireru, ire nyuu','入','enter, put in','い、はい','ニュウ','https://app.kanjialive.com/入',2,'2019-10-22 10:10:36',446,'⼊','iru','いる','to enter',2,0,0,1),('human being, person hito jin, nin','人','human being, person','ひと','ジン、ニン','https://app.kanjialive.com/人',2,'2019-10-22 10:09:11',445,'⼈','hito','ひと','person',2,0,0,1),('two futa, futatsu, futari ni','二','two','ふた','ニ','https://app.kanjialive.com/二',2,'2019-10-22 10:09:33',444,'⼆','ni','に','two',2,0,0,1),('seven nana, nano, nanatsu shichi','七','seven','なな、なの','シチ','https://app.kanjialive.com/七',2,'2019-10-22 10:08:27',442,'⼀','ichi','いち','one, horizontal stroke',2,0,0,1),('nine kokono, kokonotsu kyuu, ku','九','nine','ここの','キュウ、ク','https://app.kanjialive.com/九',2,'2019-10-22 10:05:32',443,'⼄','otsu','おつ','the second ',2,0,0,1),('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',2,'2019-10-22 10:05:41',441,'⼀','ichi','いち','one, horizontal stroke',1,0,0,1),('river kawa sen','川','river','かわ','セン','https://app.kanjialive.com/川',1,'2019-10-21 10:09:44',455,'川','sanbongawa','さんぼんがわ','river',3,0,0,1),('soil, earth, ground tsuchi do, to','土','soil, earth, ground','つち','ド、ト','https://app.kanjialive.com/土',1,'2019-10-21 10:05:38',456,'⼟','tsuchi','つち','earth',3,0,0,1),('middle, in naka chuu','中','middle, in','なか','チュウ','https://app.kanjialive.com/中',1,'2019-10-21 10:09:07',457,'⼁','tatebou','たてぼう','vertical stroke',4,0,0,1),('evening yuu seki','夕','evening','ゆう','セキ','https://app.kanjialive.com/夕',1,'2019-10-21 03:36:51',458,'⼣','yuube','ゆうべ','evening',3,1,1,1),('big oo, ookii dai, tai','大','big','おお','ダイ、タイ','https://app.kanjialive.com/大',1,'2019-10-21 10:09:15',459,'⼤','dai','だい','large, big',3,0,0,1),('five itsu, itsutsu go','五','five','いつ','ゴ','https://app.kanjialive.com/五',1,'2019-10-21 10:11:12',460,'⼆','ni','に','two',4,0,0,1),('six mu, mui, muttsu roku','六','six','む、むい','ロク','https://app.kanjialive.com/六',1,'2019-10-21 10:07:00',461,'⼋','hachi','はち','eight',4,0,0,1),('woman onna, me jo, nyo, nyou','女','woman','おんな、め','ジョ、ニョ、ニョウ','https://app.kanjialive.com/女',1,'2019-10-21 03:36:11',462,'⼥','onna','おんな','woman',3,1,1,1),('child, noun suffix ko shi, su','子','child, noun suffix','こ','シ、ス','https://app.kanjialive.com/子',1,'2019-10-21 03:37:12',463,'⼦','ko','こ','child, son',3,1,1,1),('circle, yen maru, marui en','円','circle, yen','まる','エン','https://app.kanjialive.com/円',1,'2019-10-21 10:10:23',464,'⼌ ','keigamae','けいがまえ','to enclose',4,0,0,1),('heaven ame, ama ten','天','heaven','あめ、あま','テン','https://app.kanjialive.com/天',1,'2019-10-21 10:10:10',465,'⼤','dai','だい','large, big',4,0,0,1),('small chii, chiisai, ko, o shou','小','small','ちい、こ、お','ショウ','https://app.kanjialive.com/小',1,'2019-10-21 03:36:00',466,'⼩','shou','しょう','small',3,1,1,1),('mountain yama san','山','mountain','やま','サン','https://app.kanjialive.com/山',1,'2019-10-21 10:11:32',467,'⼭','yama','やま','mountain',3,0,0,1),('hand te, ta shu, zu','手','hand','て、た','シュ、ズ','https://app.kanjialive.com/手',1,'2019-10-21 10:08:15',468,'⼿','te','て','hand',4,0,0,1),('letter, writings, sentence fumi bun, mon','文','letter, writings, sentence','ふみ','ブン、モン','https://app.kanjialive.com/文',1,'2019-10-21 10:11:38',469,'⽂','bun','ぶん','literature, letters',4,0,0,1),('day, sun, Japan hi, ka nichi, jitsu','日','day, sun, Japan','ひ、か','ニチ、ジツ','https://app.kanjialive.com/日',1,'2019-10-21 03:36:56',470,'⽇','hi','ひ','sun, day, time',4,1,1,1),('moon, month tsuki getsu, gatsu','月','moon, month','つき','ゲツ、ガツ','https://app.kanjialive.com/月',1,'2019-10-21 10:06:54',471,'⽉','tsuki','つき','moon, month, period',4,0,0,1),('tree, wood ki, ko boku, moku','木','tree, wood','き、こ','ボク、モク','https://app.kanjialive.com/木',1,'2019-10-21 10:09:59',472,'⽊','ki','き','tree, wood',4,0,0,1),('water mizu sui','水','water','みず','スイ','https://app.kanjialive.com/水',1,'2019-10-21 10:11:47',473,'⽔','mizu','みず','water',4,0,0,1),('fire hi ka','火','fire','ひ','カ','https://app.kanjialive.com/火',1,'2019-10-21 03:36:52',474,'⽕','hi','ひ','fire',4,1,1,1),('dog inu ken','犬','dog','いぬ','ケン','https://app.kanjialive.com/犬',1,'2019-10-21 10:05:23',475,'⽝','inu','いぬ','dog',4,0,0,1),('place tokoro sho','所','place','ところ','ショ','https://app.kanjialive.com/所',0,'2019-10-20 20:12:29',476,'','todare','とだれ','door',8,1,1,1),('king n-a ou','王','king','n/a','オウ','https://app.kanjialive.com/王',-1,'2019-10-20 10:24:13',477,'⽟','tama','たま','jewelry',4,1,1,1),('gem, jewel, ball tama gyoku','玉','gem, jewel, ball','たま','ギョク','https://app.kanjialive.com/玉',-1,'2019-10-20 10:24:17',478,'⽟','tama','たま','jewelry',5,1,1,1),('life, be born, student i, ikiru, u, umareru, umu, o, ha, haeru, hayasu, nama, ki sei, shou','生','life, be born, student','い、う、お、は、なま、き','セイ、ショウ','https://app.kanjialive.com/生',-1,'2019-10-20 10:24:21',479,'⽣','umareru','うまれる','birth, to be born, live',5,1,1,1),('go out, put out de, da, deru, dasu shutsu, sui','出','go out, put out','で、だ','シュツ、スイ','https://app.kanjialive.com/出',-1,'2019-10-20 10:24:30',480,'⼐','kannyou','かんにょう','container, open box',5,1,1,1),('right migi u, yuu','右','right','みぎ','ウ、ユウ','https://app.kanjialive.com/右',-1,'2019-10-20 10:24:32',481,'⼝','kuchi','くち','mouth',5,1,1,1),('rice field ta den','田','rice field','た','デン','https://app.kanjialive.com/田',-1,'2019-10-20 10:24:35',482,'⽥','ta','た','rice paddy',5,1,1,1),('white shiro, shira, shiroi haku, byaku','白','white','しろ、しら','ハク、ビャク','https://app.kanjialive.com/白',-1,'2019-10-20 10:24:37',483,'⽩','shiro','しろ','white',5,1,1,1),('four yo, yon shi','四','four','よ、よん','シ','https://app.kanjialive.com/四',-1,'2019-10-20 10:24:40',484,'⼞','kunigamae','くにがまえ','border, territorial boundaries',5,1,1,1),('left hidari sa','左','left','ひだり','サ','https://app.kanjialive.com/左',-1,'2019-10-20 10:24:42',485,'⼯','takumi','たくみ','work, carpenter, skill',5,1,1,1),('eye, item me, ma moku','目','eye, item','め、ま','モク','https://app.kanjialive.com/目',-1,'2019-10-20 10:24:45',486,'⽬','me','め','eye',5,1,1,1),('stone ishi seki, shaku, koku','石','stone','いし','セキ、シャク、コク','https://app.kanjialive.com/石',-1,'2019-10-20 10:24:51',487,'⽯','ishi','いし','stone',5,1,1,1),('basis, book, this moto hon','本','basis, book, this','もと','ホン','https://app.kanjialive.com/本',-1,'2019-10-20 10:24:53',488,'⽊','ki','き','tree, wood',5,1,1,1),('right, correct tada, tadashii, tadasu, masa, masani sei, shou','正','right, correct','ただ、まさ','セイ、ショウ','https://app.kanjialive.com/正',-1,'2019-10-20 10:24:56',489,'⽌','tomeru','とめる','to stop',5,1,1,1),('stand, establish ta, tate, tatsu, tachi, tateru ritsu, ryuu','立','stand, establish','た、たて','リツ、リュウ','https://app.kanjialive.com/立',-1,'2019-10-20 10:24:58',490,'⽴','tatsu','たつ','to stand',5,1,1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vocabulary`
--

LOCK TABLES `Vocabulary` WRITE;
/*!40000 ALTER TABLE `Vocabulary` DISABLE KEYS */;
INSERT INTO `Vocabulary` VALUES (157,'工場（こうじょう）','factory',7,'2019-10-25 02:50:58',0,0,1,1),(156,'市長（しちょう）','mayor',7,'2019-10-25 02:50:01',0,0,1,1),(155,'市役所（しやくしょ）','city hall, town hall',7,'2019-10-25 02:51:16',0,0,1,1),(154,'コップ','cup, glass',7,'2019-10-25 02:50:29',0,0,1,1),(180,'おなかがすきました','I\'m hungry',7,'2019-10-27 02:49:49',0,0,1,1),(153,'お皿（おさら）','plate, dish',7,'2019-10-25 02:50:24',0,0,1,1),(165,'作り方（つくりかた）','how to make',7,'2019-10-26 10:45:20',0,0,1,1),(164,'~方（～かた）','way to ~, method of ~',7,'2019-10-25 02:50:15',0,0,1,1),(163,'見学（けんがく）','study tour',7,'2019-10-25 02:50:28',0,0,1,1),(166,'相撲（すもう）','sumo',7,'2019-10-27 02:50:18',0,0,1,1),(167,'大学院（だいがくいん）','graduate school',7,'2019-10-27 02:50:54',0,0,1,1),(168,'工学（こうがく）','engineering',7,'2019-10-25 02:49:37',0,0,1,1),(169,'将来（しょうらい）','future',7,'2019-10-25 02:50:40',0,0,1,1),(170,'返します（かえします）','to return',7,'2019-10-25 02:49:34',0,0,1,1),(171,'迎えます（むかえます）','welcome, meet',7,'2019-10-25 02:51:24',0,0,1,1),(172,'持ちます（もちます）','hold, carry, possess',7,'2019-10-27 02:50:22',0,0,1,1),(173,'手伝います（てつだいます）','help, assist',7,'2019-10-25 02:49:53',0,0,1,1),(174,'洗います（あらいます）','wash',7,'2019-10-25 02:50:56',0,0,1,1),(175,'使います（つかいます）','use',7,'2019-10-25 02:51:11',0,0,1,1),(176,'欲しい（ほしい）','to want',7,'2019-10-25 02:49:44',0,0,1,1),(177,'痛い（いたい）','painful',7,'2019-10-25 02:51:37',0,0,1,1),(178,'ただいま','I\'m home',7,'2019-10-25 02:50:47',0,0,1,1),(179,'布団（ふとん）','futon',7,'2019-10-25 02:51:35',0,0,1,1),(181,'のどが渇きました（のどがかわきました）','I\'m thirsty',7,'2019-10-27 02:50:42',0,0,1,1),(182,'疲れました（つかれました）','I\'m tired',7,'2019-10-27 02:50:58',0,0,1,1),(183,'彼 (かれ)','boyfriend',7,'2019-10-27 02:50:19',0,0,1,1),(184,'彼女（かのじょ）','girlfriend, she',7,'2019-10-27 02:50:46',0,0,1,1),(185,'料金（りょうきん）','rate, charge',7,'2019-10-25 02:49:41',0,0,1,1),(186,'生け花（いけばな）','flower arrangement',7,'2019-10-25 02:49:47',0,0,1,1),(187,'目覚まし時計（めざましどけい）','alarm clock',7,'2019-10-27 02:51:10',0,0,1,1),(188,'歯（は）','tooth',7,'2019-10-25 02:51:04',0,0,1,1),(189,'曲（きょく）','piece of music',7,'2019-10-25 02:50:23',0,0,1,1),(190,'待ちます（まちます）','wait',7,'2019-10-25 02:50:54',0,0,1,1),(191,'死にます（しにます）','die',7,'2019-10-25 02:51:13',0,0,1,1),(192,'弾きます（ひきます）','to play an instrument',7,'2019-10-27 02:51:12',0,0,1,1),(193,'座ります（すわります）','to sit',7,'2019-10-27 02:51:14',0,0,1,1),(194,'立ちます（たちます）','stand up',7,'2019-10-25 02:50:46',0,0,1,1),(195,'払います（はらいます）','to pay',7,'2019-10-27 02:50:56',0,0,1,1),(197,'磨きます（みがきます）','to brush, polish',6,'2019-10-24 02:51:32',0,0,1,1),(200,'乗ります（のります）','to get on',3,'2019-10-21 02:51:34',0,0,1,1),(199,'消します（けします）','turn off, extinguish',3,'2019-10-21 02:50:05',0,0,1,1),(196,'浴びます（あびます）','take (a shower)',7,'2019-10-25 02:50:52',0,0,1,1),(198,'出かけます（でかけます）','go out',3,'2019-10-21 02:52:34',0,0,1,1),(201,'降ります（おります）','to get off',3,'2019-10-21 02:50:32',0,0,1,1),(202,'始めます（はじめます）','to begin, start',3,'2019-10-21 02:52:36',0,0,1,1),(203,'見せます（みせます）','to show',3,'2019-10-21 02:50:49',0,0,1,1),(204,'載せます（のせます）','to put',3,'2019-10-21 02:52:55',0,0,1,1),(206,'自分で（じぶんで）','by oneself',3,'2019-10-21 02:50:09',0,0,1,1),(207,'雑誌（ざっし）','magazine',3,'2019-10-23 02:57:38',0,0,1,1),(208,'パソコン','personal computer',3,'2019-10-23 02:57:55',0,0,1,1),(209,'傘（かさ）','umbrella',3,'2019-10-23 02:58:04',0,0,1,1),(210,'かばん','bag',3,'2019-10-23 02:58:10',0,0,1,1),(211,'財布（さいふ）','wallet, purse',3,'2019-10-23 02:58:15',0,0,1,1),(212,'新聞（しんぶん）','newspaper',3,'2019-10-23 02:58:24',0,0,1,1),(213,'砂糖（さとう）','sugar',3,'2019-10-23 02:58:32',0,0,1,1),(214,'塩（しお）','salt',3,'2019-10-23 02:58:38',0,0,1,1),(215,'なべ','pot, pan',2,'2019-10-22 10:00:43',0,0,1,1),(216,'参考書（さんこうしょ）','reference book',2,'2019-10-22 10:00:50',0,0,1,1),(217,'資料（しりょう）','data, materials',2,'2019-10-22 10:01:15',0,0,1,1),(218,'推薦状（すいせんじょう）','letter of recommendation',2,'2019-10-22 10:01:43',0,0,1,1),(219,'ごみ','rubbish, trash',2,'2019-10-22 10:01:45',0,0,1,1),(220,'台所（だいどころ）','kitchen',2,'2019-10-22 10:01:52',0,0,1,1),(221,'住所（じゅうしょ）','address',2,'2019-10-22 10:01:57',0,0,1,1),(222,'急ぐ（いそぐ）','to hurry',2,'2019-10-22 10:04:28',0,0,1,1),(223,'集める（あつめる）','to collect, gather',2,'2019-10-21 04:22:50',0,0,1,1),(224,'切る（きる）','to cut',2,'2019-10-22 10:02:43',0,0,1,1),(225,'入れる（いれる）','to put in',2,'2019-10-22 10:02:46',0,0,1,1),(226,'煮る（にる）','to boil, cook',2,'2019-10-22 10:02:47',0,0,1,1),(227,'並べる（ならべる）','to arrange, align',2,'2019-10-22 10:02:50',0,0,1,1),(228,'取る（とる）','to pass, take',2,'2019-10-22 10:02:52',0,0,1,1),(229,'言う（いう）','to say',2,'2019-10-22 10:02:53',0,0,1,1),(230,'修理する（しゅうりする）','to repair',2,'2019-10-22 10:03:00',0,0,1,1),(231,'上がる（あがる）','to come into, go up',2,'2019-10-22 10:03:07',0,0,1,1),(232,'履く（はく）','to put on',2,'2019-10-22 10:03:11',0,0,1,1),(233,'捨てる（すてる）','to throw away',2,'2019-10-22 10:03:14',0,0,1,1),(234,'運ぶ（はこぶ）','to carry to',3,'2019-10-23 10:04:34',0,0,1,1),(235,'危ない（あぶない）','dangerous',2,'2019-10-22 10:03:36',0,0,1,1),(236,'ほかの','other',2,'2019-10-22 10:03:43',0,0,1,1),(237,'もう一度（もういちど）','once more, again',2,'2019-10-22 10:04:45',0,0,1,1),(238,'すぐ','right now',2,'2019-10-22 10:04:50',0,0,1,1),(239,'失礼します（しつれいします）','excuse me I enter',2,'2019-10-22 10:04:22',0,0,1,1);
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

-- Dump completed on 2019-10-21 13:27:53
