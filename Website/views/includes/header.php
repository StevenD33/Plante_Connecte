<?php

if (isset($_SESSION['pseudo']) && isset($_SESSION['pw']) && isset($_SESSION['conn_id'])) { ?>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="index.php">Projet UF Développement</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <?php if ($page == 'home') {echo 'active';}?>">
                    <a class="nav-link" href="index.php">Accueil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php if ($page == 'mesplantes') {echo 'active';}?>">
                    <a class="nav-link" href="index.php?page=mesplantes">Ma plante <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="views/includes/deco.php">Déconnexion</a>
            </li>
        </ul>
    </nav>

<?php 
} if (isset($_SESSION['pseudo'])  && isset($_SESSION['pw']) && isset($_SESSION['conn_id']) && $_SESSION['pseudo'] == 'admin') { ?>

<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="index.php">Projet UF Développement</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <?php if ($page == 'home') {echo 'active';}?>">
                <a class="nav-link" href="index.php">Accueil <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item <?php if ($page == 'mesplantes') {echo 'active';}?>">
                <a class="nav-link" href="index.php?page=mesplantes">Ma plante <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item <?php if ($page == 'ajout') {echo 'active';}?>">
                    <a class="nav-link" href="index.php?page=ajout">Ajout BDD <span class="sr-only">(current)</span></a>
                </li>
        </ul>
    </div>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link" href="views/includes/deco.php">Déconnexion</a>
        </li>
    </ul>
</nav>

<?php
} else { ?>
    
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="index.php">Projet UF Développement</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <?php if ($page == 'home') {echo 'active';}?>">
                    <a class="nav-link" href="index.php">Accueil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php if ($page == 'ajout') {echo 'active';}?>">
                    <a class="nav-link" href="index.php?page=ajout">Ajout BDD <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php if ($page == 'inscription') {echo 'active';}?>">
                    <a class="nav-link" href="index.php?page=inscription">Inscription<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item <?php if ($page == 'connexion') {echo 'active';}?>">
                    <a class="nav-link" href="index.php?page=connexion">Connexion<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>

<?php
} ?>