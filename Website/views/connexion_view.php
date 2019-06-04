<!doctype html>
<html>

<head>

    <?php include_once 'views/includes/head.php'?>

    <title><?= ucfirst($page) ?></title>

</head>

<body>

    <?php include_once 'views/includes/header.php'?>

    <div id="main_inscription">

    <h1>Connexion</h1>

        <form method="POST">
            <div class="form-group">
                <label>Votre pseudo</label>
                <input name="conn_pseudo" type="text" class="form-control" id="exampleInputEmail1">
            </div>
            <div class="form-group">
                <label>Votre mot de passe</label>
                <input name="conn_pw" type="password" class="form-control" id="exampleInputEmail1">
            </div>
            <input name="envoie_conn" type="submit" class="btn btn-primary">
        </form>

    </div>

    <?php include_once 'views/includes/footer.php'?>

</body>

</html>