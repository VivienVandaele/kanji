<?php
    mb_internal_encoding("UTF-8");//Sets the internal character encoding to UTF-8, for mb_substr to work
    error_reporting(E_ALL ^ E_WARNING);
    include_once("Word.php");


    if($_GET["test"]==1) {
		$word = getOneToTestMeaningWordW("");
        if (!isset($word))
			header('Location: vocabularyController.php?word='.$_GET["word"]);
        include_once("header.html");
        ?>
        <script>
			Mousetrap.bind('space', function() { <?php if($_GET["test"]==1){ ?>setVisibilityTestMeaning()  <?php }   else{ ?> setVisibilityTestKanji() <?php } ?> });
            Mousetrap.bind('c', function() { redirectWordMeaningNoAjax(<?php echo $word->getId() ?>) });
            Mousetrap.bind('v', function() { redirectWordMeaning(<?php echo $word->getId() ?>) });
			Mousetrap.bind('m', function() { document.location.href='vocabularyController.php?word=1' });
        </script>
        <?php
    }
    else{
		$word = getOneToTestKanjiWordW("");
        if (!isset($word))
            header('Location: index.php');
        include_once("header.html");
        ?>
        <script>
			Mousetrap.bind('space', function() { <?php if($_GET["test"]==1){ ?>setVisibilityTestMeaning()  <?php }   else{ ?> setVisibilityTestKanji() <?php } ?> });
            Mousetrap.bind('c', function() { redirectWordKanjiNoAjax(<?php echo $word->getId() ?>) });
            Mousetrap.bind('v', function() { redirectWordKanji(<?php echo $word->getId() ?>) });
			Mousetrap.bind('m', function() { document.location.href='vocabularyController.php?word=1' });
        </script>
        <?php
    }
?>

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
            <button id="boutonLater" <?php if($_GET["test"]==1){ echo "onclick=redirectWordMeaningNoAjax(".$word->getId().")"; } else{ echo "onclick=redirectWordKanjiNoAjax(".$word->getId().")"; } ?>  onmouseout="changeColorGlyphiconLater()" onmouseover="changeColorGlyphiconLater()" type="button" class="boutonLater btn btn-lg btn-default toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-remove glyphiconLater" aria-hidden="true"></span>
            </button>
            <button id="boutonSee" <?php if($_GET["test"]==1){ echo "onclick=setVisibilityTestMeaning()"; } else{ echo "onclick=setVisibilityTestKanji()"; } ?> onmouseout="" onmouseover="" type="button" class="boutonSee btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>
            <button id="boutonOk" <?php if($_GET["test"]==1){ echo "onclick=redirectWordMeaning(".$word->getId().")"; } else{ echo "onclick=redirectWordKanji(".$word->getId().")"; } ?> onmouseout="changeColorGlyphiconOk()" onmouseover="changeColorGlyphiconOk()" type="button" class="boutonOk btn btn-default btn-lg toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-ok glyphiconOk" aria-hidden="true"></span>
            </button>
        </div>
    </div>
</body>
</html>
