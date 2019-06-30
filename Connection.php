<?php
class Connection{
    private static $bdd = null;

    private function __construct(){
        try{
            self::$bdd = new PDO('mysql:host=localhost:8080;dbname=kanji', 'root', '');
        }
        catch(Exception $e){
            die('Erreur : '.$e->getMessage());
        }
    }

    public static function getBdd(){
        if(is_null(self::$bdd)) new self();
        return self::$bdd;
    }
}
?>
