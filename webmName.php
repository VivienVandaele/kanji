<?php

include_once("Connection.php");

function getLastEntryId(){
    $req = Connection::getBdd()->query("SELECT * FROM Sentences ORDER BY id DESC");
    while($data = $req->fetch())
		return $data['id'].".webm";
}

echo getLastEntryId();
