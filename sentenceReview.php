<?php
    mb_internal_encoding("UTF-8");//Sets the internal character encoding to UTF-8, for mb_substr to work
    error_reporting(E_ALL ^ E_WARNING);
    include_once("Sentence.php");

    if(isset($_GET["id"])){
        $sentence = getSentence($_GET["id"]);
    }
    include_once("header.html");
?>
<script>
    Mousetrap.bind('m', function() { document.location.href='sentenceController.php' });
</script>
<body>
    <div id="page" class="page">
        <button onclick="document.location.href='sentenceController.php'" class="btn btn-link btn-lg menu"><span class="glyphicon glyphicon-align-justify"></span></button>
        <div>
            <div class="descriptionTable">
                <table>
                    <tr>
                        <td class="reviewKanji"><span class="description">Sentence</span><br>
							<?php echo $sentence->getSentence(); ?></span>
						</td>
                        <td class="reviewKanji"><span class="description">Meaning</span><br><?php echo $sentence->getMeaning() ?></td>
                    </tr>
                </table>
            </div>
			<?php
			if(file_exists("webm/".$sentence->getId().".webm")) {?>
				<video id="vid" controls width="100%" autoplay loop>
					<source <?php echo "src='webm/".$sentence->getId().".webm' type='video/webm'" ?> >
				</video>
			<?php
			}?>
        </div>
    </div>
</body>
</html>
