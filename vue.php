<body>
<script>
    Mousetrap.bind('b', function() { document.location.href='test.php?test=1' });
    Mousetrap.bind('v', function() { document.location.href='test.php?test=2' });
</script>

        <?php if(getNumberToTestKanji()>0 || getNumberToTestMeaning()>0 || getNombreARevoir($allKanji)>0){?>
            <div class="review">
               <?php if(getNumberToTestMeaning()>0){ ?>
                <div class="testMeaningHeader" onclick="document.location.href='test.php?test=1'">
                    <span><?php echo getNumberToTestMeaning() ?></span>
                </div>
                <?php }if(getNumberToTestKanji()>0){ ?>
                <div class="testKanjiHeader" onclick="document.location.href='test.php?test=2'">
                    <span><?php echo getNumberToTestKanji() ?></span>
                </div>
                <?php } ?>
            </div>
        <?php
        }?>

        <div class="page">
            <div class="menu-onglet btn-group" role="group" aria-label="...">
                <button onclick="document.location.href='index.php'" type="button" class="btn btn-info">Kanji</button>
                <button onclick="document.location.href='vocabularyController.php?word=1'" type="button" class="btn btn-default">Vocabulary</button>
            </div>
        <table class="table">
        <tr class="">
            <td>SVG</td>
            <td>Meaning</td>
            <td>訓読み</td>
            <td>音読み</td>
        </tr>
<?php
    if(isset($allKanji)){
        foreach ($allKanji as $kanji){?>
            <tr <?php echo "onclick=document.location.href='review.php?id=".$kanji->getId()."'" ?> class=<?php echo "'listKanji ".$kanji->getClass()."'" ?>>
                <td><img class="miniature" src="<?php echo "https://github.com/VivienVandaele/kanji/raw/master/images/".$kanji->getName().".svg?sanitize=true" ?>"></td>
                <td><?php echo $kanji->getMeaning() ?></td>
                <td><?php echo $kanji->getKun() ?></td>
                <td><?php echo $kanji->getOn() ?></td>
            </tr>
        <?php
        }
    }?>
    </table>
    </div>
</body>
</html>
