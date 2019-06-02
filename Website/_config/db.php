<?php
    $dbuser = 'root';
    $dbpswd = 'root';
    $dbhost = 'localhost';
    $dbname = 'planteco';

    $db = new PDO('mysql:host='.$dbhost.';dbname='.$dbname.';charset=utf8', $dbuser, $dbpswd);
?>