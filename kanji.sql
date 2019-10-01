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
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanji`
--

LOCK TABLES `Kanji` WRITE;
/*!40000 ALTER TABLE `Kanji` DISABLE KEYS */;
INSERT INTO `Kanji` VALUES ('one hito ichi','一','one','ひと','イチ','https://app.kanjialive.com/一',5,'2019-08-05 05:29:07',349,'⼀','ichi','いち','one, horizontal stroke',1,1,1,1),('two futa, futatsu, futari ni','二','two','ふた','ニ','https://app.kanjialive.com/二',5,'2019-08-05 05:29:07',350,'⼆','ni','に','two',2,1,1,1),('three mi, mikka, mittsu san','三','three','み','サン','https://app.kanjialive.com/三',5,'2019-08-05 05:29:07',351,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('four yo, yon shi','四','four','よ、よん','シ','https://app.kanjialive.com/四',5,'2019-08-05 05:29:07',352,'⼞','kunigamae','くにがまえ','border, territorial boundaries',5,1,1,1),('five itsu, itsutsu go','五','five','いつ','ゴ','https://app.kanjialive.com/五',5,'2019-08-05 05:29:07',353,'⼆','ni','に','two',4,1,1,1),('six mu, mui, muttsu roku','六','six','む、むい','ロク','https://app.kanjialive.com/六',5,'2019-08-05 05:29:07',354,'⼋','hachi','はち','eight',4,1,1,1),('seven nana, nano, nanatsu shichi','七','seven','なな、なの','シチ','https://app.kanjialive.com/七',5,'2019-08-05 05:29:07',355,'⼀','ichi','いち','one, horizontal stroke',2,1,1,1),('eight ya, you, yattsu hachi','八','eight','や、よう','ハチ','https://app.kanjialive.com/八',3,'2019-07-25 11:09:52',356,'⼋','hachi','はち','eight',2,0,1,1),('nine kokono, kokonotsu kyuu, ku','九','nine','ここの','キュウ、ク','https://app.kanjialive.com/九',5,'2019-08-05 05:29:07',357,'⼄','otsu','おつ','the second ',2,1,1,1),('ten too, to juu','十','ten','とお、と','ジュウ','https://app.kanjialive.com/十',5,'2019-08-05 05:29:07',358,'⼗','juu','じゅう','ten',2,1,1,1),('zero n-a rei','零','zero','n/a','レイ','https://app.kanjialive.com/零',5,'2019-08-05 05:29:07',359,'⻗','amekanmuri','あめかんむり','rain',13,1,1,1),('human being, person hito jin, nin','人','human being, person','ひと','ジン、ニン','https://app.kanjialive.com/人',5,'2019-08-05 05:29:07',360,'⼈','hito','ひと','person',2,1,1,1),('enter, put in i, hai, iri, iru, hairu, ireru, ire nyuu','入','enter, put in','い、はい','ニュウ','https://app.kanjialive.com/入',5,'2019-08-05 05:29:07',361,'⼊','iru','いる','to enter',2,1,1,1),('up ue, uwa, kami, a, ageru, agaru, nobo, noboru jou, shou','上','up','うえ、うわ、かみ、あ、のぼ','ジョウ、ショウ','https://app.kanjialive.com/上',5,'2019-08-05 05:29:07',362,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('down shita, shimo, sa, sagaru, sageru, kuda, kudaru, kudasai, o, orosu, oriru ka, ge','下','down','した、しも、さ、くだ、お','カ、ゲ','https://app.kanjialive.com/下',5,'2019-08-05 05:29:07',363,'⼀','ichi','いち','one, horizontal stroke',3,1,1,1),('thousand chi sen','千','thousand','ち','セン','https://app.kanjialive.com/千',5,'2019-08-05 05:29:07',364,'⼗','juu','じゅう','ten',3,1,1,1),('mouth kuchi kou, ku','口','mouth','くち','コウ、ク','https://app.kanjialive.com/口',5,'2019-08-05 05:29:07',365,'⼝','kuchi','くち','mouth',3,1,1,1),('power, force chikara ryoku, riki','力','power, force','ちから','リョク、リキ','https://app.kanjialive.com/力',5,'2019-08-05 05:29:07',366,'⼒','chikara','ちから','power',2,1,1,1),('soil, earth, ground tsuchi do, to','土','soil, earth, ground','つち','ド、ト','https://app.kanjialive.com/土',5,'2019-08-05 05:29:07',367,'⼟','tsuchi','つち','earth',3,1,1,1),('evening yuu seki','夕','evening','ゆう','セキ','https://app.kanjialive.com/夕',5,'2019-08-05 05:29:07',368,'⼣','yuube','ゆうべ','evening',3,1,1,1),('big oo, ookii dai, tai','大','big','おお','ダイ、タイ','https://app.kanjialive.com/大',5,'2019-08-05 05:29:07',369,'⼤','dai','だい','large, big',3,1,1,1),('woman onna, me jo, nyo, nyou','女','woman','おんな、め','ジョ、ニョ、ニョウ','https://app.kanjialive.com/女',5,'2019-08-05 05:29:07',370,'⼥','onna','おんな','woman',3,1,1,1),('child, noun suffix ko shi, su','子','child, noun suffix','こ','シ、ス','https://app.kanjialive.com/子',5,'2019-08-05 05:29:07',371,'⼦','ko','こ','child, son',3,1,1,1),('small chii, chiisai, ko, o shou','小','small','ちい、こ、お','ショウ','https://app.kanjialive.com/小',3,'2019-07-25 11:10:51',372,'⼩','shou','しょう','small',3,0,1,1),('mountain yama san','山','mountain','やま','サン','https://app.kanjialive.com/山',5,'2019-08-05 05:29:07',373,'⼭','yama','やま','mountain',3,1,1,1),('river kawa sen','川','river','かわ','セン','https://app.kanjialive.com/川',5,'2019-08-05 05:29:07',374,'川','sanbongawa','さんぼんがわ','river',3,1,1,1),('middle, in naka chuu','中','middle, in','なか','チュウ','https://app.kanjialive.com/中',5,'2019-08-05 05:29:07',375,'⼁','tatebou','たてぼう','vertical stroke',4,1,1,1),('circle, yen maru, marui en','円','circle, yen','まる','エン','https://app.kanjialive.com/円',5,'2019-08-05 05:29:07',376,'⼌ ','keigamae','けいがまえ','to enclose',4,1,1,1),('heaven ame, ama ten','天','heaven','あめ、あま','テン','https://app.kanjialive.com/天',5,'2019-08-05 05:29:07',377,'⼤','dai','だい','large, big',4,1,1,1),('hand te, ta shu, zu','手','hand','て、た','シュ、ズ','https://app.kanjialive.com/手',5,'2019-08-05 05:29:07',378,'⼿','te','て','hand',4,1,1,1),('letter, writings, sentence fumi bun, mon','文','letter, writings, sentence','ふみ','ブン、モン','https://app.kanjialive.com/文',5,'2019-08-05 05:29:07',379,'⽂','bun','ぶん','literature, letters',4,1,1,1),('day, sun, Japan hi, ka nichi, jitsu','日','day, sun, Japan','ひ、か','ニチ、ジツ','https://app.kanjialive.com/日',5,'2019-08-05 05:29:07',380,'⽇','hi','ひ','sun, day, time',4,1,1,1),('moon, month tsuki getsu, gatsu','月','moon, month','つき','ゲツ、ガツ','https://app.kanjialive.com/月',5,'2019-08-05 05:29:07',381,'⽉','tsuki','つき','moon, month, period',4,1,1,1),('tree, wood ki, ko boku, moku','木','tree, wood','き、こ','ボク、モク','https://app.kanjialive.com/木',5,'2019-08-05 05:29:07',382,'⽊','ki','き','tree, wood',4,1,1,1),('water mizu sui','水','water','みず','スイ','https://app.kanjialive.com/水',5,'2019-08-05 05:29:07',383,'⽔','mizu','みず','water',4,1,1,1),('fire hi ka','火','fire','ひ','カ','https://app.kanjialive.com/火',5,'2019-08-05 05:29:07',384,'⽕','hi','ひ','fire',4,1,1,1),('dog inu ken','犬','dog','いぬ','ケン','https://app.kanjialive.com/犬',5,'2019-08-05 05:29:07',385,'⽝','inu','いぬ','dog',4,1,1,1),('king n-a ou','王','king','n/a','オウ','https://app.kanjialive.com/王',5,'2019-08-05 05:29:07',386,'⽟','tama','たま','jewelry',4,1,1,1),('go out, put out de, da, deru, dasu shutsu, sui','出','go out, put out','で、だ','シュツ、スイ','https://app.kanjialive.com/出',5,'2019-08-05 05:29:07',387,'⼐','kannyou','かんにょう','container, open box',5,1,1,1),('right migi u, yuu','右','right','みぎ','ウ、ユウ','https://app.kanjialive.com/右',5,'2019-08-05 05:29:07',388,'⼝','kuchi','くち','mouth',5,1,1,1),('left hidari sa','左','left','ひだり','サ','https://app.kanjialive.com/左',5,'2019-08-05 05:29:07',389,'⼯','takumi','たくみ','work, carpenter, skill',5,1,1,1),('basis, book, this moto hon','本','basis, book, this','もと','ホン','https://app.kanjialive.com/本',3,'2019-07-25 08:01:12',390,'⽊','ki','き','tree, wood',5,0,1,1),('right, correct tada, tadashii, tadasu, masa, masani sei, shou','正','right, correct','ただ、まさ','セイ、ショウ','https://app.kanjialive.com/正',3,'2019-08-05 05:29:07',391,'⽌','tomeru','とめる','to stop',5,1,1,1),('gem, jewel, ball tama gyoku','玉','gem, jewel, ball','たま','ギョク','https://app.kanjialive.com/玉',3,'2019-08-05 05:29:07',392,'⽟','tama','たま','jewelry',5,1,1,1),('life, be born, student i, ikiru, u, umareru, umu, o, ha, haeru, hayasu, nama, ki sei, shou','生','life, be born, student','い、う、お、は、なま、き','セイ、ショウ','https://app.kanjialive.com/生',3,'2019-08-05 05:29:07',393,'⽣','umareru','うまれる','birth, to be born, live',5,1,1,1),('rice field ta den','田','rice field','た','デン','https://app.kanjialive.com/田',3,'2019-08-05 05:29:07',394,'⽥','ta','た','rice paddy',5,1,1,1),('white shiro, shira, shiroi haku, byaku','白','white','しろ、しら','ハク、ビャク','https://app.kanjialive.com/白',5,'2019-08-05 05:29:07',395,'⽩','shiro','しろ','white',5,1,1,1),('eye, item me, ma moku','目','eye, item','め、ま','モク','https://app.kanjialive.com/目',3,'2019-08-05 05:29:07',396,'⽬','me','め','eye',5,1,1,1),('stone ishi seki, shaku, koku','石','stone','いし','セキ、シャク、コク','https://app.kanjialive.com/石',3,'2019-08-05 05:29:07',397,'⽯','ishi','いし','stone',5,1,1,1),('stand, establish ta, tate, tatsu, tachi, tateru ritsu, ryuu','立','stand, establish','た、たて','リツ、リュウ','https://app.kanjialive.com/立',3,'2019-07-25 11:10:16',398,'⽴','tatsu','たつ','to stand',5,0,1,1),('rest yasu, yasumu, yasumi, yasumeru kyuu','休','rest','やす','キュウ','https://app.kanjialive.com/休',5,'2019-08-05 05:29:07',399,'⺅','ninben','にんべん','person ',6,1,1,1),('ahead saki sen','先','ahead','さき','セン','https://app.kanjialive.com/先',2,'2019-08-05 05:29:07',400,'⼉','hitoashi','ひとあし','human legs',6,1,1,1),('name na mei, myou','名','name','な','メイ、ミョウ','https://app.kanjialive.com/名',3,'2019-08-05 05:29:07',401,'⼝','kuchi','くち','mouth',6,1,1,1),('character aza ji','字','character','あざ','ジ','https://app.kanjialive.com/字',5,'2019-08-05 05:29:07',402,'⼧','ukanmuri','うかんむり','roof, house',6,1,1,1),('year toshi nen','年','year','とし','ネン','https://app.kanjialive.com/年',3,'2019-08-05 05:29:07',403,'⼲','kan','かん','to dry, shield',6,1,1,1),('early, quick haya, hayai, hayamaru, hayameru, hayaku sou','早','early, quick','はや','ソウ','https://app.kanjialive.com/早',3,'2019-08-05 05:29:07',404,'⽇','hi','ひ','sun, day, time',6,1,1,1),('gas, spirit n-a ki, ke','気','gas, spirit','n/a','キ、ケ','https://app.kanjialive.com/気',3,'2019-08-05 05:29:07',405,'⽓','kigamae','きがまえ','steam, air',6,1,1,1),('hundred n-a hyaku','百','hundred','n/a','ヒャク','https://app.kanjialive.com/百',3,'2019-08-05 05:29:07',406,'⽩','shiro','しろ','white',6,1,1,1),('bamboo take chiku','竹','bamboo','たけ','チク','https://app.kanjialive.com/竹',3,'2019-08-05 05:29:07',407,'⽵','take','たけ','bamboo',6,1,1,1),('thread ito shi','糸','thread','いと','シ','https://app.kanjialive.com/糸',3,'2019-08-05 05:29:07',408,'⽷','ito','いと','thread',6,1,1,1),('ear mimi ji','耳','ear','みみ','ジ','https://app.kanjialive.com/耳',5,'2019-08-05 05:29:07',409,'⽿','mimi','みみ','ear',6,1,1,1),('insect, bug mushi chuu','虫','insect, bug','むし','チュウ','https://app.kanjialive.com/虫',5,'2019-08-05 05:29:07',410,'⾍','mushi','むし','worm, insect, bug',6,1,1,1),('flower hana ka','花','flower','はな','カ','https://app.kanjialive.com/花',2,'2019-07-25 07:57:03',411,'⺾','kusakanmuri','くさかんむり','grass',7,0,1,1),('village mura son','村','village','むら','ソン','https://app.kanjialive.com/村',3,'2019-08-05 05:29:07',412,'','kihen','きへん','tree, wood',7,1,1,1),('man otoko dan, nan','男','man','おとこ','ダン、ナン','https://app.kanjialive.com/男',2,'2019-08-05 05:29:07',413,'⽥','ta','た','rice paddy',7,1,1,1),('town machi chou','町','town','まち','チョウ','https://app.kanjialive.com/町',2,'2019-08-05 05:29:07',414,'','tahen','たへん','rice paddy',7,1,1,1),('see mi, miru, mieru, miseru ken','見','see','み','ケン','https://app.kanjialive.com/見',2,'2019-07-25 07:56:33',415,'⾒','miru','みる','to see',7,0,1,1),('shellfish, shell kai n-a','貝','shellfish, shell','かい','','https://app.kanjialive.com/貝',3,'2019-08-05 05:29:07',416,'⾙','kai','かい','shell, property, wealth',7,1,1,1),('red aka, akai, akaramu, akarameru seki, shaku','赤','red','あか','セキ、シャク','https://app.kanjialive.com/赤',0,'2019-08-05 05:29:07',417,'⾚','aka','あか','red',7,1,1,1),('foot, suffice, add ashi, ta, taru, tariru, tasu soku','足','foot, suffice, add','あし、た','ソク','https://app.kanjialive.com/足',3,'2019-08-05 05:29:07',418,'⾜','ashi','あし','foot, leg',7,1,1,1),('vehicle, wheel, car kuruma sha','車','vehicle, wheel, car','くるま','シャ','https://app.kanjialive.com/車',3,'2019-08-05 05:29:07',419,'⾞','kuruma','くるま','vehicle, wheel, car',7,1,1,1),('study, educational, institution mana, manabu gaku','学','study, educational, institution','まな','ガク','https://app.kanjialive.com/学',-1,'2019-07-25 11:12:55',420,'⼦','ko','こ','child, son',8,1,1,1),('woods, forest hayashi rin','林','woods, forest','はやし','リン','https://app.kanjialive.com/林',0,'2019-08-05 05:29:07',421,'','kihen','きへん','tree, wood',8,1,1,1),('sky, air, empty sora, a, kara, muna, aku, aki, akeru, kara, munashii, munashisa kuu','空','sky, air, empty','そら、あ、から、むな','クウ','https://app.kanjialive.com/空',-1,'2019-07-25 11:12:55',422,'','anakanmuri','あなかんむり','hole, cave',8,1,1,1),('metal, gold, money kane, kana kin, kon','金','metal, gold, money','かね、かな','キン、コン','https://app.kanjialive.com/金',-1,'2019-07-25 11:10:55',423,'⾦','kane','かね','metal, gold, mineral',8,1,1,1),('rain ame, ama u','雨','rain','あめ、あま','ウ','https://app.kanjialive.com/雨',0,'2019-08-05 05:29:07',424,'⾬','ame','あめ','rain',8,1,1,1),('blue ao, aoi sei, shou','青','blue','あお','セイ、ショウ','https://app.kanjialive.com/青',-1,'2019-07-25 11:12:55',425,'⻘','ao','あお','blue, green',8,1,1,1),('grass kusa sou','草','grass','くさ','ソウ','https://app.kanjialive.com/草',-1,'2019-07-25 11:12:55',426,'⺾','kusakanmuri','くさかんむり','grass',9,1,1,1),('forest mori shin','森','forest','もり','シン','https://app.kanjialive.com/森',-1,'2019-07-25 11:10:55',427,'⽊','ki','き','tree, wood',12,1,1,1),('school n-a kou','校','school','n/a','コウ','https://app.kanjialive.com/校',-1,'2019-07-25 11:10:55',428,'','kihen','きへん','tree, wood',10,1,1,1),('sound oto, ne on, non, in','音','sound','おと、ね','オン、ノン、イン','https://app.kanjialive.com/音',-1,'2019-07-25 11:10:55',429,'⾳','oto','おと','sound, noise',9,1,1,1),('town subsection, miscellaneous counter, even number n-a chou, tei','丁','town subsection, miscellaneous counter, even number','n/a','チョウ、テイ','https://app.kanjialive.com/丁',-1,'2019-07-25 11:12:55',430,'⼀','ichi','いち','one, horizontal stroke',2,1,1,1),('in advance n-a yo','予','in advance','n/a','ヨ','https://app.kanjialive.com/予',-1,'2019-07-25 11:10:55',431,'⼅','hanebou','はねぼう','vertical stroke with a hook',4,1,1,1),('change into ba, bakeru, bakasu ka, ke','化','change into','ば','カ、ケ','https://app.kanjialive.com/化',-1,'2019-07-25 11:12:55',432,'⼔','saji','さじ','spoon',4,1,1,1),('district, ward n-a ku','区','district, ward','n/a','ク','https://app.kanjialive.com/区',-1,'2019-07-25 11:12:55',433,'⼕','hakogamae','はこがまえ','box',4,1,1,1),('counter, anti- so, soru, sorasu han, hon, tan','反','counter, anti-','そ','ハン、ホン、タン','https://app.kanjialive.com/反',-1,'2019-07-25 11:11:00',434,'⼜','mata','また','again, right hand',4,1,1,1),('world, era yo sei, se','世','world, era','よ','セイ、セ','https://app.kanjialive.com/世',-1,'2019-07-25 11:10:55',435,'⼀','ichi','いち','one, horizontal stroke',5,1,1,1),('main, master nushi, omo, omoni, aruji shu, su','主','main, master','ぬし、おも、あるじ','シュ、ス','https://app.kanjialive.com/主',-1,'2019-07-25 11:10:55',436,'⼂','ten','てん','dot',5,1,1,1),('serve, do tsuka, tsukaeru shi, ji','仕','serve, do','つか','シ、ジ','https://app.kanjialive.com/仕',-1,'2019-07-25 11:10:55',437,'⺅','ninben','にんべん','person ',5,1,1,1),('other n-a ta','他','other','n/a','タ','https://app.kanjialive.com/他',-1,'2019-07-25 11:10:55',438,'⺅','ninben','にんべん','person ',5,1,1,1),('substitute, generation, charge kawaru, kawari, kaeru, yo, shiro, ka dai, tai','代','substitute, generation, charge','か、よ、しろ','ダイ、タイ','https://app.kanjialive.com/代',-1,'2019-07-25 11:10:58',439,'⺅','ninben','にんべん','person ',5,1,1,1),('title, topic, problem n-a dai','題','title, topic, problem','n/a','ダイ','https://app.kanjialive.com/題',-1,'2019-07-25 11:10:55',440,'⾴','oogai','おおがい','head, page',18,1,1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vocabulary`
--

LOCK TABLES `Vocabulary` WRITE;
/*!40000 ALTER TABLE `Vocabulary` DISABLE KEYS */;
INSERT INTO `Vocabulary` VALUES (157,'工場（こうじょう）','factory',1,'2019-10-02 04:36:49',0,0,1,1),(156,'市長（しちょう）','mayor',1,'2019-10-02 04:28:50',0,0,1,1),(155,'市役所（しやくしょ）','city hall, town hall',1,'2019-10-02 04:28:13',0,0,1,1),(154,'コップ','cup, glass',1,'2019-10-02 04:26:20',0,0,1,1),(152,'ふとん\r\n（ふとん）','futon',1,'2019-10-02 04:24:30',0,0,1,1),(153,'お皿（おさら）','plate, dish',1,'2019-10-02 04:25:38',0,0,1,1),(158,'ã‚ã‹ã•ãŸãª','Test',1,'2019-10-01 23:12:35',0,0,1,1),(159,'あかさたひら','Azerry',1,'2019-10-02 01:19:52',0,0,1,1),(160,'かたかな','katakana',1,'2019-10-02 11:13:08',0,0,1,1);
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

-- Dump completed on 2019-10-01 11:13:14
