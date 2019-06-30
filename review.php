<?php
    include_once("header.html");
    include_once("Kanji.php");
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
                <img class="imageSVG" src="<?php echo "https://github.com/VivienVandaele/kanji/raw/master/images/".$kanji->getName().".svg?sanitize=true" ?>">
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
                            <img class="radicalImage" src="<?php echo "https://github.com/VivienVandaele/kanji/raw/master/radical/".$kanji->getRadicalName().".svg?sanitize=true" ?>">
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
    </div>
</body>
</html>
