<?php

include_once("Connexion.php");
include_once("modele/StructRecette.php");

class ModeleRecipe extends Connexion
{

    function allRecipes()
    {
        $array = [];

        $conn = $this->getBdd();

        $sql = "SELECT id, nom, quantite_personne, tempsPreparation, `description` FROM `recettes` WHERE 1";

        foreach ($conn->query($sql) as $row) {

            $recipeObject = new StructRecette();

            $recipeObject->setId($row['id']);
            $recipeObject->setNom($row['nom']);
            $recipeObject->setDescription($row['description']);
            $recipeObject->setQuantite($row['quantite_personne']);
            $recipeObject->setTemp($row['tempsPreparation']);

            array_push($array, $recipeObject);

            /*  print $row['description'] . "\t";
              print $row['quantite_personne'] . "\n";
              print $row['tempsPreparation'] . "\n"; */
        }
        return $array;
    }
    function oneRecipeById($id) {
        $conn = $this->getBdd();
        $recipeObject = new StructRecette();
        $sql = "SELECT id, nom, quantite_personne, tempsPreparation, `description` FROM `recettes` WHERE id=" . $id . " LIMIT 1";

        foreach ($conn->query($sql) as $row) {

            

            $recipeObject->setId($row['id']);
            $recipeObject->setNom($row['nom']);
            $recipeObject->setDescription($row['description']);
            $recipeObject->setQuantite($row['quantite_personne']);
            $recipeObject->setTemp($row['tempsPreparation']);
        }
        return $recipeObject;
    }
}
