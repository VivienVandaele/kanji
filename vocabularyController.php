<?php
include_once("header.html");
include_once("Word.php");


if(isset($_POST["word"])){
    if($_GET["word"]==1)
        addWordW($_POST["word"], preg_replace("/'/", "\\'", $_POST["meaning"]));
    else
        addSentenceW($_POST["word"], preg_replace("/'/", "\\'", $_POST["meaning"]));
}

if($_GET["word"]==1) {
    $allWords = getAllWordsW();
}
else{
    $allWords = getAllSentencesW();
}
$numberKanji = getNumberToTestKanjiW($allWords);
$numberMeaning = getNumberToTestMeaningW($allWords);
$numberToReview = getNombreARevoirW($allWords);

include_once("vocabularyView.php");
?>
