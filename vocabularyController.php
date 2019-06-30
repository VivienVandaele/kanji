<?php
include_once("header.html");
include_once("Word.php");



if(isset($_POST["word"])){
    if($_GET["word"]==1)
        addWord($_POST["word"], preg_replace("/'/", "\\'", $_POST["meaning"]));
    else
        addSentence($_POST["word"], preg_replace("/'/", "\\'", $_POST["meaning"]));
}

if($_GET["word"]==1) {
    $allWords = getAllWords();
}
else{
    $allWords = getAllSentences();
}
$numberKanji = getNumberToTestKanji($allWords);
$numberMeaning = getNumberToTestMeaning($allWords);
$numberToReview = getNombreARevoir($allWords);

include_once("vocabularyView.php");
?>