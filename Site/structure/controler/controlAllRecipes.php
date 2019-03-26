<?php 
include_once("modele/ModeleRecipe.php");
//Instaciation de la class
$modeleRecipe  = new ModeleRecipe();

$recipeArray = $modeleRecipe -> allRecipes();

/*var_dump -- Permet d'afficher en brut les donées */
//var_dump($recipeArray);

?>
