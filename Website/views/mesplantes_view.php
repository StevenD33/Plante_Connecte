<?php
$req = $db->query('SELECT utilisateur_id FROM utilisateur WHERE utilisateur_login = \'' . $_SESSION['pseudo'] .'\'');
$utilisateur_id = $req->fetch();

$_SESSION['id'] = $utilisateur_id;

$req = $db->query('SELECT * FROM plante_utilisateur WHERE fk_utilisateur_id = ' . $utilisateur_id[0]);
$mesplantes = $req->fetchall();
?>

<!doctype html>
<html>

<head>

    <?php include_once 'views/includes/head.php'?>

    <title>Mes plantes</title>

</head>

<body>

    <?php include_once 'views/includes/header.php'?>

    <h1 style="text-align:center;">Vos plantes enregistrées</h1>

    <div id="card">
    <?php
    $i = 0;
    foreach ($mesplantes as $plante) { 

    $req = $db->query('SELECT * FROM plante WHERE plante_id = '.$plante['fk_plante_id']);
    $img = $req->fetch();?>

    <div class="card">
        <div class="pic" style="background-image: url('assets/img/<?= $img['plante_photo'] ?>');">
        </div>
        <div class="text">
            <div class="">
                <p><?= ucfirst($plante['plante_nom'])?>.</p>
            </div>
            <div>
            <button type="button" class="btn btn-outline-primary" onclick="document.location='index.php?page=maplante&id=<?= $plante['plante_id'] ?>'">En savoir plus</button>
            </div>
        </div>
    </div>

    <?php
    $i += 1;
    } ?>

    </div>

    <div id="form">
    
    <h3>Ajouter une plante ?</h3>

    <form method="POST">
        <div class="form-group">
            <label><strong>Nom de la plante :</strong></label>
            <input name="nom" type="text" class="form-control">
            <label for="pet-select">Quel est votre plante ?</label>
            <select name="plante">
            <?php
            $req = $db->query('SELECT * FROM plante');
            $nomPlantes = $req->fetchAll();
            foreach ($nomPlantes as $nom) { ?>
                <option value="<?= $nom['plante_nom'] ?>"><?= ucfirst($nom['plante_nom']) ?></option>
            <?php
            } ?>
            </select>
            <br>
            <input name="envoie_plante_nom" type="submit" class="btn btn-primary">
        </div>
    </form>
    </div>
</body>

</html>