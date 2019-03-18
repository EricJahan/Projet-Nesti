<?php 
include_once("modele/ModeleRecipe.php");
//Instaciation de la class
$modeleRecipe  = new ModeleRecipe();

$recipeArray = $modeleRecipe -> allRecipes();


?>