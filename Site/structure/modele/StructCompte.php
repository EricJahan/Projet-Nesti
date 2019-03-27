<?php

/**
 * Description of StructCompte
 *
 * @author ThunderMephisto
 */
class StructCompte {

    private $id;
    private $nom;
    private $prenom;
    private $mail;
    private $numeroRue;
    private $nomRue;
    private $codePostal;
    private $ville;
    private $pays;

    function getId() {
        return $this->id;
    }

    function getNom() {
        return $this->nom;
    }

    function getPrenom() {
        return $this->prenom;
    }

    function getMail() {
        return $this->mail;
    }
    function getNumeroRue() {
        return $this->numeroRue;
    }

    function setNumeroRue($numeroRue) {
        $this->numeroRue = $numeroRue;
    }

        function getNomRue() {
        return $this->nomRue;
    }

    function getCodePostal() {
        return $this->codePostal;
    }

    function getVille() {
        return $this->ville;
    }

    function getPays() {
        return $this->pays;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNom($nom) {
        $this->nom = $nom;
    }

    function setPrenom($prenom) {
        $this->prenom = $prenom;
    }

    function setMail($mail) {
        $this->mail = $mail;
    }

    function setNomRue($nomRue) {
        $this->nomRue = $nomRue;
    }

    function setCodePostal($codePostal) {
        $this->codePostal = $codePostal;
    }

    function setVille($ville) {
        $this->ville = $ville;
    }

    function setPays($pays) {
        $this->pays = $pays;
    }
}
?>