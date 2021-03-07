<?php
include_once("header.html");
include_once("Sentence.php");

if(isset($_POST["sentence"])){
	addSentence($_POST["sentence"], preg_replace("/'/", "\\'", $_POST["meaning"]));
}
$allSentences = getAllSentences();
$numberToTest = getNumberToTest($allSentences);

include_once("sentenceView.php");
?>
