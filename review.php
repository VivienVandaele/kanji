<?php
    error_reporting(E_ALL ^ E_WARNING);
    include_once("header.html");
    include_once("Kanji.php");
    include_once("Word.php");
    if(isset($_GET["id"])){
       $kanji = getKanji($_GET["id"]);
        $nextKanjiId = getNextKanjiId($_GET["id"]);
        $previousKanjiId = getPreviousKanjiId($_GET["id"]);
    }
    else {
        $kanji = getReviewKanji();
        if (!isset($kanji))
            header('Location: index.php');
    }
    $allWords = getAllWordsW();
?>
<script>
    Mousetrap.bind('h', function() { document.location.href=<?php echo "document.location.href='review.php?id=".$previousKanjiId->getId()."'" ?> });
    Mousetrap.bind('l', function() { document.location.href=<?php echo "document.location.href='review.php?id=".$nextKanjiId->getId()."'" ?> });
    Mousetrap.bind('m', function() { document.location.href='index.php' });
    Mousetrap.bind('k', function() { window.open("<?php echo $kanji->getLinkKanjiAlive()?>", '_blank') });
    Mousetrap.bind('j', function() { window.open("http://jisho.org/search/<?php echo $kanji->getCharacter()?> %23kanji", '_blank') });

</script>

<body>
    <div id="page" class="page">
        <button onclick="document.location.href='index.php'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>

        <div>
            <div class="imageSVGTd">
                <img class="imageSVG" src="<?php echo "images/".$kanji->getName().".svg" ?>">
            </div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Meaning</span><br><?php echo $kanji->getMeaning() ?></td>
                        <td class="reviewKanji"><span class="description">Kunyomi</span><br><?php echo $kanji->getKun() ?></td>
                        <td class="reviewKanji"><span class="description">Onyomi</span><br><?php echo $kanji->getOn() ?></td>
                    </tr>
                    <tr>
                        <td class="reviewKanji2"><span class="description">Links</span>
                            <div class="links"><br><?php echo "<a target='_blank' href=".$kanji->getLinkKanjiAlive().">Kanji Alive : ".$kanji->getCharacter()."</a>" ?>
                        </div><?php echo "<a target='_blank' href='http://jisho.org/search/".$kanji->getCharacter()." %23kanji'>Jisho : ".$kanji->getCharacter()."</a>" ?></td>
                        <td class="reviewKanji2"><span class="description">Radical</span><br>
                            <div class="radical">
                            <img class="radicalImage" src="<?php echo "radical/".$kanji->getRadicalName().".svg" ?>">
                                <?php echo $kanji->getRadicalHiragana() ?><br>
                                <?php echo $kanji->getRadicalMeaning() ?>
                            </div>
                        </td>
                        <td class="reviewKanji2"><span class="description">Strokes</span><br><?php echo $kanji->getStrokes() ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="boutons">
            <button id="boutonChevronLeft" <?php echo "onclick=document.location.href='review.php?id=".$previousKanjiId->getId()."'" ?>  onmouseout="changeColorGlyphiconChevronLeft()" onmouseover="changeColorGlyphiconChevronLeft()" type="button" class="boutonLater btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-chevron-left glyphiconChevron" aria-hidden="true"></span>
            </button>
            <button id="boutonChevronRight" <?php echo "onclick=document.location.href='review.php?id=".$nextKanjiId->getId()."'" ?> onmouseout="changeColorGlyphiconChevronRight()" onmouseover="changeColorGlyphiconChevronRight()" type="button" class="boutonOk btn btn-default btn-lg" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-chevron-right glyphiconChevron" aria-hidden="true"></span>
            </button>
        </div>

        <table class="table">
<?php
    if(isset($allWords)){
        foreach ($allWords as $word){
            if (strpos($word->getCharacter(), $kanji->getCharacter()) !== false) {?>
            <tr <?php echo "onclick=document.location.href='vocabularyReview.php?id=".$word->getId()."&word=1'" ?> class="listKanji">
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
</html>
