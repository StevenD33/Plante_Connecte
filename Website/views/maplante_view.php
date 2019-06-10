<?php



if ($_GET['id']) {
   
    $id = (int)$_GET['id'];
    $req = $db->query('SELECT * FROM donnée_capteur WHERE fk_plante_utilisateur_id = ' .$id );
    $donne = $req->fetchall();
    ?>

    <!doctype html>
    <html>
    
    <head>
    
        <?php include_once 'views/includes/head.php'?>
    
        <title>Mes plantes</title>
    
    </head>
    
    <body>
    
        <?php include_once 'views/includes/header.php'?>

    <?php
    
    $fichier = fopen('assets/python/recup.py', 'r+');
    for ($i=0; $i < 37; $i++) {
        $ligne = fgets($fichier);
        if ($i ==36) {
            $newligne = str_replace(substr($ligne, -2, -1), $id, $ligne);
        }
    }
    fclose($fichier);


    $monfichier = file_get_contents('assets/python/recup.py');
    $str = str_replace($ligne, $newligne, $monfichier);
    file_put_contents('assets/python/recup.py', '');
    file_put_contents('assets/python/recup.py', $str);
    

    shell_exec('python assets/python/recup.py');

}   ?>