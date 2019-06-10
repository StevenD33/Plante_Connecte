<?php

if (isset($_POST) && !empty($_POST))  {
    if (isset($_POST['insc_nom']) && !empty($_POST['insc_nom']) && isset($_POST['insc_prenom']) && !empty($_POST['insc_prenom']) && isset($_POST['insc_email']) && !empty($_POST['insc_email']) && isset($_POST['insc_pseudo']) && !empty($_POST['insc_pseudo']) && isset($_POST['insc_pw']) && !empty($_POST['insc_pw'])) {

        $nom    =   $_POST['insc_nom'];
        $prenom =   $_POST['insc_prenom'];
        $email  =   $_POST['insc_email'];
        $pseudo =   $_POST['insc_pseudo'];
        $pw     =   $_POST['insc_pw'];

        $req = $db->prepare('INSERT INTO utilisateur (utilisateur_nom, utilisateur_prenom, utilisateur_email, utilisateur_login, utilisateur_password) VALUE (?, ?, ?, ?, ?)');
        $req->execute([$nom, $prenom, $email, $pseudo, $pw]);
    }
}