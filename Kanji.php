<?php
class Kanji{
    private $id;
    private $name;
    private $character;
    private $meaning;
    private $kunyomi;
    private $onyomi;
    private $linkKanjiAlive;
    private $day;
    private $dateNext;
    private $compteur;
    private $class;
    private $radicalChar;
    private $radicalName;
    private $radicalHiragana;
    private $radicalMeaning;
    private $strokes;
    private $toTestKanji;
    private $toTestMeaning;
    private $testable;

    public function __construct($id, $name, $character, $meaning, $kunyomi, $onyumi, $linkKanjiAlive, $day, $dateNext, $radicalChar, $radicalName, $radicalHiragana, $radicalMeaning, $strokes, $toTestKanji, $toTestMeaning, $testable){
        $this->id=$id;
        $this->name=$name;
        $this->character=$character;
        $this->meaning=$meaning;
        $this->kunyomi=$kunyomi;
        $this->onyomi=$onyumi;
        $this->linkKanjiAlive=$linkKanjiAlive;
        $this->day = $day;
        $this->dateNext = $dateNext;
        $this->CalculTime();
        $this->radicalChar=$radicalChar;
        $this->radicalName=$radicalName;
        $this->radicalHiragana=$radicalHiragana;
        $this->radicalMeaning=$radicalMeaning;
        $this->strokes=$strokes;
        $this->toTestKanji=$toTestKanji;
        $this->toTestMeaning=$toTestMeaning;
        $this->testable=$testable;

        if($this->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))) && $this->getToTestMeaning() == 0 && $this->getToTestKanji() == 0){
            $this->setToTestMeaning(1);
            $this->setToTestKanji(1);
        }
    }

    public function calculTime(){
        $time = time();
        $second = strtotime($this->dateNext)-$time;
        if($second>0) {
            $jour = floor($second / (60 * 60 * 24));
            $heure = floor(($second - $jour * 24 * 60 * 60) / (60 * 60));
            $minute = floor(($second - $heure * 60 * 60 - $jour * 24 * 60 * 60) / (60));
            $second = floor($second - $minute * 60 - $heure * 60 * 60 - $jour * 24 * 60 * 60);
            if($jour==0){
                $this->class="warning";
                $this->compteur = $heure . "h " . $minute . "m " . $second . "s";
            }
            else
                $this->compteur = $jour . "jours " . $heure . "h " . $minute . "m " . $second . "s";
        }
        else {
            $jour = ceil($second / (60 * 60 * 24));
            $heure = ceil(($second - $jour * 24 * 60 * 60) / (60 * 60));
            $minute = ceil(($second - $heure * 60 * 60 - $jour * 24 * 60 * 60) / (60));
            $second = ceil($second - $minute * 60 - $heure * 60 * 60 - $jour * 24 * 60 * 60);
            $this->compteur = $jour . "jours " . $heure . "h " . $minute . "m " . $second . "s";
            if(!($jour==0 && $heure==0 && $second==0 && $minute==0))
                $this->class="danger";
            else
                $this->class="warning";
        }
    }

    public function update(){
        if($this->day==-1){
            $this->day=0;
            Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".date('Y-m-d H:i:s', strtotime('+10hours', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
        }
        else{
            if($this->day==0) $this->day=1;
            else if($this->day==1) $this->day=2;
            else if($this->day==2) $this->day=3;
            else if($this->day==3) $this->day=5;
            else if($this->day==5) $this->day=7;
            else if($this->day==7) $this->day=10;
            else if($this->day==10) $this->day=15;
            else if($this->day==15) $this->day=20;
            Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
        }
    }

    public function fallback(){
        if($this->day > -1){
            $this->day--;
        }
        $this->setToTestMeaning(0);
        $this->setToTestKanji(0);
        Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".date('Y-m-d H:i:s', strtotime('+1minutes', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
    }

    public function reviewlater(){
        connection::getbdd()->exec("update Kanji set datenext='".date('Y-m-d H:i:s', strtotime('+1minutes', date(time())))."', day='".$this->day."' where id='".$this->id."'");
    }

    public function setTestable($testable){
        Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".$this->dateNext."', testable='".$testable."' WHERE id='".$this->id."'");
    }

    public function setToTestKanji($test){
        Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".$this->dateNext."', toTestKanji='".$test."' WHERE id='".$this->id."'");
        $this->toTestKanji=$test;
    }

    public function setToTestMeaning($test){
        Connection::getBdd()->exec("UPDATE Kanji SET dateNext='".$this->dateNext."', toTestMeaning='".$test."' WHERE id='".$this->id."'");
        $this->toTestMeaning=$test;
    }

    public function getId(){
        return $this->id;
    }

    public function getClass(){
        return $this->class;
    }

    public function getName(){
        return $this->name;
    }

    public function getCharacter(){
        return $this->character;
    }

    public function getMeaning(){
        return $this->meaning;
    }

    public function getKun(){
        return $this->kunyomi;
    }

    public function getOn(){
        return $this->onyomi;
    }

    public function getLinkKanjiAlive(){
        return $this->linkKanjiAlive;
    }

    public function getDateNext(){
        return $this->dateNext;
    }

    public function getCompteur(){
        return $this->compteur;
    }

    public function getRadicalChar(){
        return $this->radicalChar;
    }

    public function getRadicalName(){
        return $this->radicalName;
    }

    public function getRadicalHiragana(){
        return $this->radicalHiragana;
    }

    public function getRadicalMeaning(){
        return $this->radicalMeaning;
    }

    public function getStrokes(){
        return $this->strokes;
    }

    public function getToTestKanji(){
        return $this->toTestKanji;
    }

    public function getToTestMeaning(){
        return $this->toTestMeaning;
    }

    public function getTestable(){
        return $this->testable;
    }
}

include_once("Connection.php");

function getNombreARevoir($allKanji){
    if(isset($allKanji)){
        $nb = 0;
        foreach($allKanji as $kanji){
            if($kanji->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
                $nb++;
        }
        return $nb;
    }
    return 0;
}

function getNumberToTestMeaning(){
    $allKanji = getAllKanji();
    $nb = 0;
    foreach ($allKanji as $kanji) {
        if($kanji->getToTestMeaning() == 1 && $kanji->getTestable()==1)
            $nb++;
    }
    return $nb;
}

function getNumberToTestKanji(){
    $allKanji = getAllKanji();
    $nb = 0;
    foreach ($allKanji as $kanji) {
        if($kanji->getToTestKanji() == 1 && $kanji->getTestable()==1)
            $nb++;
    }
    return $nb;
}

function getOneToTestMeaning(){
    $allKanji = getAllToTestMeaning();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function getOneToTestKanji(){
    $allKanji = getAllToTestKanji();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function addKanji($name, $character, $meaning, $kunyomi, $onyomi, $linkKanjiAlive, $radicalChar, $radicalName, $radicalHiragana, $radicalMeaning, $strokes){
    Connection::getBdd()->exec("INSERT INTO Kanji(name, chara, meaning, kunyomi, onyomi, linkKanjiAlive, day, dateNext, radicalChar, radicalName, radicalHiragana, radicalMeaning, strokes) VALUES ('".$name."', '".$character."', '".$meaning."', '".$kunyomi."', '".$onyomi."', '".$linkKanjiAlive."', -1, '".date('Y-m-d H:i:s', strtotime('+10minutes', date(time())))."', '".$radicalChar."', '".$radicalName."', '".$radicalHiragana."', '".$radicalMeaning."', '".$strokes."')");
}

function getAllToTestMeaning(){
    $req = Connection::getBdd()->query("SELECT * FROM Kanji WHERE toTestMeaning=1 AND testable=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Kanji($data['id'], $data['name'], $data['chara'], $data['meaning'], $data['kunyomi'], $data['onyomi'], $data['linkKanjiAlive'], $data['day'], $data['dateNext'], $data['radicalChar'], $data['radicalName'], $data['radicalHiragana'], $data['radicalMeaning'], $data['strokes'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable']);
    if(isset($array)) return $array;
}

function getAllToTestKanji(){
    $req = Connection::getBdd()->query("SELECT * FROM Kanji WHERE toTestKanji=1 AND testable=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Kanji($data['id'], $data['name'], $data['chara'], $data['meaning'], $data['kunyomi'], $data['onyomi'], $data['linkKanjiAlive'], $data['day'], $data['dateNext'], $data['radicalChar'], $data['radicalName'], $data['radicalHiragana'], $data['radicalMeaning'], $data['strokes'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable']);
    if(isset($array)) return $array;
}

function getAllKanji(){
    $req = Connection::getBdd()->query("SELECT * FROM Kanji ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Kanji($data['id'], $data['name'], $data['chara'], $data['meaning'], $data['kunyomi'], $data['onyomi'], $data['linkKanjiAlive'], $data['day'], $data['dateNext'], $data['radicalChar'], $data['radicalName'], $data['radicalHiragana'], $data['radicalMeaning'], $data['strokes'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable']);
    if(isset($array)) return $array;
}

function getKanji($id){
     $req = Connection::getBdd()->query("SELECT * FROM Kanji WHERE id='".$id."'");
    while($data = $req->fetch())
        return new Kanji($data['id'], $data['name'], $data['chara'], $data['meaning'], $data['kunyomi'], $data['onyomi'], $data['linkKanjiAlive'], $data['day'], $data['dateNext'], $data['radicalChar'], $data['radicalName'], $data['radicalHiragana'], $data['radicalMeaning'], $data['strokes'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable']);
}


function isCharacterPresent($chara){
     $req = Connection::getBdd()->query("SELECT * FROM Kanji WHERE chara='".$chara."'");
    while($data = $req->fetch())
        return true;
    return false;
}

function getReviewKanji(){
    $kanji = getAllKanji()[0];
    if(isset($kanji)){
        if($kanji->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            return $kanji;
    }
}

function kanjiToReview($kanji){
    return ($kanji->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))));
}

function getNextKanjiId($id){
    $allKanji = getAllKanji();
    for($i=0;$i<count($allKanji);$i++){
        if($allKanji[$i]->getId() == $id)
            if($i == count($allKanji)-1)
                return $allKanji[0];
            else
                return $allKanji[$i+1];
    }
}

function getPreviousKanjiId($id){
    $allKanji = getAllKanji();
    for($i=0;$i<count($allKanji);$i++){
        if($allKanji[$i]->getId() == $id)
            if($i == 0)
                return $allKanji[count($allKanji)-1];
            else
                return $allKanji[$i-1];
    }
}

?>
