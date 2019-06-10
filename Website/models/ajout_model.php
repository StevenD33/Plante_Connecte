<?php

$form_plante = $_POST['envoie_plante'];
    // Formulaire Plantes
    if (isset($form_plante) && !empty($form_plante)) {
        if (isset($_POST['plante1']) && !empty($_POST['plante1']) && isset($_POST['plante2']) && !empty($_POST['plante2']) 
        && isset($_POST['plante3']) && !empty($_POST['plante3']) && isset($_POST['plante4']) && !empty($_POST['plante4']) && isset($_POST['plante5']) && !empty($_POST['plante5']) 
        && isset($_POST['plante6']) && !empty($_POST['plante6']) && isset($_POST['plante7']) && !empty($_POST['plante7']) && isset($_POST['plante8']) && !empty($_POST['plante8'])) {
  
            $nom    =   $_POST['plante1'];
            $desc   =   $_POST['plante2'];
            $photo  =   $_POST['plante3'];
            $hum    =   $_POST['plante4'];
            $temp   =   $_POST['plante5'];
            $lumi   =   $_POST['plante6'];
            $plantation    =   $_POST['plante7'];
            $periode    =      $_POST['plante8'];
            
            $req = $db->exec('INSERT INTO plante (plante_nom, plante_description, plante_photo, plante_humidite_opti, plante_temperature_opti, plante_luminosite_opti, plante_periode_plantation, plante_periode_floraison)
                                 VALUES (\''.$nom.'\',\''.$desc.'\',\''.$photo.'\',\''.$hum.'\',\''.$temp.'\',\''.$lumi.'\',\''.$plantation.'\',\''.$periode.'\')');
    }
}