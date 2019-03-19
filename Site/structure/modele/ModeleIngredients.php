<?php

/**
 * Description of ModeleIngredients
 *
 * @author ThunderMephisto
 */
class ModeleIngredients extends Connexion {

    function afficheAllIngredients(){
        $query = new QueryClass();
        $strQuery = $query ->queryAllIngredients();
        
        $stmt = $this->getBdd()->query($strQuery);
    }
    
    function afficheSearchIngredients(){
        $query = new QueryClass();
        $strQuery = $query ->querySearchIngredients();
        $stmt = $this->getBdd()->prepare($strQuery);
        $stmt -> bindParam(':maVar', '%'.$searchBar.'%');
    }
}
