<?php
$form_donne = $_POST['envoie_donne'];
$form_plante = $_POST['envoie_plante'];
$form_planteU = $_POST['envoie_planteUtilisateur'];
$form_utilisateur = $_POST['envoie_utilisateur'];

if (!empty($_POST)) {
    // Formulaire Donnée_capteur
    if (isset($form_donne) && !empty($form_donne)) {
        if (isset($_POST['donne0']) && !empty($_POST['donne0']) && isset($_POST['donne1']) && !empty($_POST['donne1']) && isset($_POST['donne2']) && !empty($_POST['donne2']) && isset($_POST['donne3']) && !empty($_POST['donne3']) && isset($_POST['donne4']) && !empty($_POST['donne4']) && isset($_POST['donne5']) && !empty($_POST['donne5'])) {
            
            $donnee_id = $_POST['donne0'];
            $donnee_date = $_POST['donne1'];
            $donnee_luminosite = $_POST['donne2'];
            $donnee_humidite = $_POST['donne3'];
            $donnee_temperature = $_POST['donnee4'];
            $donnee_fk_utilisateur_id = $_POST['donne5'];

            $req = $db->prepare('INSERT INTO donnée_capteur (donnee_id, donnee_date , donnee_luminosite, donnee_humidite, donnee_temperature, fk_plante_utilisateur_id) VALUE (?, ?, ?, ?, ?, ?)');
            $req->execute([$donnee_id, $donnee_date, $donnee_luminosite, $donnee_humidite, $donnee_temperature, $donnee_fk_utilisateur_id]);
        }
    }

    // Formulaire Plantes
    if (isset($form_plante) && !empty($form_plante)) {
        echo 'wow plante';
    }

    // Formulaire Plante_utilisateur
    if (isset($form_planteU) && !empty($form_planteU)) {
        echo 'wow planteuuuuu';
    }

    // Formulaire Utilisateur
    if (isset($form_utilisateur) && !empty($form_utilisateur)) {
        echo 'wow utiliiiii';
    }
}