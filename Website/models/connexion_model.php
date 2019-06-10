<?php

if (isset($_POST) && !empty($_POST)) {
    if (isset($_POST['conn_pseudo']) && !empty($_POST['conn_pseudo']) && isset($_POST['conn_pw']) && !empty($_POST['conn_pw'])) {
        $pseudo = $_POST['conn_pseudo'];
        $pw     = $_POST['conn_pw'];
        $req = $db->query('SELECT * FROM utilisateur WHERE utilisateur_login = \'' . $pseudo . '\' and utilisateur_password = \'' . $pw . '\'');
        $result = $req->fetch();
        debug($result);
        if ($result['utilisateur_login'] == $pseudo && $result['utilisateur_password'] == $pw) {

            $_SESSION['pseudo'] = $result['utilisateur_login'];
            $_SESSION['pw'] = $result['utilisateur_password'];
            $_SESSION['conn_id'] = $result['utilisateur_id'];

            header('location: index.php');
        }

    }
}