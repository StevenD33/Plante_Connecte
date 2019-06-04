<!doctype html>
<html>

<head>

    <?php include_once 'views/includes/head.php'?>

    <title><?= ucfirst($page) ?></title>

</head>

<body>

    <?php include_once 'views/includes/header.php'?>

    <div id="main_inscription">

    <h1>Inscription</h1>

    <h2>Merci d'inscrire les champs ci dessous</h2>

        <form method="POST">
            <div class="form-group">
                <label>Nom</label>
                <input name="insc_nom" type="text" class="form-control" id="exampleInputEmail1">
            </div>
            <div class="form-group">
                <label>Prénom</label>
                <input name="insc_prenom" type="text" class="form-control" id="exampleInputEmail1">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input name="insc_email" type="email" class="form-control" id="exampleInputEmail1">
            </div>
            <div class="form-group">
                <label>Pseudo</label>
                <input name="insc_pseudo" type="text" class="form-control" id="exampleInputEmail1">
            </div>
            <div class="form-group">
                <label>Mot de passe</label>
                <input name="insc_pw" type="password" class="form-control" id="exampleInputEmail1">
            </div>
            <input name="envoie_insc" type="submit" class="btn btn-primary">
        </form>

    </div>

    <?php include_once 'views/includes/footer.php'?>

</body>

</html>