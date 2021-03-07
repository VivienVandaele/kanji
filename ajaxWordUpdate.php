<?php

include_once("Word.php");
$word = getWordW($_GET["id"]);
if(isset($_GET["fallback"]))
    $word->fallback();
else if(isset($_GET["flag2"])){
    if($_GET["flag2"] == "true")
        $word->setToTestMeaning(0);
    else
        $word->setToTestKanji(0);
    if($word->getToTestMeaning()==0 && $word->getToTestKanji()==0){
        $word->update();
    }
}
