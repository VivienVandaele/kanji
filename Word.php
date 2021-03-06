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
	# Fibonacci sequence
    private static $repetition = array(0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377);

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
        $closest = null;
        $key = null;
        foreach (self::$repetition as $key_value => $value) {
          if ($closest === null || abs($this->day - $closest) > abs($value - $this->day)) {
             $closest = $value;
             $key = $key_value;
          }
        }
        $this->day = $closest;
        if(count(self::$repetition) > $key+1){
            $this->day = self::$repetition[$key+1];
        }

        #if(count(self::$repetition)-3 <= $key){
		$this->day += random_int(-floor($this->day*0.05), floor($this->day*0.05));
        #}
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
    }

    public function fallback(){
        $closest = null;
        $key = null;
        foreach (self::$repetition as $key_value => $value) {
          if ($closest === null || abs($this->day - $closest) > abs($value - $this->day)) {
             $closest = $value;
             $key = $key_value;
          }
        }
        if($key > 0){
            $this->day = self::$repetition[$key-1];
        }

        $this->setToTestMeaning(0);
        $this->setToTestKanji(0);
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
    }

    public function reviewlater(){
        connection::getbdd()->exec("update Vocabulary set datenext='".date('Y-m-d H:i:s', strtotime('+5minutes', date(time())))."', day='".$this->day."' where id='".$this->id."'");
    }

    public function setTestable($testable){
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".$this->dateNext."', testable='".$testable."' WHERE id='".$this->id."'");
    }

    public function setToTestKanji($test){
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".$this->dateNext."', toTestKanji='".$test."' WHERE id='".$this->id."'");
        $this->toTestKanji=$test;
    }

    public function setToTestMeaning($test){
        Connection::getBdd()->exec("UPDATE Vocabulary SET dateNext='".$this->dateNext."', toTestMeaning='".$test."' WHERE id='".$this->id."'");
        $this->toTestMeaning=$test;
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
include_once("Chart.php");

function getOneToTestMeaningWordW($ban){
    $allKanji = getAllToTestMeaningWordW();
    if(isset($allKanji)){
        $kanji = $allKanji[rand(0, count($allKanji)-1)];
        while(count($allKanji) > 1 && $kanji->getId() == $ban) {
            $kanji = $allKanji[rand(0, count($allKanji)-1)];
        }
    }
    if(isset($kanji)) return $kanji;
}

function getOneToTestKanjiWordW($ban){
    $allKanji = getAllToTestKanjiWordW();
    if(isset($allKanji)){
        $kanji = $allKanji[rand(0, count($allKanji)-1)];
        while(count($allKanji) > 1 && $kanji->getId() == $ban) {
            $kanji = $allKanji[rand(0, count($allKanji)-1)];
        }
    }
    if(isset($kanji)) return $kanji;
}

function getAllToTestMeaningWordW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestMeaning=1 AND testable=1 AND word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllToTestKanjiWordW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestKanji=1 AND testable=1 AND word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getOneToTestMeaningSentenceW(){
    $allKanji = getAllToTestMeaningSentenceW();
#    return $allKanji[rand(0, count($allKanji)-1)];
}

function getOneToTestKanjiSentenceW(){
    $allKanji = getAllToTestKanjiSentenceW();
#    return $allKanji[rand(0, count($allKanji)-1)];
}

function getAllToTestMeaningSentenceW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestMeaning=1 AND testable=1 AND word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllToTestKanjiSentenceW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE toTestKanji=1 AND testable=1 AND word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllWordsW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function getAllWordsReviewW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=1 ORDER BY dateNext");
    while($data = $req->fetch()){
        if($data['dateNext']<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    }
    if(isset($array)) return $array;
}

function getAllSentencesW(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=0 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
    if(isset($array)) return $array;
}

function addWordW($chara, $meaning){
	incrementNewWords();
    Connection::getBdd()->exec("INSERT INTO Vocabulary (chara, meaning, day, dateNext, word) VALUES ('".$chara."', '".$meaning."', 1, '".date('Y-m-d H:i:s', strtotime('+1day', date(time())))."', 1)");
}

function addSentenceW($chara, $meaning){
    Connection::getBdd()->exec("INSERT INTO Vocabulary (chara, meaning, day, dateNext, word) VALUES ('".$chara."', '".$meaning."', 1, '".date('Y-m-d H:i:s', strtotime('+1day', date(time())))."', 0)");
}

function getWordW($id){
     $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE id='".$id."'");
    while($data = $req->fetch())
        return new Word($data['id'], $data['chara'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTestKanji'], $data['toTestMeaning'], $data['testable'], $data['word']);
}

function getReviewWordW(){
    $allWords =  getAllWordsReviewW();
    $word = $allWords[rand(0, count($allWords)-1)];
    if(isset($word)){
        if($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            return $word;
    }
}

function getReviewSentenceW(){
    $word = getAllSentencesW()[0];
    if(isset($word)){
        if($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))))
            return $word;
    }
}

function wordToReviewW($word){
    return ($word->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))));
}

function getNombreARevoirW($all){
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

function getNumberToTestMeaningW($all){
    $nb = 0;
    if(isset($all)) {
        foreach ($all as $word) {
            if ($word->getToTestMeaning() == 1 && $word->getTestable() == 1)
                $nb++;
        }
    }
    return $nb;
}

function getNumberToTestKanjiW($all){
    $nb = 0;
    if(isset($all)) {
        foreach ($all as $word) {
            if ($word->getToTestKanji() == 1 && $word->getTestable() == 1)
                $nb++;
        }
    }
    return $nb;
}

function getNumberWords(){
    return count(getAllWordsW());
}

function getWorkloadWord(){
    $req = Connection::getBdd()->query("SELECT * FROM Vocabulary WHERE word=1 ORDER BY dateNext");
	$total = 0;
    $repetition = array(0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377);
	while($data = $req->fetch()){
		if($data['dateNext']<date('Y-m-d H:i:s', strtotime('+60day', date(time())))){
			$closest = null;
			$key = null;
			foreach ($repetition as $key_value => $value) {
			  if ($closest === null || abs($data['day'] - $closest) > abs($value - $date['day'])) {
				 $closest = $value;
				 $key = $key_value;
			  }
			}
			if($key < 10){
				$total = $total + 10 - $key;
			}
		}
	}
	return $total/60;
}
?>
