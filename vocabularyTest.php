<?php
    mb_internal_encoding("UTF-8");//Sets the internal character encoding to UTF-8, for mb_substr to work
    include_once("header.html");
    include_once("Word.php");

    if(isset($_GET["idV"])){
        $wordToUpdate = getWord($_GET["idV"]);
        if($_GET["test"]==1)
            $wordToUpdate->setToTestMeaning(0);
        else
            $wordToUpdate->setToTestKanji(0);
    }

    if($_GET["test"]==1){
        if($_GET["word"]==1)
            $word = getOneToTestMeaningWord();
        else
            $word = getOneToTestMeaningSentence();
    }
    else{
        if($_GET["word"]==1)
            $word = getOneToTestKanjiWord();
        else
            $word = getOneToTestKanjiSentence();
    }
    if (!isset($word))
        header('Location: vocabularyController.php?word='.$_GET["word"]);


?>

<script>
    Mousetrap.bind('space', function() { <?php if($_GET["test"]==1){ ?>setVisibilityTestMeaning()  <?php }   else{ ?> setVisibilityTestKanji() <?php } ?> });
    Mousetrap.bind('v', function() { document.location.href='vocabularyTest.php?word=<?php echo $_GET["word"] ?>&test=<?php echo $_GET["test"] ?>&idV=<?php echo $word->getId() ?>' });
    Mousetrap.bind('c', function() { document.location.href='vocabularyTest.php?word=<?php echo $_GET["word"] ?>&test=<?php echo $_GET["test"] ?>' });


</script>

<body onload="<?php if($_GET["test"]==1) { ?>setVisibilityTestMeaning() <?php }else{?>setVisibilityTestKanji()<?php }?>">
    <div id="page" class="page">
        <button onclick="document.location.href='vocabularyController.php?word=<?php echo $_GET["word"] ?>'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>

        <div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Word</span><br><span class="toHideTestMeaning">
                        <?php
                        $str = $word->getCharacter();
                        $strlen = strlen($str);
                        for( $i = 0; $i <= $strlen; $i++ ) {
                            $char = mb_substr($str, $i, 1);
                            echo "<a target='_blank' href='http://jisho.org/search/".$char." %23kanji'>".$char."</a>";
                        } ?></span></td>

                        <td class="reviewKanji"><span class="description">Meaning</span><br><span class="toHideTestKanji"><?php echo $word->getMeaning() ?></span></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="boutons">
            <button id="boutonLater" onclick="document.location.href='vocabularyTest.php?word=<?php echo $_GET["word"] ?>&test=<?php echo $_GET["test"] ?>'" onmouseout="changeColorGlyphiconLater()" onmouseover="changeColorGlyphiconLater()" type="button" class="boutonLater btn btn-lg btn-default toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-remove glyphiconLater" aria-hidden="true"></span>
            </button>
            <button id="boutonSee" <?php if($_GET["test"]==1){ echo "onclick=setVisibilityTestMeaning()"; } else{ echo "onclick=setVisibilityTestKanji()"; } ?> onmouseout="" onmouseover="" type="button" class="boutonSee btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>
            <button id="boutonOk" onclick="document.location.href='vocabularyTest.php?word=<?php echo $_GET["word"] ?>&test=<?php echo $_GET["test"] ?>&idV=<?php echo $word->getId() ?>'" onmouseout="changeColorGlyphiconOk()" onmouseover="changeColorGlyphiconOk()" type="button" class="boutonOk btn btn-default btn-lg toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-ok glyphiconOk" aria-hidden="true"></span>
            </button>
        </div>
    </div>
</body>
</html>
