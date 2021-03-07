<body>
<script>
    Mousetrap.bind('v', function() { document.location.href='sentenceTest.php' });
</script>
        <?php if($numberToTest>0){?>
            <div class="review">
                <div class="testKanjiHeader" onclick="document.location.href='sentenceTest.php'">
                    <span><?php echo $numberToTest ?></span>
                </div>
            </div>
        <?php
        }?>

        <div class="page">
            <div class="menu-onglet btn-group" role="group" aria-label="...">
                <button onclick="document.location.href='index.php'" type="button" class="btn btn-default">漢字</button>
                <button onclick="document.location.href='vocabularyController.php?word=1'" type="button" class="btn btn-default">言葉</button>
                <button onclick="document.location.href='sentenceController.php'" type="button" class="btn btn-info">文</button>
            </div>
            <form id="form-add" action="sentenceController.php" method="post" class="form-inline">
                <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">文</div>
                <textarea autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" type="text" rows="1" class="form-control" name="sentence"></textarea>
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
            <td>文</td>
            <td>翻訳</td>
        </tr>
<?php
    if(isset($allSentences)){
        foreach ($allSentences as $sentence){?>
            <tr <?php echo "onclick=document.location.href='sentenceReview.php?id=".$sentence->getId()."'" ?> class=<?php echo "'listKanji ".$sentence->getClass()."'" ?>>
                <td><?php echo $sentence->getSentence() ?></td>
                <td><?php echo $sentence->getMeaning() ?></td>
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
