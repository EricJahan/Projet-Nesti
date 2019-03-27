<?php

$get_id = filter_input(INPUT_GET,"id", FILTER_VALIDATE_INT);
$recipe = new StructRecette();


if ($get_id){
   $modeleRecipe = new ModeleRecettes();
   $recipe = $modeleRecipe->oneRecipeById($get_id);
}


   
?>