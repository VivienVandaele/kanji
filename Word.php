<?php
class Word{
    private $id;
    private $character;
    private $meaning;
    private $day;
    private $dateNext;
    private $toTestKanji;
    private $toTestMeaning;
    private $testable;
    private $word;
    private $class;
    private $compteur;

    public function __construct($id, $character, $meaning, $day, $dateNext, $toTestKanji, $toTestMeaning, $testable, $word){
        $this->id=$id;
        $this->character=$character;
        $this->meaning=$meaning;
        $this->day=$day;
        $this->dateNext=$dateNext;
        $this->toTestKanji=$toTestKanji;
        $this->toTestMeaning=$toTestMeaning;
        $this->testable=$testable;
        $this->word=$word;
        $this->calculTime();
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
        if($this->day==1) $this->day=2;
        else if($this->day==2) $this->day=3;
        else if($this->day==3) $this->day=4;
        else if($this->day==4) $this->day=5;
        else if($this->day==5) $this->day=6;
        else if($this->day==6) $this->day=7;
        else if($this->day==7) $this->day=10;
        else if($this->day==10) $this->day=15;
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
    }

    public function reviewlater(){
        connection::getbdd()->exec("update Vocabulary set datenext='".date('y-m-d h:i:s', strtotime('+0day', date(time())))."', day='".$this->day."' where id='".$this->id."'");
    }

    public function setTestable($testable){
        Connection::getBdd()->exec("UPDATE Vocabulary SET testable='".$testable."' WHERE id='".$this->id."'");
    }

    public function setToTestKanji($test){
        Connection::getBdd()->exec("UPDATE Vocabulary SET toTestKanji='".$test."' WHERE id='".$this->id."'");
    }

    public function setToTestMeaning($test){
        Connection::getBdd()->exec("UPDATE Vocabulary SET toTestMeaning='".$test."' WHERE id='".$this->id."'");
    }

    public function getId(){
        return $this->id;
    }

    public function getCharacter(){
        return $this->character;
    }

    public function getClass(){
        return $this->class;
    }

    public function getMeaning(){
        return $this->meaning;
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

    public function getDateNext(){
        return $this->dateNext;
    }
}

include_once("Connection.php");

function getOneToTestMeaningWord(){
    $allKanji = getAllToTestMeaningWord();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function getOneToTestKanjiWord(){
    $allKanji = getAllToTestKanjiWord();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function getAllToTestMeaningWord(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestMeaning=1 AND testable=1 AND word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllToTestKanjiWord(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestKanji=1 AND testable=1 AND word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getOneToTestMeaningSentence(){
    $allKanji = getAllToTestMeaningSentence();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function getOneToTestKanjiSentence(){
    $allKanji = getAllToTestKanjiSentence();
    return $allKanji[rand(0, count($allKanji)-1)];
}

function getAllToTestMeaningSentence(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestMeaning=1 AND testable=1 AND word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllToTestKanjiSentence(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestKanji=1 AND testable=1 AND word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllWords(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function addWord($chara, $meaning){
    Connection::getBdd()->exec("INSERT INTO Vocabulary (chara, meaning, day, dateNext, word) VALUES ('".$chara."', '".$meaning."', 1, '".date('Y-m-d H:i:s', strtotime('+1day', date(time())))."', 1)");
}

function addSentence($chara, $meaning){
    Connection::getBdd()->exec("INSERT INTO Vocabulary (chara, meaning, day, dateNext, word) VALUES ('".$chara."', '".$meaning."', 1, '".date('Y-m-d H:i:s', strtotime('+1day', date(time())))."', 0)");
}

function getWord($id){
     $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE id='".$id."'");
    while($data = $req->fetch())
        return new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
}

function getReviewWord(){
    $word = getAllWords()[0];
    if(isset($word)){
        if($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            return $word;
    }
}

function getReviewSentence(){
    $word = getAllSentences()[0];
    if(isset($word)){
        if($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            return $word;
    }
}

function wordToReview($word){
    return ($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))));
}

function getNombreARevoir($all){
    if(isset($all)){
        $nb = 0;
        foreach($all as $word){
            if($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
                $nb++;
        }
        return $nb;
    }
    return 0;
}

function getNumberToTestMeaning($all){
    $nb = 0;
    if(isset($all)) {
        foreach ($all as $word) {
            if ($word->getToTestMeaning() == 1 && $word->getTestable() == 1)
                $nb++;
        }
    }
    return $nb;
}

function getNumberToTestKanji($all){
    $nb = 0;
    if(isset($all)) {
        foreach ($all as $word) {
            if ($word->getToTestKanji() == 1 && $word->getTestable() == 1)
                $nb++;
        }
    }
    return $nb;
}

?>
