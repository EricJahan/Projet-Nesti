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

        /*         * ******************** */

        $array = [];

        foreach ($stmt as $row) {

            $allIngredients = new StructIngredients();

            $allIngredients->setId($row['id']);
            $allIngredients->setNomIngredient($row['nom']);
            $allIngredients->setPrixAuKilo($row['prix']);
            $allIngredients->setCategorie($row['id_categories']);
            $allIngredients->setUniteMesure($row['id_unite_mesures']);

            array_push($array, $allIngredients);
        }
        return $array;
    }

    /*        function afficheSearchIngredients($searchBar) {
      $query = new QueryClass();
      $strQuery = $query->querySearchIngredients();
      $stmt = $this->getBdd()->prepare($strQuery);
      $stmt->bindParam(':maVar', '%' . $searchBar . '%');
      }
     */
}
