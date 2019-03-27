<?php
    /*include_once '../modele/Class_connexion.php';
    include_once '../modele/Class_compte.php';
   */
    $login = filter_input(INPUT_POST, 'login');
    $password = filter_input(INPUT_POST, 'password');

    $user = new Class_compte();
    $user->setLogin($login);
    $user->setPassword($password);

    $user->verif_connexion();

    ?>