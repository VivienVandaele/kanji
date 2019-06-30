<?php
require_once 'unirest-php-master/src/Unirest.php';
Unirest\Request::verifyPeer(false);
$response = Unirest\Request::get("https://jisho.org/api/v1/search/words?keyword=".$_POST['word']
);
echo $response->raw_body;
?>
