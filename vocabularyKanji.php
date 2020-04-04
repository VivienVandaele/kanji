<?php
include_once("header.html");
include_once("Kanji.php");
include_once("Word.php");

$allKanji = getAllKanji();
$allWords = getAllWordsW();
?>


<body>
        <div class="page">
            <div class="menu-onglet btn-group" role="group" aria-label="...">
                <button onclick="document.location.href='index.php'" type="button" class="btn btn-default">Kanji</button>
                <button onclick="document.location.href='vocabularyController.php?word=1'" type="button" class="btn <?php if($_GET['word']==1) echo 'btn-info';else echo 'btn-default' ?>">Vocabulary</button>
<!--                <button onclick="document.location.href='vocabularyController.php?word=2'" type="button" class="btn <?php if($_GET['word']==2) echo 'btn-info';else echo 'btn-default' ?>"">Sentences</button>-->
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
            <td>Kanji</td>
            <td>Word</td>
            <td>Meaning</td>
        </tr>
<?php
    if(isset($allWords)){
        foreach ($allWords as $word){?>
            <?php
                $str = $word->getCharacter();
                $strl= mb_strlen($str);
                for( $i = 0; $i <= $strl; $i++ ) {
                    $char = mb_substr($str, $i, 1);
                    if(isKanji($char) and !isCharacterPresent($char)){
require_once 'unirest-php-master/src/Unirest.php';
Unirest\Request::verifyPeer(false);
$response = Unirest\Request::get("https://kanjialive-api.p.mashape.com/api/public/kanji/".urlencode($char),
  array(
    "X-Mashape-Key" => "17JphCaAaGmshgo7F3QbDQNTwIS2p1rIt8hjsnf8pboxNEenCm"
  )
);
    $var = json_decode($response->raw_body,true);
if(isset($var["error"])){
    $class="danger";
}
else{
    $class="success";
}
                        echo "<tr class=".$class."><td class='reviewKanji'><a target='_blank' href='http://jisho.org/search/".$char." %23kanji'>".$char."</a></td><td class='reviewKanji'>".$word->getCharacter()."</td><td class='reviewKanji'>".$word->getMeaning()."</td></tr>";
                    }
                } ?>
        <?php
        }
    }?>
    </table>
    </div>
</body>
</html>
