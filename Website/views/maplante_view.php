<?php



if ($_GET['id']) {

    $id = (int)$_GET['id'];
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

    // Recherche des données des capteur dans la BDD
    
    $req = $db->query('SELECT * FROM donnée_capteur WHERE fk_plante_utilisateur_id = ' .$id .' ORDER BY donnee_id DESC LIMIT 1' );
    $donnees = $req->fetch();
    
    // Recherche des données de la plante dans la BDD
    $req = $db->query('SELECT * FROM plante_utilisateur WHERE plante_id = ' .$id);
    $planteUtilisateur = $req->fetch();

    $req = $db->query('SELECT * FROM plante WHERE plante_id = ' . (int)$planteU['fk_plante_id']);
    $plante = $req->fetchall();
    ?>

    <!doctype html>
    <html>
    
    <head>
    
        <?php include_once 'views/includes/head.php'?>
    
        <title>Mes plantes</title>
    
    </head>
    
    <body>
    
        <?php include_once 'views/includes/header.php'?>
    
    <h2 style="text-align: center;">Données de la plante : <strong><?php echo $planteUtilisateur['plante_nom']; ?></strong> !</h2>

    <div id="toutes_card">
        <div class="card_donnee">
            <h3>Humidité</h3>
            <p><?= $donnees['donnee_humidite'] ?> %</p>
        </div>
        <div class="card_donnee">
            <h3>Pression</h3>
            <p><?= $donnees['donnee_luminosite'] ?>mPa</p>
        </div>
        <div class="card_donnee">
            <h3>Température</h3>
            <p><?= $donnees['donnee_temperature'] ?> °C</p>
        </div>
    </div>
<?php
}   ?>