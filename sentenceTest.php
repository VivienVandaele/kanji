<?php
    mb_internal_encoding("UTF-8");//Sets the internal character encoding to UTF-8, for mb_substr to work
    error_reporting(E_ALL ^ E_WARNING);
    include_once("Sentence.php");

	$sentence = getOneToTestSentences();
	if (!isset($sentence))
		header('Location: sentenceController.php');
	include_once("header.html");
	?>
	<script>
		Mousetrap.bind('space', function() { setVisibilityTestKanji() });
		Mousetrap.bind('c', function() { redirectSentenceNoAjax(<?php echo $sentence->getId() ?>) });
		Mousetrap.bind('v', function() { redirectSentence(<?php echo $sentence->getId() ?>) });
		Mousetrap.bind('m', function() { document.location.href='sentenceController.php' });
	</script>

<body onload="setVisibilityTestKanji()">
    <div id="page" class="page">
        <button onclick="document.location.href='sentenceController.php'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>
        <div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Sentence</span><br><span class="toHideTestMeaning">
                        <?php echo $sentence->getSentence();?></span></td>
                        <td class="reviewKanji"><span class="description">Meaning</span><br><span class="toHideTestKanji"><?php echo $sentence->getMeaning() ?></span></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="boutons">
            <button id="boutonLater" <?php echo "onclick=redirectSentenceNoAjax(".$sentence->getId().")";  ?>  onmouseout="changeColorGlyphiconLater()" onmouseover="changeColorGlyphiconLater()" type="button" class="boutonLater btn btn-lg btn-default toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-remove glyphiconLater" aria-hidden="true"></span>
            </button>
            <button id="boutonSee" onclick="setVisibilityTestKanji()" onmouseout="" onmouseover="" type="button" class="boutonSee btn btn-lg btn-default" aria-label="Left Align">
                <span id="glyphiconBoutonLater" class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>
            <button id="boutonOk" <?php  echo "onclick=redirectSentence(".$sentence->getId().")" ?> onmouseout="changeColorGlyphiconOk()" onmouseover="changeColorGlyphiconOk()" type="button" class="boutonOk btn btn-default btn-lg toHideTestMeaning toHideTestKanji" aria-label="Left Align">
                <span id="glyphiconBoutonOk" class="glyphicon glyphicon-ok glyphiconOk" aria-hidden="true"></span>
            </button>
			<?php
			if(file_exists("webm/".$sentence->getId().".webm")) {?>
				<div style="margin-top: 20px">
					<video id="vid" controls width="100%" autoplay loop>
						<source <?php echo "src='webm/".$sentence->getId().".webm' type='video/webm'" ?> >
					</video>
				</div>
			<?php
			}?>
        </div>
    </div>
</body>
</html>
