<?php

include_once("Kanji.php");
$kanji = getKanji($_GET["id"]);
if(isset($_GET["fallback"]))
    $kanji->fallback();
else if(isset($_GET["discard"]))
    $kanji->setTestable(0);
else if(isset($_GET["flag2"])){
    if($_GET["flag2"] == "true")
        $kanji->setToTestMeaning(0);
    else
        $kanji->setToTestKanji(0);
    if($kanji->getToTestMeaning()==0 && $kanji->getToTestKanji()==0){
        $kanji->update();
    }
}
else {
    if ($_GET["flag"] == "true") {
        $kanji->update();
        $kanji->setToTestKanji(1);
        $kanji->setToTestMeaning(1);
    }
    else
        $kanji->reviewLater();
}
