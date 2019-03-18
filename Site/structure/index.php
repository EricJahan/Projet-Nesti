<?php


if(isset($_GET['loc']) && !empty($_GET['loc'])) {
    $loc = $_GET['loc'];
  
}else {
    $loc = "home";
}

switch ($loc) {
    case 'recipe':
        include_once("controler/controlOneRecipe.php");
        break;
    case 'allRecipes':
        include_once("controler/controlAllRecipes.php");
        break;

}

include("vue/template.php");

?>
