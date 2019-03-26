<?php
include_once "modele/StructRecette.php";
include_once "modele/ModeleRecettes.php";

$get_id = filter_input(INPUT_GET,"id", FILTER_VALIDATE_INT);
$recipe = new StructRecette();


if ($get_id){
   $modeleRecipe = new ModeleRecipe();
   $recipe = $modeleRecipe->oneRecipeById($get_id);
}


   
?>