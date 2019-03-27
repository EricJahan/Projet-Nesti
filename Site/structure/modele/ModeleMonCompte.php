<?php

include_once ("Connexion.php");
include_once ("modele/ModeleMonCompte.php");

class ModeleMonCompte extends Connexion {
    
    function afficheCompte(){
        
        $conn = $this->getBdd();
        
        $sql = "";
    }
}