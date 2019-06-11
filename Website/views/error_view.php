<!doctype html>
<html>
<head>

    <?php include_once 'views/includes/head.php'?>
    <link rel="stylesheet" type="text/css" href="<?= PATH?>assets/styles/css/error_page.css">
    <title><?= ucfirst($page) ?></title>
</head>

<body>

    <?php include_once 'views/includes/header.php'?>

    <div class="wrapper">
        <h1>Hmm.</h1>
        <p>tu es perdu ? laisse moi te guider </p>
        <div class="buttons"><a href="<?= PATH ?>accueil">home</a><br/></div>
    </div>
    <div class="space">
        <div class="blackhole"></div>
        <div class="ship"></div>
    </div>

    <?php include_once 'views/includes/footer.php'?>

</body>
</html>
