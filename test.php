<?php
    error_reporting(E_ALL ^ E_WARNING);
    include_once("Kanji.php");
    include_once("Word.php");
    $allWords = getAllWordsW();
    if($_GET["test"]==1) {
        $kanji = getOneToTestMeaning();
        if (!isset($kanji))
            header('Location: index.php');
        include_once("header.html");
        ?>
        <script>
            Mousetrap.bind('space', function() { setVisibilityTestMeaning() });
            Mousetrap.bind('c', function() { redirectMeaningNoAjax(<?php echo $kanji->getId() ?>) });
            Mousetrap.bind('v', function() { redirectMeaning(<?php echo $kanji->getId() ?>) });
            Mousetrap.bind('m', function() { document.location.href='index.php' });
            Mousetrap.bind('k', function() { window.open("<?php echo $kanji->getLinkKanjiAlive()?>", '_blank') });
            Mousetrap.bind('j', function() { window.open("http://jisho.org/search/<?php echo $kanji->getCharacter()?> %23kanji", '_blank') });
        </script>
        <?php
    }
    else{
        $kanji = getOneToTestKanji();
        if (!isset($kanji))
            header('Location: index.php');
        include_once("header.html");
        ?>
        <script>
            Mousetrap.bind('space', function() { setVisibilityTestKanji() });
            Mousetrap.bind('c', function() { redirectKanjiNoAjax(<?php echo $kanji->getId() ?>) });
            Mousetrap.bind('v', function() { redirectKanji(<?php echo $kanji->getId() ?>) });
            Mousetrap.bind('m', function() { document.location.href='index.php' });
            Mousetrap.bind('k', function() { window.open("<?php echo $kanji->getLinkKanjiAlive()?>", '_blank') });
            Mousetrap.bind('j', function() { window.open("http://jisho.org/search/<?php echo $kanji->getCharacter()?> %23kanji", '_blank') });
        </script>
        <?php
    }
?>

<body >
    <div id="page" class="page">
        <button onclick="document.location.href='index.php'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>
        <div>
            <div class="imageSVGTd toHideTestKanji">
                <img class="imageSVG" src="<?php echo "images/".$kanji->getName().".svg" ?>">
                <br><span class="toHideTestMeaning btn btn-link" onclick="discard(<?php echo $kanji->getId() ?>)">Discard</span>
            </div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Meaning</span><span class="toHideTestMeaning"><br><?php echo $kanji->getMeaning() ?></span></td>
                        <td class="reviewKanji"><span class="description">Kunyomi</span><span class="toHideTestMeaning toHideTestKanji"><br><?php echo $kanji->getKun() ?></span></td>
                        <td class="reviewKanji"><span class="description">Onyomi</span><span class="toHideTestMeaning toHideTestKanji"><br><?php echo $kanji->getOn() ?></span></td>
                    </tr>
                    <tr class="toHideTestMeaning toHideTestKanji">
                        <td class="reviewKanji2"><span class="description">Links</span>
                            <div class="links"><br><?php echo "<a target='_blank' href=".$kanji->getLinkKanjiAlive().">Kanji Alive : ".$kanji->getCharacter()."</a>" ?>
                        </div><?php echo "<a target='_blank' href='http://jisho.org/search/".$kanji->getCharacter()." %23kanji'>Jisho : ".$kanji->getCharacter()."</a>" ?></td>
                        <td class="reviewKanji2"><span class="description">Radical</span><br>
                            <div class="radical">
                            <img class="radicalImage" src="<?php echo "radical/".$kanji->getRadicalName().".svg" ?>">
                                <?php echo $kanji->getRadicalHiragana() ?><br>
                                <?php echo $kanji->getRadicalMeaning() ?></td>
                            </div>
                        <td class="reviewKanji2"><span class="description">Strokes</span><br><?php echo $kanji->getStrokes() ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="boutons">
            <button id="boutonLater" <?php if($_GET["test"]==1){ echo "onclick=redirectMeaningNoAjax(".$kanji->getId().")"; } else{ echo "onclick=redirectKanjiNoAjax(".$kanji->getId().")"; } ?> onmouseout="changeColorGlyphiconLater()" onmouseover="changeColorGlyphiconLater()" type="button" class="boutonLater toHideTestMeaning toHideTestKanji btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-remove glyphiconLater" aria-hidden="true"></span>
            </button>
            <button id="boutonSee" <?php if($_GET["test"]==1){ echo "onclick=setVisibilityTestMeaning()"; } else{ echo "onclick=setVisibilityTestKanji()"; } ?> onmouseout="" onmouseover="" type="button" class="boutonSee btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>
            <button id="boutonOk" <?php if($_GET["test"]==1){ echo "onclick=redirectMeaning(".$kanji->getId().")"; } else{ echo "onclick=redirectKanji(".$kanji->getId().")"; } ?> onmouseout="changeColorGlyphiconOk()" onmouseover="changeColorGlyphiconOk()" type="button" class="boutonOk toHideTestMeaning toHideTestKanji btn btn-default btn-lg" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-ok glyphiconOk" aria-hidden="true"></span>
            </button>
        </div>

        <table class="table">
<?php
    if(isset($allWords)){
        foreach ($allWords as $word){
            if (strpos($word->getCharacter(), $kanji->getCharacter()) !== false) {?>
            <tr <?php echo "onclick=document.location.href='vocabularyReview.php?id=".$word->getId()."&word=1'" ?> class="listKanji toHideTestMeaning toHideTestKanji">
                <td><?php echo $word->getCharacter() ?></td>
                <td><?php echo $word->getMeaning() ?></td>
            </tr>
        <?php
            }
        }
    }?>
    </table>
    </div>
</body>
<?php if($_GET["test"]==1) { ?><script>setVisibilityTestMeaning()</script> <?php }else{?><script>setVisibilityTestKanji()</script><?php }?>
</html>
