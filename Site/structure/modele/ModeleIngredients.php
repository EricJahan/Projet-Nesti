<?php

/**
 * Description of ModeleIngredients
 *
 * @author ThunderMephisto
 */
class ModeleIngredients extends Connexion {

    function afficheAllIngredients() {
        $query = new QueryClass();
        $strQuery = $query->queryAllIngredients();

        $stmt = $this->getBdd()->query($strQuery);

        /***********************/

        $array = [];

//        $conn = $this->getBdd();

//        $sql = "SELECT * FROM `ingredients` WHERE 1";

        foreach ($stmt as $row) {

            $recipeObject = new StructIngredients();

            $recipeObject->setId($row['id']);
            $recipeObject->setNomIngredient($row['nom']);
            $recipeObject->setPrixAuKilo($row['prix']);
            $recipeObject->setCategorie($row['categorie']);
            $recipeObject->setUniteMesure($row['id_unite_mesures']);

            array_push($array, $recipeObject);
        }
        return $array;
    }
    
        function afficheSearchIngredients($searchBar) {
            $query = new QueryClass();
            $strQuery = $query->querySearchIngredients();
            $stmt = $this->getBdd()->prepare($strQuery);
            $stmt->bindParam(':maVar', '%' . $searchBar . '%');
        }


}