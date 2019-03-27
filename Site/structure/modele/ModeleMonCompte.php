<?php

//class ModeleMonCompte extends Connexion {
//    
//    function afficheCompte(){
//        
//        $conn = $this->getBdd();
//        
//        $sql = "";
//    }
//}
class ModeleMonCompte extends Connexion {

    function afficheCompte() {
        $query = new QueryClass();
        $strQuery = $query->queryAllIngredients();

        $stmt = $this->getBdd()->query($strQuery);

        /*         * ******************** */

        $array = [];

        foreach ($stmt as $row) {

            $allIngredients = new StructIngredients();

            $allIngredients->setId($row['id']);
            $allIngredients->setNomIngredient($row['nom']);
            $allIngredients->setPrixAuKilo($row['prenom']);
            $allIngredients->setCategorie($row['mail']);
            $allIngredients->setUniteMesure($row['mdp']);

            array_push($array, $allIngredients);
        }
        return $array;
    }
}