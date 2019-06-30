<?php
require_once 'unirest-php-master/src/Unirest.php';
Unirest\Request::verifyPeer(false);
$response = Unirest\Request::get("https://kanjialive-api.p.mashape.com/api/public/kanji/".$_POST['kanji'],
  array(
    "X-Mashape-Key" => "17JphCaAaGmshgo7F3QbDQNTwIS2p1rIt8hjsnf8pboxNEenCm"
  )
);
echo $response->raw_body;
?>
