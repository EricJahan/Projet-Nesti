
<?php
include_once '../Site/structure/controler/AutoLoader.php';
AutoLoader::register();

if (isset($_GET['loc']) && !empty($_GET['loc'])) {
    $loc = $_GET['loc'];
} else {
    $loc = "home";
}
$title = $loc;
$fileName = "../Site/structure/controler/";
switch ($loc) {
    case 'recipe':
    case 'uneRecette':
        $fileName .= "controlUneRecette";
        break;
    case 'home':
    case 'recette':
        $fileName .= "controlRecettes";
        break;
    case 'magasin':
        $fileName .= "controlIngredient";
        break;
    case 'contact':
        $fileName .= "controlContact";
        break;
}
$fileName .= ".php";
include_once $fileName;
include("../Site/structure/vue/template.php");

