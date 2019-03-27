<?php
/*
include_once 'modele/QueryClass.php';
include_once 'modele/Connexion.php';
include_once 'modele/StructIngredients.php';
include_once 'modele/ModeleIngredients.php';
 * 
 */
$modeleIngredient = new ModeleIngredients();
$afficheTousIngredients = $modeleIngredient->afficheAllIngredients();
?>