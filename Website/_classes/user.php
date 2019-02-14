<?php


class user
{
    public $id;
    public $name;

    function __construct(){

        global $db;


        $requser = $db->prepare('SELECT * FROM user WHERE id = ?');
        $requser->execute([$id]);
        $data = $requser->fetch();
        $this->id = $id;
    }

    static function getAlluser() {
        global $db;
        $requser = $db->prepare('SELECT * FROM user');
        $requser->execute([]);
        return $requser->fetchAll();
    }

}