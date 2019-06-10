<?php
if (isset($_POST)) {
    if (isset($_POST['nom']) && !empty($_POST['nom'])) {
        
        $nom = $_POST['nom'];
        $plante = $_POST['plante'];

        $req = $db->query('SELECT * FROM plante WHERE plante_nom = \''.$plante .'\'');
        $id = $req->fetch();

        $req = $db->prepare('INSERT INTO plante_utilisateur (plante_nom, fk_plante_id, fk_utilisateur_id) VALUE (?, ?, ?)');
        $req->execute([$nom, (int)$id[0], (int)$_SESSION['id'][0]]);
    }
}