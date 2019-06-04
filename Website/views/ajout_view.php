<?php

// Recupere toutes les collones de chaque tables

// Recupere les colonnes de la tables donnée_capteur.... 
// etc..
$req = $db->query('DESCRIBE donnée_capteur;');
$tables_donnee = $req->fetchall();

$req = $db->query('DESCRIBE plante;');
$tables_plante = $req->fetchall();

$req = $db->query('DESCRIBE plante_utilisateur;');
$tables_planteU = $req->fetchall();

?>

<!doctype html>
<html>
<head>

    <?php include_once 'views/includes/head.php'?>

    <title><?= ucfirst($page) ?></title>

</head>

<body>

    <?php include_once 'views/includes/header.php'?>

<div id=form_main>
    <h1>Insertion dans la BDD</h1>

    <br>

    <h2><strong>Table</strong> : donnée_capteur</h2>

    <br>

    <form method="POST">
    <?php
    $i = 0;
    foreach ($tables_donnee as $donnee) { ?>
        <div class="form-group">
            <label><strong>Colonne </strong>: <?= $donnee[0] ?></label>
            <input name="donne<?= $i ?>" type="text" class="form-control" id="exampleInputEmail1">
        </div>
    <?php
    $i += 1;
    } ?>
        <input name="envoie_donne" type="submit" class="btn btn-primary">
    </form>

    <br>
    <hr>
    <br>

    <h2><strong>Table</strong> : plante</h2>

    <br>

    <form method="POST">
    <?php
    $i = 0;
    foreach ($tables_plante as $plantes) { ?>
        <div class="form-group">
            <label><strong>Colonne </strong>: <?= $plantes[0] ?></label>
            <input name="plante<?= $i ?>" type="text" class="form-control" id="exampleInputEmail1">
        </div>
    <?php
    $i += 1;
    } ?>
        <input name="envoie_plante" type="submit" class="btn btn-primary">
    </form>

</div>

    <?php include_once 'views/includes/footer.php'?>

</body>
</html>
