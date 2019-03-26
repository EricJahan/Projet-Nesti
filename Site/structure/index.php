<?php

if (isset($_GET['loc']) && !empty($_GET['loc'])) {
    $loc = $_GET['loc'];
} else {
    $loc = "home";
}
$title = $loc;
switch ($loc) {
    case 'recipe':
        include_once "controler/controlUneRecette.php";
        break;
    case 'home':
        include_once "controler/controlRecettes.php";
        break;
    case 'recette':
        include_once "controler/controlRecettes.php";
        break;
    case 'uneRecette':
        include_once "controler/controlUneRecette.php";
        break;
    case 'magasin':
        include_once "controler/controlIngredient.php";
        break;
 
}

include("vue/template.php");
