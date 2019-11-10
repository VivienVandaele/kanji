-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Android (aarch64)
--
-- Host: localhost    Database: kanji
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB

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
-- Table structure for table `kanji`
--

DROP TABLE IF EXISTS `kanji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kanji` (
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
) ENGINE=MyISAM AUTO_INCREMENT=556 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanji`
--

LOCK TABLES `kanji` WRITE;
/*!40000 ALTER TABLE `kanji` DISABLE KEYS */;
INSERT INTO `kanji` VALUES ('mouth kuchi kou, ku','口','mouth','くち','コウ、ク','https://app.kanjialive.com/口',10,'2019-11-18 06:44:34',454,'⼝','kuchi','くち','mouth',3,0,0,1),('thousand chi sen','千','thousand','ち','セン','https://app.kanjialive.com/千',10,'2019-11-18 06:44:51',453,'⼗','juu','じゅう','ten',3,0,0,1),('three mi, mikka, mittsu san','三','three','み','サン','https://app.kanjialive.com/三',10,'2019-11-18 02:24:29',452,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('down shita, shimo, sa, sagaru, sageru, kuda, kudaru, kudasai, o, orosu, oriru ka, ge','下','down','した、しも、さ、くだ、お','カ、ゲ','https://app.kanjialive.com/下',10,'2019-11-18 02:24:21',451,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('up ue, uwa, kami, a, ageru, agaru, nobo, noboru jou, shou','上','up','うえ、うわ、かみ、あ、のぼ','ジョウ、ショウ','https://app.kanjialive.com/上',10,'2019-11-19 00:06:30',450,'⼀','ichi','いち','one, horizontal stroke',3,0,0,1),('ten too, to juu','十','ten','とお、と','ジュウ','https://app.kanjialive.com/十',10,'2019-11-18 02:24:20',449,'⼗','juu','じゅう','ten',2,0,0,1),('power, force chikara ryoku, riki','力','power, force','ちから','リョク、リキ','https://app.kanjialive.com/力',10,'2019-11-19 00:06:32',448,'⼒','chikara','ちから','power',2,0,0,1),('eight ya, you, yattsu hachi','八','eight','や、よう','ハチ','https://app.kanjialive.com/八',7,'2019-11-11 01:34:06',447,'⼋','hachi','はち','eight',2,0,0,1),('enter, put in i, hai, iri, iru, hairu, ireru, ire nyuu','入','enter, put in','い、はい','ニュウ','https://app.kanjialive.com/入',10,'2019-11-19 00:06:15',446,'⼊','iru','いる','to enter',2,0,0,1),('human being, person hito jin, nin','人','human being, person','ひと','ジン、ニン','https://app.kanjialive.com/人',10,'2019-11-18 06:45:04',445,'⼈','hito','ひと','person',2,0,0,1),('two futa, futatsu, futari ni','二','two','ふた','ニ','https://app.kanjialive.com/二',10,'2019-11-18 06:45:00',444,'⼆','ni','に','two',2,0,0,1),('seven nana, nano, nanatsu shichi','七','seven','なな、なの','シチ','https://app.kanjialive.com/七',10,'2019-11-19 00:06:38',442,'⼀','ichi','いち','one, horizontal stroke',2,0,0,1),('nine kokono, kokonotsu kyuu, ku','九','nine','ここの','キュウ、ク','https://app.kanjialive.com/九',7,'2019-11-11 01:46:50',443,'⼄','otsu','おつ','the second ',2,0,0,1),('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',10,'2019-11-18 06:44:53',441,'⼀','ichi','いち','one, horizontal stroke',1,0,0,1),('river kawa sen','川','river','かわ','セン','https://app.kanjialive.com/川',10,'2019-11-19 00:06:06',455,'川','sanbongawa','さんぼんがわ','river',3,0,0,1),('soil, earth, ground tsuchi do, to','土','soil, earth, ground','つち','ド、ト','https://app.kanjialive.com/土',10,'2019-11-19 00:05:57',456,'⼟','tsuchi','つち','earth',3,0,0,1),('middle, in naka chuu','中','middle, in','なか','チュウ','https://app.kanjialive.com/中',10,'2019-11-19 00:06:59',457,'⼁','tatebou','たてぼう','vertical stroke',4,0,0,1),('evening yuu seki','夕','evening','ゆう','セキ','https://app.kanjialive.com/夕',7,'2019-11-13 08:10:32',458,'⼣','yuube','ゆうべ','evening',3,0,0,1),('big oo, ookii dai, tai','大','big','おお','ダイ、タイ','https://app.kanjialive.com/大',10,'2019-11-19 00:06:35',459,'⼤','dai','だい','large, big',3,0,0,1),('five itsu, itsutsu go','五','five','いつ','ゴ','https://app.kanjialive.com/五',10,'2019-11-19 00:05:59',460,'⼆','ni','に','two',4,0,0,1),('six mu, mui, muttsu roku','六','six','む、むい','ロク','https://app.kanjialive.com/六',7,'2019-11-11 01:36:23',461,'⼋','hachi','はち','eight',4,0,0,1),('woman onna, me jo, nyo, nyou','女','woman','おんな、め','ジョ、ニョ、ニョウ','https://app.kanjialive.com/女',10,'2019-11-19 00:06:33',462,'⼥','onna','おんな','woman',3,0,0,1),('child, noun suffix ko shi, su','子','child, noun suffix','こ','シ、ス','https://app.kanjialive.com/子',10,'2019-11-18 06:14:13',463,'⼦','ko','こ','child, son',3,0,0,1),('circle, yen maru, marui en','円','circle, yen','まる','エン','https://app.kanjialive.com/円',10,'2019-11-19 00:06:53',464,'⼌ ','keigamae','けいがまえ','to enclose',4,0,0,1),('heaven ame, ama ten','天','heaven','あめ、あま','テン','https://app.kanjialive.com/天',10,'2019-11-19 00:06:27',465,'⼤','dai','だい','large, big',4,0,0,1),('small chii, chiisai, ko, o shou','小','small','ちい、こ、お','ショウ','https://app.kanjialive.com/小',10,'2019-11-18 06:44:38',466,'⼩','shou','しょう','small',3,0,0,1),('mountain yama san','山','mountain','やま','サン','https://app.kanjialive.com/山',7,'2019-11-11 01:36:50',467,'⼭','yama','やま','mountain',3,0,0,1),('hand te, ta shu, zu','手','hand','て、た','シュ、ズ','https://app.kanjialive.com/手',7,'2019-11-11 01:35:48',468,'⼿','te','て','hand',4,0,0,1),('letter, writings, sentence fumi bun, mon','文','letter, writings, sentence','ふみ','ブン、モン','https://app.kanjialive.com/文',7,'2019-11-11 04:20:53',469,'⽂','bun','ぶん','literature, letters',4,0,0,1),('day, sun, Japan hi, ka nichi, jitsu','日','day, sun, Japan','ひ、か','ニチ、ジツ','https://app.kanjialive.com/日',7,'2019-11-11 04:20:23',470,'⽇','hi','ひ','sun, day, time',4,0,0,1),('moon, month tsuki getsu, gatsu','月','moon, month','つき','ゲツ、ガツ','https://app.kanjialive.com/月',7,'2019-11-11 04:18:57',471,'⽉','tsuki','つき','moon, month, period',4,0,0,1),('tree, wood ki, ko boku, moku','木','tree, wood','き、こ','ボク、モク','https://app.kanjialive.com/木',10,'2019-11-19 00:06:19',472,'⽊','ki','き','tree, wood',4,0,0,1),('water mizu sui','水','water','みず','スイ','https://app.kanjialive.com/水',7,'2019-11-11 01:47:10',473,'⽔','mizu','みず','water',4,0,0,1),('fire hi ka','火','fire','ひ','カ','https://app.kanjialive.com/火',7,'2019-11-11 01:36:17',474,'⽕','hi','ひ','fire',4,0,0,1),('dog inu ken','犬','dog','いぬ','ケン','https://app.kanjialive.com/犬',7,'2019-11-11 01:36:48',475,'⽝','inu','いぬ','dog',4,0,0,1),('place tokoro sho','所','place','ところ','ショ','https://app.kanjialive.com/所',5,'2019-11-13 06:44:58',476,'','todare','とだれ','door',8,0,0,1),('king n-a ou','王','king','n/a','オウ','https://app.kanjialive.com/王',7,'2019-11-12 10:38:17',477,'⽟','tama','たま','jewelry',4,0,0,1),('gem, jewel, ball tama gyoku','玉','gem, jewel, ball','たま','ギョク','https://app.kanjialive.com/玉',7,'2019-11-12 10:37:28',478,'⽟','tama','たま','jewelry',5,0,0,1),('life, be born, student i, ikiru, u, umareru, umu, o, ha, haeru, hayasu, nama, ki sei, shou','生','life, be born, student','い、う、お、は、なま、き','セイ、ショウ','https://app.kanjialive.com/生',7,'2019-11-12 07:40:33',479,'⽣','umareru','うまれる','birth, to be born, live',5,0,0,1),('go out, put out de, da, deru, dasu shutsu, sui','出','go out, put out','で、だ','シュツ、スイ','https://app.kanjialive.com/出',7,'2019-11-12 07:47:29',480,'⼐','kannyou','かんにょう','container, open box',5,0,0,1),('right migi u, yuu','右','right','みぎ','ウ、ユウ','https://app.kanjialive.com/右',7,'2019-11-13 08:14:34',481,'⼝','kuchi','くち','mouth',5,0,0,1),('rice field ta den','田','rice field','た','デン','https://app.kanjialive.com/田',7,'2019-11-12 10:38:09',482,'⽥','ta','た','rice paddy',5,0,0,1),('white shiro, shira, shiroi haku, byaku','白','white','しろ、しら','ハク、ビャク','https://app.kanjialive.com/白',7,'2019-11-12 10:37:49',483,'⽩','shiro','しろ','white',5,0,0,1),('four yo, yon shi','四','four','よ、よん','シ','https://app.kanjialive.com/四',7,'2019-11-12 10:37:18',484,'⼞','kunigamae','くにがまえ','border, territorial boundaries',5,0,0,1),('left hidari sa','左','left','ひだり','サ','https://app.kanjialive.com/左',7,'2019-11-12 10:34:57',485,'⼯','takumi','たくみ','work, carpenter, skill',5,0,0,1),('eye, item me, ma moku','目','eye, item','め、ま','モク','https://app.kanjialive.com/目',7,'2019-11-13 08:13:54',486,'⽬','me','め','eye',5,0,0,1),('stone ishi seki, shaku, koku','石','stone','いし','セキ、シャク、コク','https://app.kanjialive.com/石',7,'2019-11-13 08:14:43',487,'⽯','ishi','いし','stone',5,0,0,1),('basis, book, this moto hon','本','basis, book, this','もと','ホン','https://app.kanjialive.com/本',7,'2019-11-12 10:36:21',488,'⽊','ki','き','tree, wood',5,0,0,1),('right, correct tada, tadashii, tadasu, masa, masani sei, shou','正','right, correct','ただ、まさ','セイ、ショウ','https://app.kanjialive.com/正',7,'2019-11-12 07:35:31',489,'⽌','tomeru','とめる','to stop',5,0,0,1),('stand, establish ta, tate, tatsu, tachi, tateru ritsu, ryuu','立','stand, establish','た、たて','リツ、リュウ','https://app.kanjialive.com/立',7,'2019-11-12 07:32:35',490,'⽴','tatsu','たつ','to stand',5,0,0,1),('town subsection, miscellaneous counter, even number n-a chou, tei','丁','town subsection, miscellaneous counter, even number','n/a','チョウ、テイ','https://app.kanjialive.com/丁',7,'2019-11-14 07:40:26',491,'⼀','ichi','いち','one, horizontal stroke',2,0,0,1),('in advance n-a yo','予','in advance','n/a','ヨ','https://app.kanjialive.com/予',7,'2019-11-15 02:23:44',492,'⼅','hanebou','はねぼう','vertical stroke with a hook',4,0,0,1),('change into ba, bakeru, bakasu ka, ke','化','change into','ば','カ、ケ','https://app.kanjialive.com/化',7,'2019-11-17 04:41:13',493,'⼔','saji','さじ','spoon',4,0,0,1),('district, ward n-a ku','区','district, ward','n/a','ク','https://app.kanjialive.com/区',7,'2019-11-14 07:38:56',494,'⼕','hakogamae','はこがまえ','box',4,0,0,1),('counter, anti- so, soru, sorasu han, hon, tan','反','counter, anti-','そ','ハン、ホン、タン','https://app.kanjialive.com/反',7,'2019-11-12 07:33:50',495,'⼜','mata','また','again, right hand',4,0,0,1),('world, era yo sei, se','世','world, era','よ','セイ、セ','https://app.kanjialive.com/世',7,'2019-11-12 10:36:09',496,'⼀','ichi','いち','one, horizontal stroke',5,0,0,1),('main, master nushi, omo, omoni, aruji shu, su','主','main, master','ぬし、おも、あるじ','シュ、ス','https://app.kanjialive.com/主',7,'2019-11-15 02:23:35',497,'⼂','ten','てん','dot',5,0,0,1),('serve, do tsuka, tsukaeru shi, ji','仕','serve, do','つか','シ、ジ','https://app.kanjialive.com/仕',5,'2019-11-12 07:37:59',498,'⺅','ninben','にんべん','person ',5,0,0,1),('other n-a ta','他','other','n/a','タ','https://app.kanjialive.com/他',7,'2019-11-12 10:34:53',499,'⺅','ninben','にんべん','person ',5,0,0,1),('substitute, generation, charge kawaru, kawari, kaeru, yo, shiro, ka dai, tai','代','substitute, generation, charge','か、よ、しろ','ダイ、タイ','https://app.kanjialive.com/代',3,'2019-11-11 06:44:43',500,'⺅','ninben','にんべん','person ',5,0,0,1),('copy utsu, utsusu, utsuru sha','写','copy','うつ','シャ','https://app.kanjialive.com/写',3,'2019-11-11 02:24:27',501,'⼍','wakanmuri','わかんむり','cover, crown',5,0,0,1),('go away, leave sa, saru kyo, ko','去','go away, leave','さ','キョ、コ','https://app.kanjialive.com/去',5,'2019-11-12 07:39:30',502,'⼛','mu','む','private, Katakana Mu',5,0,0,1),('number, designation, sign n-a gou','号','number, designation, sign','n/a','ゴウ','https://app.kanjialive.com/号',7,'2019-11-12 10:37:34',503,'⼝','kuchi','くち','mouth',5,0,0,1),('center, middle n-a ou','央','center, middle','n/a','オウ','https://app.kanjialive.com/央',7,'2019-11-12 10:37:43',504,'⼤','dai','だい','large, big',5,0,0,1),('flat, calm tai, hiratai, taira, hira hei, byou','平','flat, calm','たい、ひら','ヘイ、ビョウ','https://app.kanjialive.com/平',7,'2019-11-12 07:33:40',505,'⼲','kan','かん','to dry, shield',5,0,0,1),('strike, hit utsu, uchi da','打','strike, hit','う','ダ','https://app.kanjialive.com/打',7,'2019-11-14 07:40:33',506,'⺘','tehen','てへん','hand',5,0,0,1),('ice koori, hi hyou','氷','ice','こおり、ひ','ヒョウ','https://app.kanjialive.com/氷',7,'2019-11-16 12:32:11',507,'⽔','mizu','みず','water',5,0,0,1),('character aza ji','字','character','あざ','ジ','https://app.kanjialive.com/字',7,'2019-11-17 04:40:57',508,'⼧','ukanmuri','うかんむり','roof, house',6,0,0,1),('year toshi nen','年','year','とし','ネン','https://app.kanjialive.com/年',7,'2019-11-16 12:32:14',509,'⼲','kan','かん','to dry, shield',6,0,0,1),('early, quick haya, hayai, hayamaru, hayameru, hayaku sou','早','early, quick','はや','ソウ','https://app.kanjialive.com/早',5,'2019-11-09 04:15:02',510,'⽇','hi','ひ','sun, day, time',6,0,1,1),('gas, spirit n-a ki, ke','気','gas, spirit','n/a','キ、ケ','https://app.kanjialive.com/気',7,'2019-11-16 03:35:31',511,'⽓','kigamae','きがまえ','steam, air',6,0,0,1),('hundred n-a hyaku','百','hundred','n/a','ヒャク','https://app.kanjialive.com/百',7,'2019-11-17 04:41:34',512,'⽩','shiro','しろ','white',6,0,0,1),('bamboo take chiku','竹','bamboo','たけ','チク','https://app.kanjialive.com/竹',7,'2019-11-16 03:35:26',513,'⽵','take','たけ','bamboo',6,0,0,1),('thread ito shi','糸','thread','いと','シ','https://app.kanjialive.com/糸',7,'2019-11-17 07:44:56',514,'⽷','ito','いと','thread',6,0,0,1),('ear mimi ji','耳','ear','みみ','ジ','https://app.kanjialive.com/耳',7,'2019-11-16 12:32:18',515,'⽿','mimi','みみ','ear',6,0,0,1),('insect, bug mushi chuu','虫','insect, bug','むし','チュウ','https://app.kanjialive.com/虫',7,'2019-11-16 12:32:20',516,'⾍','mushi','むし','worm, insect, bug',6,0,0,1),('flower hana ka','花','flower','はな','カ','https://app.kanjialive.com/花',7,'2019-11-16 03:35:34',517,'⺾','kusakanmuri','くさかんむり','grass',7,0,0,1),('village mura son','村','village','むら','ソン','https://app.kanjialive.com/村',7,'2019-11-17 04:41:16',518,'','kihen','きへん','tree, wood',7,0,0,1),('rest yasu, yasumu, yasumi, yasumeru kyuu','休','rest','やす','キュウ','https://app.kanjialive.com/休',7,'2019-11-16 03:35:24',519,'⺅','ninben','にんべん','person ',6,0,0,1),('ahead saki sen','先','ahead','さき','セン','https://app.kanjialive.com/先',7,'2019-11-16 03:35:30',520,'⼉','hitoashi','ひとあし','human legs',6,0,0,1),('name na mei, myou','名','name','な','メイ、ミョウ','https://app.kanjialive.com/名',7,'2019-11-17 04:41:11',521,'⼝','kuchi','くち','mouth',6,0,0,1),('woods, forest hayashi rin','林','woods, forest','はやし','リン','https://app.kanjialive.com/林',2,'2019-11-09 07:37:44',522,'','kihen','きへん','tree, wood',8,0,1,1),('sky, air, empty sora, a, kara, muna, aku, aki, akeru, kara, munashii, munashisa kuu','空','sky, air, empty','そら、あ、から、むな','クウ','https://app.kanjialive.com/空',3,'2019-11-12 00:06:51',523,'','anakanmuri','あなかんむり','hole, cave',8,0,0,1),('metal, gold, money kane, kana kin, kon','金','metal, gold, money','かね、かな','キン、コン','https://app.kanjialive.com/金',5,'2019-11-15 15:48:21',524,'⾦','kane','かね','metal, gold, mineral',8,0,0,1),('rain ame, ama u','雨','rain','あめ、あま','ウ','https://app.kanjialive.com/雨',3,'2019-11-11 06:44:46',525,'⾬','ame','あめ','rain',8,0,0,1),('blue ao, aoi sei, shou','青','blue','あお','セイ、ショウ','https://app.kanjialive.com/青',3,'2019-11-13 07:44:37',526,'⻘','ao','あお','blue, green',8,0,0,1),('grass kusa sou','草','grass','くさ','ソウ','https://app.kanjialive.com/草',5,'2019-11-15 15:50:03',527,'⺾','kusakanmuri','くさかんむり','grass',9,0,0,1),('sound oto, ne on, non, in','音','sound','おと、ね','オン、ノン、イン','https://app.kanjialive.com/音',3,'2019-11-12 00:06:54',528,'⾳','oto','おと','sound, noise',9,0,0,1),('school n-a kou','校','school','n/a','コウ','https://app.kanjialive.com/校',3,'2019-11-11 02:23:38',529,'','kihen','きへん','tree, wood',10,0,0,1),('forest mori shin','森','forest','もり','シン','https://app.kanjialive.com/森',5,'2019-11-15 15:49:15',530,'⽊','ki','き','tree, wood',12,0,0,1),('man otoko dan, nan','男','man','おとこ','ダン、ナン','https://app.kanjialive.com/男',3,'2019-11-13 07:44:35',531,'⽥','ta','た','rice paddy',7,0,0,1),('town machi chou','町','town','まち','チョウ','https://app.kanjialive.com/町',5,'2019-11-15 15:49:41',532,'','tahen','たへん','rice paddy',7,0,0,1),('see mi, miru, mieru, miseru ken','見','see','み','ケン','https://app.kanjialive.com/見',5,'2019-11-15 15:49:21',533,'⾒','miru','みる','to see',7,0,0,1),('shellfish, shell kai n-a','貝','shellfish, shell','かい','','https://app.kanjialive.com/貝',3,'2019-11-11 02:23:41',534,'⾙','kai','かい','shell, property, wealth',7,0,0,1),('red aka, akai, akaramu, akarameru seki, shaku','赤','red','あか','セキ、シャク','https://app.kanjialive.com/赤',3,'2019-11-11 02:22:03',535,'⾚','aka','あか','red',7,0,0,1),('foot, suffice, add ashi, ta, taru, tariru, tasu soku','足','foot, suffice, add','あし、た','ソク','https://app.kanjialive.com/足',5,'2019-11-15 15:49:31',536,'⾜','ashi','あし','foot, leg',7,0,0,1),('vehicle, wheel, car kuruma sha','車','vehicle, wheel, car','くるま','シャ','https://app.kanjialive.com/車',5,'2019-11-15 15:48:29',537,'⾞','kuruma','くるま','vehicle, wheel, car',7,0,0,1),('study, educational, institution mana, manabu gaku','学','study, educational, institution','まな','ガク','https://app.kanjialive.com/学',3,'2019-11-11 02:24:39',538,'⼦','ko','こ','child, son',8,0,0,1),('discuss, legislative body, deliberation n-a gi','議','discuss, legislative body, deliberation','n/a','ギ','https://app.kanjialive.com/議',3,'2019-11-13 07:44:33',539,'','gonben','ごんべん','words, to speak, say',20,0,0,1),('compete kisou, seru, kiso, se kyou, kei','競','compete','きそ、せ','キョウ、ケイ','https://app.kanjialive.com/競',3,'2019-11-13 07:44:49',540,'⽴','tatsu','たつ','to stand',20,0,0,1),('wish, ask a favor, request nega, negau gan','願','wish, ask a favor, request','ねが','ガン','https://app.kanjialive.com/願',1,'2019-11-10 04:33:29',541,'⾴','oogai','おおがい','head, page',19,0,1,1),('branch eda shi','枝','branch','えだ','シ','https://app.kanjialive.com/枝',3,'2019-11-13 04:41:56',542,'','kihen','きへん','tree, wood',8,0,0,1),('pond ike chi','池','pond','いけ','チ','https://app.kanjialive.com/池',3,'2019-11-13 07:44:58',543,'⺡','sanzui','さんずい','water',6,0,0,1),('manufacture, construction n-a kou, ku','工','manufacture, construction','n/a','コウ、ク','https://app.kanjialive.com/工',3,'2019-11-12 00:06:24',544,'⼯','takumi','たくみ','work, carpenter, skill',3,0,0,1),('day of the week n-a you','曜','day of the week','n/a','ヨウ','https://app.kanjialive.com/曜',3,'2019-11-13 07:44:20',545,'','hihen','ひへん','sun, day, time',18,0,0,1),('head atama, kashira tou, zu, to','頭','head','あたま、かしら','トウ、ズ、ト','https://app.kanjialive.com/頭',3,'2019-11-13 04:41:41',546,'⾴','oogai','おおがい','head, page',16,0,0,1),('face kao gan','顔','face','かお','ガン','https://app.kanjialive.com/顔',2,'2019-11-09 06:45:30',547,'⾴','oogai','おおがい','head, page',18,0,1,1),('drug, medicine kusuri yaku','薬','drug, medicine','くすり','ヤク','https://app.kanjialive.com/薬',3,'2019-11-13 04:41:49',548,'⺾','kusakanmuri','くさかんむり','grass',16,0,0,1),('put in order, organize, prepared totono, totonoeru, totonou sei','整','put in order, organize, prepared','ととの','セイ','https://app.kanjialive.com/整',2,'2019-11-12 07:44:46',549,'⺙','bokuzukuri','ぼくづくり','activity, to strike, hit',16,0,0,1),('bridge hashi kyou','橋','bridge','はし','キョウ','https://app.kanjialive.com/橋',3,'2019-11-13 07:44:54',550,'','kihen','きへん','tree, wood',16,0,0,1),('public building tate kan','館','public building','たて','カン','https://app.kanjialive.com/館',3,'2019-11-13 04:41:54',551,'⻟','shokuhen','しょくへん','food, to eat',16,0,0,1),('title, topic, problem n-a dai','題','title, topic, problem','n/a','ダイ','https://app.kanjialive.com/題',3,'2019-11-13 15:48:10',552,'⾴','oogai','おおがい','head, page',18,0,0,1),('internal organ n-a zou','臓','internal organ','n/a','ゾウ','https://app.kanjialive.com/臓',2,'2019-11-11 00:06:08',553,'','nikuzuki','にくづき','meat, flesh',19,0,0,1),('mirror, optical instrument kagami kyou','鏡','mirror, optical instrument','かがみ','キョウ','https://app.kanjialive.com/鏡',2,'2019-11-11 00:06:57',554,'','kanehen','かねへん','metal, gold, mineral',19,0,0,1),('test n-a ken','験','test','n/a','ケン','https://app.kanjialive.com/験',2,'2019-11-12 04:41:07',555,'','umahen','うまへん','horse',18,0,0,1);
/*!40000 ALTER TABLE `kanji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary` (
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
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
INSERT INTO `vocabulary` VALUES (157,'工場（こうじょう）','factory',15,'2019-11-19 09:23:53',0,0,1,1),(156,'市長（しちょう）','mayor',15,'2019-11-19 09:23:23',0,0,1,1),(155,'市役所（しやくしょ）','city hall, town hall',15,'2019-11-19 09:24:11',0,0,1,1),(154,'コップ','cup, glass',15,'2019-11-19 09:23:32',0,0,1,1),(180,'おなかがすきました','I\'m hungry',15,'2019-11-21 08:22:33',0,0,1,1),(153,'お皿（おさら）','plate, dish',15,'2019-11-19 09:23:29',0,0,1,1),(165,'作り方（つくりかた）','how to make',15,'2019-11-21 08:22:28',0,0,1,1),(164,'~方（～かた）','way to ~, method of ~',15,'2019-11-19 09:23:24',0,0,1,1),(163,'見学（けんがく）','study tour',15,'2019-11-19 09:23:31',0,0,1,1),(166,'相撲（すもう）','sumo',15,'2019-11-21 08:22:49',0,0,1,1),(167,'大学院（だいがくいん）','graduate school',15,'2019-11-21 08:24:23',0,0,1,1),(168,'工学（こうがく）','engineering',15,'2019-11-19 09:22:52',0,0,1,1),(169,'将来（しょうらい）','future',15,'2019-11-19 15:50:29',0,0,1,1),(170,'返します（かえします）','to return',15,'2019-11-19 09:22:48',0,0,1,1),(171,'迎えます（むかえます）','welcome, meet',15,'2019-11-19 15:50:17',0,0,1,1),(172,'持ちます（もちます）','hold, carry, possess',15,'2019-11-21 08:22:58',0,0,1,1),(173,'手伝います（てつだいます）','help, assist',15,'2019-11-19 09:23:06',0,0,1,1),(174,'洗います（あらいます）','wash',15,'2019-11-19 09:23:50',0,0,1,1),(175,'使います（つかいます）','use',15,'2019-11-19 09:24:03',0,0,1,1),(176,'欲しい（ほしい）','to want',15,'2019-11-19 09:22:59',0,0,1,1),(177,'痛い（いたい）','painful',15,'2019-11-19 15:50:20',0,0,1,1),(178,'ただいま','I\'m home',15,'2019-11-19 09:23:38',0,0,1,1),(179,'布団（ふとん）','futon',15,'2019-11-19 15:50:18',0,0,1,1),(181,'のどが渇きました（のどがかわきました）','I\'m thirsty',15,'2019-11-21 08:24:19',0,0,1,1),(182,'疲れました（つかれました）','I\'m tired',15,'2019-11-21 08:23:53',0,0,1,1),(183,'彼 (かれ)','boyfriend',15,'2019-11-21 08:22:52',0,0,1,1),(184,'彼女（かのじょ）','girlfriend, she',15,'2019-11-21 08:23:26',0,0,1,1),(185,'料金（りょうきん）','rate, charge',15,'2019-11-19 09:22:57',0,0,1,1),(186,'生け花（いけばな）','flower arrangement',15,'2019-11-19 09:23:01',0,0,1,1),(187,'目覚まし時計（めざましどけい）','alarm clock',15,'2019-11-21 08:24:00',0,0,1,1),(188,'歯（は）','tooth',15,'2019-11-19 09:23:55',0,0,1,1),(189,'曲（きょく）','piece of music',15,'2019-11-19 09:23:26',0,0,1,1),(190,'待ちます（まちます）','wait',15,'2019-11-19 09:23:45',0,0,1,1),(191,'死にます（しにます）','die',15,'2019-11-19 09:24:04',0,0,1,1),(192,'弾きます（ひきます）','to play an instrument',15,'2019-11-21 08:24:03',0,0,1,1),(193,'座ります（すわります）','to sit',15,'2019-11-21 08:24:06',0,0,1,1),(194,'立ちます（たちます）','stand up',15,'2019-11-19 09:23:36',0,0,1,1),(195,'払います（はらいます）','to pay',15,'2019-11-21 08:23:48',0,0,1,1),(197,'磨きます（みがきます）','to brush, polish',10,'2019-11-11 04:49:59',0,0,1,1),(200,'乗ります（のります）','to get on',7,'2019-11-13 07:32:17',0,0,1,1),(199,'消します（けします）','turn off, extinguish',7,'2019-11-13 07:32:09',0,0,1,1),(196,'浴びます（あびます）','take (a shower)',15,'2019-11-19 09:23:43',0,0,1,1),(198,'出かけます（でかけます）','go out',7,'2019-11-13 07:32:20',0,0,1,1),(201,'降ります（おります）','to get off',7,'2019-11-13 07:32:14',0,0,1,1),(202,'始めます（はじめます）','to begin, start',7,'2019-11-13 07:32:22',0,0,1,1),(203,'見せます（みせます）','to show',7,'2019-11-13 07:32:16',0,0,1,1),(204,'載せます（のせます）','to put',7,'2019-11-14 07:29:01',0,0,1,1),(206,'自分で（じぶんで）','by oneself',7,'2019-11-13 07:32:11',0,0,1,1),(207,'雑誌（ざっし）','magazine',7,'2019-11-15 02:19:25',0,0,1,1),(208,'パソコン','personal computer',7,'2019-11-15 02:19:27',0,0,1,1),(209,'傘（かさ）','umbrella',7,'2019-11-15 02:19:31',0,0,1,1),(210,'かばん','bag',7,'2019-11-15 02:19:35',0,0,1,1),(211,'財布（さいふ）','wallet, purse',7,'2019-11-15 02:19:38',0,0,1,1),(212,'新聞（しんぶん）','newspaper',7,'2019-11-15 02:19:40',0,0,1,1),(213,'砂糖（さとう）','sugar',7,'2019-11-15 02:19:43',0,0,1,1),(214,'塩（しお）','salt',7,'2019-11-15 02:19:45',0,0,1,1),(215,'なべ','pot, pan',6,'2019-11-11 15:29:44',0,0,1,1),(216,'参考書（さんこうしょ）','reference book',6,'2019-11-11 15:29:49',0,0,1,1),(217,'資料（しりょう）','data, materials',6,'2019-11-11 15:29:51',0,0,1,1),(218,'推薦状（すいせんじょう）','letter of recommendation',6,'2019-11-11 15:29:57',0,0,1,1),(219,'ごみ','rubbish, trash',6,'2019-11-11 15:29:59',0,0,1,1),(220,'台所（だいどころ）','kitchen',6,'2019-11-11 15:30:02',0,0,1,1),(221,'住所（じゅうしょ）','address',6,'2019-11-11 15:30:05',0,0,1,1),(222,'急ぐ（いそぐ）','to hurry',6,'2019-11-12 07:31:56',0,0,1,1),(223,'集める（あつめる）','to collect, gather',6,'2019-11-11 07:40:04',0,0,1,1),(224,'切る（きる）','to cut',6,'2019-11-11 15:30:06',0,0,1,1),(225,'入れる（いれる）','to put in',6,'2019-11-11 15:30:08',0,0,1,1),(226,'煮る（にる）','to boil, cook',6,'2019-11-11 15:30:10',0,0,1,1),(227,'並べる（ならべる）','to arrange, align',6,'2019-11-11 15:30:12',0,0,1,1),(228,'取る（とる）','to pass, take',6,'2019-11-11 15:30:13',0,0,1,1),(229,'言う（いう）','to say',6,'2019-11-11 15:30:15',0,0,1,1),(230,'修理する（しゅうりする）','to repair',6,'2019-11-12 07:32:06',0,0,1,1),(231,'上がる（あがる）','to come into, go up',6,'2019-11-12 06:24:19',0,0,1,1),(232,'履く（はく）','to put on',6,'2019-11-12 06:24:20',0,0,1,1),(233,'捨てる（すてる）','to throw away',6,'2019-11-12 06:24:32',0,0,1,1),(234,'運ぶ（はこぶ）','to carry to',6,'2019-11-12 06:24:37',0,0,1,1),(235,'危ない（あぶない）','dangerous',6,'2019-11-12 06:24:33',0,0,1,1),(236,'ほかの','other',6,'2019-11-12 07:31:51',0,0,1,1),(237,'もう一度（もういちど）','once more, again',6,'2019-11-12 07:32:00',0,0,1,1),(238,'すぐ','right now',6,'2019-11-12 07:32:02',0,0,1,1),(239,'失礼します（しつれいします）','excuse me I enter',6,'2019-11-12 07:31:54',0,0,1,1),(240,'ふく','to wipe',6,'2019-11-16 04:27:18',0,0,1,1),(241,'菓子（かし）','sweets, cake, snack',6,'2019-11-16 04:27:20',1,0,1,1),(242,'中学生（ちゅうがくせい）','junior high school student',6,'2019-11-16 04:27:23',0,0,1,1),(243,'美術館（びじゅつかん）','art museum',6,'2019-11-16 04:27:31',0,0,1,1),(244,'服（ふく）','clothes',6,'2019-11-16 04:27:33',0,0,1,1),(245,'会社（かいしゃ）','company',6,'2019-11-16 04:27:35',0,0,1,1),(246,'場所（ばしょ）','place',6,'2019-11-16 04:27:38',0,0,1,1),(247,'番号（ばんごう）','number',6,'2019-11-16 04:27:42',0,0,1,1),(248,'電話番号（でんわばんごう）','telephone number',6,'2019-11-16 04:27:46',0,0,1,1),(249,'かめ','turtle',6,'2019-11-16 04:27:47',0,0,1,1),(250,'しろ（城）','castle',6,'2019-11-16 04:27:49',0,0,1,1),(251,'お姫様（おひめさま）','princess',6,'2019-11-16 04:27:53',0,0,1,1),(252,'踊り（おどり）','dance',6,'2019-11-16 04:28:12',0,0,1,1),(253,'祖母（そぼ）','my grandmother',6,'2019-11-16 04:27:16',0,0,1,1),(254,'祖父（そふ）','my grandfather',6,'2019-11-16 04:28:18',0,0,1,1),(255,'おばあさん','grandmother',6,'2019-11-16 04:28:21',0,0,1,1),(256,'おじいさん','grandfather',6,'2019-11-16 04:28:22',0,0,1,1),(257,'翻訳（ほんやく）','translation',6,'2019-11-16 04:28:27',0,0,1,1),(258,'機械（きかい）','machine',6,'2019-11-16 04:28:30',0,0,1,1),(259,'仲（なか）','relationship',6,'2019-11-16 04:28:32',0,0,1,1),(260,'止める（とめる）','to stop',6,'2019-11-16 04:28:34',0,0,1,1),(261,'吸う（すう）','to smoke',6,'2019-11-16 04:28:36',0,0,1,1),(262,'結婚する（けっこんする）','to get married',6,'2019-11-16 04:28:38',0,0,1,1),(264,'知る（しる）','to know',6,'2019-11-16 04:28:41',0,0,1,1),(263,'住む（すむ）','to live',6,'2019-11-16 04:28:40',0,0,1,1),(265,'聞く（きく）','to ask',6,'2019-11-16 04:28:42',0,0,1,1),(266,'助ける（たすける）','to rescue, help',5,'2019-11-10 07:48:32',0,0,1,1),(267,'乗り換える（のりかえる）','to transfer',5,'2019-11-13 02:20:29',0,0,1,1),(268,'退職する（たいしょくする）','to retire, resign',6,'2019-11-16 07:48:35',0,0,1,1),(269,'触る（さわる）','to touch',5,'2019-11-13 02:21:09',0,0,1,1),(270,'焼く（やく）','to toast, bake',6,'2019-11-16 07:48:37',0,0,1,1),(271,'持って来る（もってくる）','to bring',6,'2019-11-16 07:48:39',0,0,1,1),(272,'持って行く（もっていく）','to take',6,'2019-11-16 07:48:50',0,0,1,1),(273,'役に立つ（やくにたつ）','to be useful',5,'2019-11-13 02:21:10',0,0,1,1),(274,'どうやって','how, in what way',6,'2019-11-16 07:48:53',0,0,1,1),(275,'あのう','well, let me see',5,'2019-11-10 10:24:37',0,0,1,1),(276,'湯（ゆ）','bathroom',6,'2019-11-16 07:48:47',0,0,1,1),(284,'えさ','feed, animal food',4,'2019-11-14 04:23:45',0,0,1,1),(283,'はと','pigeon',4,'2019-11-14 04:23:41',0,0,1,1),(277,'経営する（けいえいする）','to manage, operate',4,'2019-11-11 07:28:57',0,0,1,1),(288,'試験（しけん）','examination',4,'2019-11-14 04:24:07',0,0,1,1),(285,'池（いけ）','pond',4,'2019-11-14 04:23:47',0,0,1,1),(286,'枝（えだ）','branch',4,'2019-11-14 04:23:49',0,0,1,1),(287,'税金（ぜいきん）','tax',4,'2019-11-14 04:24:04',0,0,1,1),(289,'作文（さくぶん）','composition, essay',4,'2019-11-14 04:24:12',0,0,1,1),(290,'王様（おうさま）','king',4,'2019-11-14 04:24:24',0,0,1,1),(291,'高校（こうこう）','high school',4,'2019-11-14 04:24:26',0,0,1,1),(292,'電源（でんげん）','power switch',4,'2019-11-14 04:24:29',0,0,1,1),(293,'試合（しあい）','match, game',4,'2019-11-14 04:24:38',0,0,1,1),(294,'栓（せん）','plug, stopper',4,'2019-11-14 04:24:40',0,0,1,1),(295,'タオル','towel',4,'2019-11-14 04:24:50',0,0,1,1),(296,'泣く（なく）','to cry',4,'2019-11-14 04:24:55',0,0,1,1),(297,'笑う（わらう）','to laugh, smile',4,'2019-11-14 04:25:04',0,0,1,1),(298,'押す（おす）','to push',4,'2019-11-14 04:25:11',0,0,1,1),(299,'怒る（おこる）','to get angry',4,'2019-11-14 04:25:17',0,0,1,1),(300,'やる','to give food',4,'2019-11-14 04:25:34',0,0,1,1),(301,'折る（おる）','to break, fold',4,'2019-11-14 04:25:56',0,0,1,1),(302,'運転する（うんてんする）','to drive',4,'2019-11-14 04:25:58',0,0,1,1),(303,'平日（へいじつ）','weekday',3,'2019-11-10 07:29:05',0,0,1,1),(304,'週末（しゅうまつ）','weekend',3,'2019-11-11 02:19:08',0,0,1,1),(305,'日曜日（にちようび）','sunday',3,'2019-11-10 07:29:12',0,0,1,1),(306,'月曜日（げつようび）','monday',3,'2019-11-11 02:19:16',0,0,1,1),(307,'火曜日（かようび）','tuesday',3,'2019-11-11 02:19:47',0,0,1,1),(308,'水曜日（すいようび）','wednesday',3,'2019-11-10 07:29:22',0,0,1,1),(309,'木曜日（もくようび）','thursday',3,'2019-11-11 02:19:51',0,0,1,1),(310,'金曜日（きんようび）','friday',3,'2019-11-10 07:30:32',0,0,1,1),(311,'土曜日（どようび）','saturday',3,'2019-11-11 02:19:07',0,0,1,1),(313,'謝る（あやまる）','to apologize',3,'2019-11-11 02:19:58',0,0,1,1),(312,'並ぶ（ならぶ）','to stand in line',3,'2019-11-11 02:19:55',0,0,1,1),(314,'やる','to play sport, do',3,'2019-11-11 02:20:04',0,0,1,1),(315,'卒業する（そつぎょうする）','to graduate',3,'2019-11-11 02:20:22',0,0,1,1),(316,'保存する（ほぞんする）','to save, preserve',3,'2019-11-13 04:27:06',0,0,1,1),(317,'送信する（そうしんする）','to send a message',2,'2019-11-10 04:27:09',0,0,1,1),(318,'削除する（さくじょする）','to delete',3,'2019-11-13 04:26:18',0,0,1,1),(319,'登録する（とうろくする）','to register, enroll',3,'2019-11-13 04:26:29',0,0,1,1),(320,'かける','to pour, sprinkle',3,'2019-11-13 04:26:32',0,0,1,1),(321,'抜く（ぬく）','to pull out',3,'2019-11-13 04:26:34',0,0,1,1),(322,'出る（でる）','to leave, go out',3,'2019-11-13 04:26:38',0,0,1,1),(323,'頑張る（がんばる）','do one\'s best, hold one',3,'2019-11-13 04:26:41',0,0,1,1),(324,'無理をする（むりをする）','to overdo it',3,'2019-11-13 04:26:45',0,0,1,1),(325,'全部（ぜんぶ）','all, everything',3,'2019-11-13 04:26:47',0,0,1,1),(326,'おめでとうございます','congratulations',3,'2019-11-13 04:26:50',0,0,1,1),(348,'理科（りか）','science',2,'2019-11-12 04:23:40',0,0,1,1),(327,'受ける（うける）','to take an examination, receive',2,'2019-11-10 04:27:00',0,0,1,1),(347,'音楽（おんがく）','music',2,'2019-11-12 04:23:37',0,0,1,1),(349,'算数（さんすう）','arithmetic',2,'2019-11-12 04:25:45',0,0,1,1),(350,'歴史（れきし）','history',1,'2019-11-10 04:26:01',0,0,1,1),(351,'地理（ちり）','geography',1,'2019-11-10 04:26:03',0,0,1,1),(328,'歌舞伎（かぶき）','kabuki',2,'2019-11-12 04:20:07',0,0,1,1),(329,'盆踊り（ぼんおどり）','bon festival dance',2,'2019-11-12 04:20:14',0,0,1,1),(330,'パンフレット','pamphlet',2,'2019-11-12 04:20:22',0,0,1,1),(331,'引っ越し（ひっこし）','moving',2,'2019-11-12 04:20:27',0,0,1,1),(332,'水道（すいどう）','water supply',2,'2019-11-12 04:20:33',0,0,1,1),(333,'論文（ろんぶん）','thesis',2,'2019-11-12 04:21:37',0,0,1,1),(334,'忘れ物（わすれもの）','something left behind',2,'2019-11-12 04:21:51',0,0,1,1),(335,'恋人（こいびと）','sweetheart',2,'2019-11-12 04:21:54',0,0,1,1),(336,'握手（あくしゅ）','handshake',2,'2019-11-12 04:22:03',0,0,1,1),(337,'探す（さがす）','to look for',2,'2019-11-12 04:22:09',1,0,1,1),(338,'荷造りする（にづくりする）','to pack',2,'2019-11-12 04:22:15',0,0,1,1),(339,'連絡する（れんらくする）','to contact',2,'2019-11-12 04:22:23',0,0,1,1),(340,'気がつく（きがつく）','to notice',2,'2019-11-12 04:22:55',0,0,1,1),(341,'出す（だす）','to submit, take out',2,'2019-11-12 04:22:58',0,0,1,1),(342,'失敗する（しっぱいする）','to fail',2,'2019-11-12 04:23:08',0,0,1,1),(343,'別れる（わかれる）','to separate',1,'2019-11-10 04:23:11',0,0,1,1),(344,'完成する（かんせいする）','to complete',1,'2019-11-10 04:23:12',0,0,1,1),(345,'思い出す（おもいだす）','to remember, recollect',2,'2019-11-12 04:23:18',0,0,1,1),(346,'楽しみにする（たのしみにする）','to look forward to',2,'2019-11-12 04:23:34',0,0,1,1);
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-11  0:50:52
