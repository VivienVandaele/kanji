<?php
class Sentence{
    private $id;
    private $sentence;
    private $meaning;
    private $day;
    private $dateNext;
    private $toTest;
    private $class;
	# Fibonacci sequence
    private static $repetition = array(0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377);

    public function __construct($id, $sentence, $meaning, $day, $dateNext, $toTest){
        $this->id=$id;
        $this->sentence=$sentence;
        $this->meaning=$meaning;
        $this->day=$day;
        $this->dateNext=$dateNext;
        $this->toTest=$toTest;
        $this->calculTime();
        if($this->getDateNext()<date('Y-m-d H:i:s', strtotime('+0day', date(time()))) && $this->getToTest() == 0){
            $this->setToTest(1);
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
            if($jour==0)
                $this->class="warning";
        }
        else {
            $jour = ceil($second / (60 * 60 * 24));
            $heure = ceil(($second - $jour * 24 * 60 * 60) / (60 * 60));
            $minute = ceil(($second - $heure * 60 * 60 - $jour * 24 * 60 * 60) / (60));
            $second = ceil($second - $minute * 60 - $heure * 60 * 60 - $jour * 24 * 60 * 60);
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
		$this->day += random_int(-floor($this->day*0.05), floor($this->day*0.05));
        Connection::getBdd()->exec("UPDATE Sentences SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
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
        $this->setToTest(0);
        Connection::getBdd()->exec("UPDATE Sentences SET dateNext='".date('Y-m-d H:i:s', strtotime('+'.$this->day.'day', date(time())))."', day='".$this->day."' WHERE id='".$this->id."'");
    }

    public function setToTest($test){
        Connection::getBdd()->exec("UPDATE Sentences SET dateNext='".$this->dateNext."', toTest='".$test."' WHERE id='".$this->id."'");
        $this->toTest=$test;
    }

    public function getId(){
        return $this->id;
    }

    public function getSentence(){
        return $this->sentence;
    }

    public function getClass(){
        return $this->class;
    }

    public function getMeaning(){
        return $this->meaning;
    }

    public function getToTest(){
        return $this->toTest;
    }

    public function getDateNext(){
        return $this->dateNext;
    }
}

include_once("Connection.php");
include_once("Chart.php");

function getOneToTestSentences(){
    $all = getAllToTestSentences();
    if(isset($all)){
        $sentence = $all[rand(0, count($all)-1)];
    }
    if(isset($sentence)) return $sentence;
}

function getAllToTestSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Sentences WHERE toTest=1 ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Sentence($data['id'], $data['sentence'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTest']);
    if(isset($array)) return $array;
}

function getAllSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Sentences ORDER BY dateNext");
    while($data = $req->fetch())
        $array[] = new Sentence($data['id'], $data['sentence'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTest']);
    if(isset($array)) return $array;
}

function addSentence($sentence, $meaning){
	incrementNewSentences();
    Connection::getBdd()->exec("INSERT INTO Sentences (sentence, meaning, day, dateNext) VALUES ('".$sentence."', '".$meaning."', 1, '".date('Y-m-d H:i:s', strtotime('+1day', date(time())))."')");
}

function getNumberToTest($all){
    $nb = 0;
    if(isset($all)) {
        foreach ($all as $sentence) {
            if ($sentence->getToTest() == 1)
                $nb++;
        }
    }
    return $nb;
}

function getNumberSentences(){
    return count(getAllSentences());
}

function getWorkloadSentence(){
    $req = Connection::getBdd()->query("SELECT * FROM Sentences ORDER BY dateNext");
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

function getSentence($id){
     $req = Connection::getBdd()->query("SELECT * FROM Sentences WHERE id='".$id."'");
    while($data = $req->fetch())
        return new Sentence($data['id'], $data['sentence'], $data['meaning'], $data['day'], $data['dateNext'], $data['toTest']);
}

?>
