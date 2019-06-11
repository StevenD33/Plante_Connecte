
<!doctype html>
<html>
<head>

    <?php include_once 'views/includes/head.php'?>

    <title><?= ucfirst($page) ?></title>
    <link rel="stylesheet" type="text/css" href="<?= PATH?>assets/styles/css/accueil.css">

</head>
<body>
<?php include_once 'views/includes/header.php'?>

<div class="program">
    <div class="titlebar">
        <div class="actions">
            <div class="action close"></div>
            <div class="action minimize"></div>
            <div class="action expand"></div>
        </div>
        <div class="title">Terminal</div>
    </div>
    <div class="terminal">
        <div class="lines">
            <div class="line">terminal: Hey faut écrire Help si tu sais pas quoi écrire !</div>
        </div>
        <div class="input">
            <div class="user">Root$:</div>
            <input/>
        </div>
    </div>
</div>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/bootstrap2.js"></script>
<script src="assets/js/bootstrap3.js"></script>
<script src="assets/js/terminal.js"></script>



</body>

</html>