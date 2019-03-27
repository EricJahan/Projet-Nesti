<?php 
//include_once("modele/ModeleRecettes.php");
//Instanciation de la class
$modeleRecipe  = new ModeleRecettes();

$recipeArray = $modeleRecipe -> allRecipes();

/*var_dump -- Permet d'afficher en brut les donées */
//var_dump($recipeArray);

?>