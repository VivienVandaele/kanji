<?php
include_once("Connection.php");

function getCurrentId(){
	# INITIAL DATE
	return (new DateTime())->diff(new DateTime("2021-03-04"))->format("%a");
}

function incrementNewWords(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats WHERE id='".getCurrentId()."'")->fetch();
	if (!$req)
		Connection::getBdd()->exec("INSERT INTO Stats(Id) VALUES ('".getCurrentId()."')");
	Connection::getBdd()->exec("UPDATE Stats SET newWords=newWords+1 WHERE id='".getCurrentId()."'");
}

function incrementNewKanji(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats WHERE id='".getCurrentId()."'")->fetch();
	if (!$req)
			Connection::getBdd()->exec("INSERT INTO Stats(Id) VALUES ('".getCurrentId()."')");
	Connection::getBdd()->exec("UPDATE Stats SET newKanji=newKanji+1 WHERE id='".getCurrentId()."'");
}

function incrementNewSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats WHERE id='".getCurrentId()."'")->fetch();
	if (!$req)
			Connection::getBdd()->exec("INSERT INTO Stats(Id) VALUES ('".getCurrentId()."')");
	Connection::getBdd()->exec("UPDATE Stats SET newSentences=newSentences+1 WHERE id='".getCurrentId()."'");
}

function getCumulativeNewWords(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
	$s = 0;
    while($data = $req->fetch()){
		$s = $s + $data['newWords'];
        $arrayWords[] = $s;
	}
    return $arrayWords;
}

function getCumulativeNewKanji(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
	$s = 0;
	$array = [];
    while($data = $req->fetch()){
		$s = $s + $data['newKanji'];
        $array[] = $s;
	}
    return $array;
}

function getCumulativeNewSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
	$s = 0;
    while($data = $req->fetch()){
		$s = $s + $data['newSentences'];
        $array[] = $s;
	}
    return $array;
}

function getLabels(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
    while($data = $req->fetch())
        $arrayWords[] = $data['id'];
    return $arrayWords;
}

function getStatsNewWords(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
    while($data = $req->fetch())
        $arrayWords[] = $data['newWords'];
    return $arrayWords;
}

function getStatsNewKanji(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
    while($data = $req->fetch())
        $arrayKanji[] = $data['newKanji'];
    return $arrayKanji;
}

function getStatsNewSentences(){
    $req = Connection::getBdd()->query("SELECT * FROM Stats ORDER BY id");
    while($data = $req->fetch())
        $arrayKanji[] = $data['newSentences'];
    return $arrayKanji;
}

?>
