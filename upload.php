<?php
include_once("Kanji.php");
if(isCharacterPresent($_POST["char"])){
    echo "false";
}
else{
    copy($_POST['file'], "images/".preg_replace('#(/)#', '-', $_POST["name"].".svg"));
    copy($_POST['radicalImage'], "radical/".preg_replace('#(/)#', '-', $_POST["radicalName"].".svg"));

    if ($_POST["radicalName"] == "hitoyane") {
        $_POST["radicalChar"]='人';
    }
    addKanji(preg_replace('#(/)#', '-', $_POST["name"]), $_POST["char"], $_POST["meaning"], $_POST["kunyomi"], $_POST["onyomi"], $_POST["linkKanjiAlive"], $_POST["radicalChar"], $_POST["radicalName"], $_POST["radicalHiragana"], $_POST["radicalMeaning"], $_POST["strokes"]);

}
