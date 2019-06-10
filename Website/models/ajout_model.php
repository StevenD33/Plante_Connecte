<?php
$form_donne = $_POST['envoie_donne'];
$form_plante = $_POST['envoie_plante'];
$form_planteU = $_POST['envoie_planteUtilisateur'];
$form_utilisateur = $_POST['envoie_utilisateur'];

if (!empty($_POST)) {
    // Formulaire Donnée_capteur
    if (isset($form_donne) && !empty($form_donne)) {
        if (isset($_POST['donne0']) && !empty($_POST['donne0']) && isset($_POST['donne1']) && !empty($_POST['donne1']) && isset($_POST['donne2']) && !empty($_POST['donne2']) 
        && isset($_POST['donne3']) && !empty($_POST['donne3']) && isset($_POST['donne4']) && !empty($_POST['donne4']) && isset($_POST['donne5']) && !empty($_POST['donne5'])) {

            $donnee_id = (int)$_POST['donne0'];
            $donnee_date = $_POST['donne1'];
            $donnee_luminosite = (int)$_POST['donne2'];
            $donnee_humidite = (int)$_POST['donne3'];
            $donnee_temperature = (int)$_POST['donnee4'];
            $donnee_fk_utilisateur_id = (int)$_POST['donne5'];

            $req = $db->prepare('INSERT INTO donnée_capteur (donnee_date, donnee_luminosite, donnee_humidite, donnee_temperature, fk_plante_utilisateur_id) VALUE (?, ?, ?, ?, ?)');
            $req->execute([$donnee_date, $donnee_luminosite, $donnee_humidite, $donnee_temperature, $donnee_fk_utilisateur_id]);
        }
    }

    // Formulaire Plantes
    if (isset($form_plante) && !empty($form_plante)) {
        if (isset($_POST['plante1']) && !empty($_POST['plante1']) && isset($_POST['plante2']) && !empty($_POST['plante2']) 
        && isset($_POST['plante3']) && !empty($_POST['plante3']) && isset($_POST['plante4']) && !empty($_POST['plante4']) && isset($_POST['plante5']) && !empty($_POST['plante5']) 
        && isset($_POST['plante6']) && !empty($_POST['plante6']) && isset($_POST['plante7']) && !empty($_POST['plante7']) && isset($_POST['plante8']) && !empty($_POST['plante8'])) {
  
            $nom    =   $_POST['plante1'];
            $desc   =   $_POST['plante2'];
            $photo  =   $_POST['plante3'];
            $hum    =   $_POST['plant4'];
            $temp   =   $_POST['plante5'];
            $lumi   =   $_POST['plante6'];
            $plantation    =   $_POST['plante7'];
            $periode    = $_POST['plante8'];

            $req = $db->prepare('INSERT INTO plante (plante_nom, plante_description, plante_photo, plante_humidite_opti, plante_temperature_opti, plante_luminosite_opti, plante_periode_plantation, plante_periode_floraison) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)');
            $req->execute([$nom, $desc, $photo, $hum, $temp, $lumi, $plantation, $periode]);
        }
    }

}