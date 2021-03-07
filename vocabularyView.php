<body>
<script>
    Mousetrap.bind('b', function() { document.location.href='vocabularyTest.php?test=1&word=1' });
    Mousetrap.bind('v', function() { document.location.href='vocabularyTest.php?test=2&word=1' });
</script>
        <?php if($numberKanji>0 || $numberMeaning>0 || $numberToReview>0){?>
            <div class="review">
<!--
                <?php if($numberToReview>0){ ?>
                <div class="reviewKanjiHeader" onclick="document.location.href='vocabularyReview.php?word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberToReview ?></span>
                </div>
				<?php } ?>
-->
				<?php if($numberMeaning>0){ ?>
                <div class="testMeaningHeader" onclick="document.location.href='vocabularyTest.php?test=1&word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberMeaning ?></span>
                </div>
                <?php }if($numberKanji>0){ ?>
                <div class="testKanjiHeader" onclick="document.location.href='vocabularyTest.php?test=2&word=<?php echo $_GET["word"] ?>'">
                    <span><?php echo $numberKanji ?></span>
                </div>
                <?php } ?>
            </div>
        <?php
        }?>

        <div class="page">
            <div class="menu-onglet btn-group" role="group" aria-label="...">
                <button onclick="document.location.href='index.php'" type="button" class="btn btn-default">漢字</button>
                <button onclick="document.location.href='vocabularyController.php?word=1'" type="button" class="btn <?php if($_GET['word']==1) echo 'btn-info';else echo 'btn-default' ?>">言葉</button>
                <button onclick="document.location.href='sentenceController.php'" type="button" class="btn btn-default">文</button>
<!--                <button onclick="document.location.href='vocabularyController.php?word=2'" type="button" class="btn <?php if($_GET['word']==2) echo 'btn-info';else echo 'btn-default' ?>"">Sentences</button>-->
            </div>
            <form id="form-add" action="vocabularyController.php?word=<?php echo $_GET['word'] ?>" method="post" class="form-inline">
                <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">言葉</div>
                <textarea autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" name="word"></textarea>
                </div>
                <div class="input-group">
                    <div class="input-group-addon">翻訳</div>
                    <textarea autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" name="meaning"></textarea>
                </div>
                </div>
                <button type="submit" class="btn btn-success">追加</button>
            </form>
        <table class="table">
        <tr>
            <td><?php if($_GET['word']==1) echo '言葉';else echo 'Sentence'?></td>
            <td>翻訳</td>
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
		<div style="margin-top: 20px; margin-bottom: 50px">
			<button onclick="document.location.href='chartView.php'" type="button" class="btn btn-warning">統計</button>
		</div>
    </div>
</body>
</html>
