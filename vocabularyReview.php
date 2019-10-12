<?php
    mb_internal_encoding("UTF-8");//Sets the internal character encoding to UTF-8, for mb_substr to work
    include_once("header.html");
    include_once("Word.php");

    if(isset($_GET["idV"])){
        $wordToUpdate = getWord($_GET["idV"]);
        if(wordToReview($wordToUpdate)) {
            $wordToUpdate->setToTestMeaning(1);
            $wordToUpdate->setToTestKanji(1);
            $wordToUpdate->update();
        }
    }
    if(isset($_GET["idL"])){
        $wordToReviewLater = getWord($_GET["idL"]);
        $wordToReviewLater->reviewlater();
    }

    if(isset($_GET["id"])){
        $word = getWord($_GET["id"]);
    }
    else {
        if($_GET["word"]==1)
            $word = getReviewWord();
        else
            $word = getReviewSentence();
        if (!isset($word))
            header('Location: vocabularyController.php?word='.$_GET["word"]);
    }
?>
<script>
    Mousetrap.bind('c', function() { document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>&idL=<?php echo $word->getId() ?>' });
    Mousetrap.bind('v', function() { document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>&idV=<?php echo $word->getId() ?>' });
</script>
<body>
    <div id="page" class="page">
        <button onclick="document.location.href='vocabularyController.php?word=<?php echo $_GET["word"] ?>'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>
        <div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Word</span><br>
                        <?php
                            $str = $word->getCharacter();
                            $strlen = strlen($str);
                            for( $i = 0; $i <= $strlen; $i++ ) {
                                $char = mb_substr($str, $i, 1);
                                echo "<a target='_blank' href='http://jisho.org/search/".$char." %23kanji'>".$char."</a>";
                            } ?></span></td>

                        <td class="reviewKanji"><span class="description">Meaning</span><br><?php echo $word->getMeaning() ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <?php if(wordToReview($word)){?>
        <div class="boutons">
            <button id="boutonLater" onclick="document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>&idL=<?php echo $word->getId() ?>'" onmouseout="changeColorGlyphiconLater()" onmouseover="changeColorGlyphiconLater()" type="button" class="boutonLater btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-remove glyphiconLater" aria-hidden="true"></span>
            </button>
            <button id="boutonOk" onclick="document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>&idV=<?php echo $word->getId() ?>'" onmouseout="changeColorGlyphiconOk()" onmouseover="changeColorGlyphiconOk()" type="button" class="boutonOk btn btn-default btn-lg" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-ok glyphiconOk" aria-hidden="true"></span>
            </button>
        </div>
        <?php } ?>
    </div>
</body>
</html>
