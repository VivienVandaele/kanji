<body>
        <?php if($numberKanji>0 || $numberMeaning>0 || $numberToReview>0){?>
            <div class="review">
                <?php if($numberToReview>0){ ?>
                <div class="reviewKanjiHeader" onclick="document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberToReview;if($_GET["word"]==1) echo " word"; else echo " sentence";if($numberToReview!=1) echo "s" ?> to review</span>
                </div>
                <?php }if($numberMeaning>0){ ?>
                <div class="testMeaningHeader" onclick="document.location.href='vocabularyTest.php?test=1&word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberMeaning ?> meaning test</span>
                </div>
                <?php }if($numberKanji>0){ ?>
                <div class="testKanjiHeader" onclick="document.location.href='vocabularyTest.php?test=2&word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberKanji ?> japanese test</span>
                </div>
                <?php } ?>
            </div>
        <?php
        }?>

        <div class="page">
            <div class="menu-onglet btn-group" role="group" aria-label="...">
                <button onclick="document.location.href='index.php'" type="button" class="btn btn-default">Kanji</button>
                <button onclick="document.location.href='vocabularyController.php?word=1'" type="button" class="btn <?php if($_GET['word']==1) echo 'btn-info';else echo 'btn-default' ?>">Vocabulary</button>
                <button onclick="document.location.href='vocabularyController.php?word=2'" type="button" class="btn <?php if($_GET['word']==2) echo 'btn-info';else echo 'btn-default' ?>"">Sentences</button>
            </div>

            <form id="form-add" action="vocabularyController.php?word=<?php echo $_GET['word'] ?>" method="post" class="form-inline">
                <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">Word</div>
                <textarea autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" name="word"></textarea>
                </div>
                <div class="input-group">
                    <div class="input-group-addon">Meaning</div>
                    <textarea autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" name="meaning"></textarea>
                </div>
                </div>
                <button type="submit" class="btn btn-success">Add</button>
            </form>
        <table class="table">
        <tr>
            <td><?php if($_GET['word']==1) echo 'Word';else echo 'Sentence'?></td>
            <td>Meaning</td>
        </tr>
<?php
    if(isset($allWords)){
        foreach ($allWords as $word){?>
            <tr <?php echo "onclick=document.location.href='vocabularyReview.php?id=".$word->getId()."&word=".$_GET['word']."'" ?> class=<?php echo "'listKanji ".$word->getClass()."'" ?>>
                <td><?php echo $word->getCharacter() ?></td>
                <td><?php echo $word->getMeaning() ?></td>
            </tr>
        <?php
        }
    }?>
    </table>
    </div>
</body>
</html>
