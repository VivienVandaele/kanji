<?php

include_once("Sentence.php");
$sentence = getSentence($_GET["id"]);
if(isset($_GET["fallback"]))
    $sentence->fallback();
else{
	$sentence->setToTest(0);
	$sentence->update();
}
