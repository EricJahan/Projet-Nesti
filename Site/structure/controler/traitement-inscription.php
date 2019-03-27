<?php

$login = filter_input(INPUT_POST, "login");
$password = filter_input(INPUT_POST, "password");
$pass_confirm = filter_input(INPUT_POST, "pass-confirm");

if ($password == $pass_confirm) {
    echo ("Les mots de passe correspondent");
    $user = new Class_compte();
    $user->setLogin($login);
    $user->setPassword($password);

    $user->inscription();
} else {
    die("Les mots de passe ne correspondent pas ");
}
 