<?php

/**
 * Description of StructIngredients
 *
 * @author ThunderMephisto
 */
class StructIngredients {

    private $id;
    private $nomIngredient;
    private $prixAuKilo;
    private $categorie;
    private $uniteMesure;
    private $poids;
    
    function getId() {
        return $this->id;
    }

    function getNomIngredient() {
        return $this->nomIngredient;
    }

    function getPrixAuKilo() {
        return $this->prixAuKilo;
    }

    function getCategorie() {
        return $this->categorie;
    }

    function getUniteMesure() {
        return $this->uniteMesure;
    }

    function getPoids() {
        return $this->poids;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNomIngredient($nomIngredient) {
        $this->nomIngredient = $nomIngredient;
    }

    function setPrixAuKilo($prixAuKilo) {
        $this->prixAuKilo = $prixAuKilo;
    }

    function setCategorie($categorie) {
        $this->categorie = $categorie;
    }

    function setUniteMesure($uniteMesure) {
        $this->uniteMesure = $uniteMesure;
    }

    function setPoids($poids) {
        $this->poids = $poids;
    }
}

?>