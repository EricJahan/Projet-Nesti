<?php

class StructRecette {

    private $id;
    private $nom;
    private $description;
    private $quantite;
    private $temp;

    /**
     * Get the value of id
     */
    public function getId() {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */
    public function setId($id) {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of nom
     */
    public function getNom() {
        return $this->nom;
    }

    /**
     * Set the value of nom
     *
     * @return  self
     */
    public function setNom($nom) {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get the value of description
     */
    public function getDescription() {
        return $this->description;
    }

    /**
     * Set the value of description
     *
     * @return  self
     */
    public function setDescription($description) {
        $this->description = $description;

        return $this;
    }

    /**
     * Get the value of quantite
     */
    public function getQuantite() {
        return $this->quantite;
    }

    /**
     * Set the value of quantite
     *
     * @return  self
     */
    public function setQuantite($quantite) {
        $this->quantite = $quantite;

        return $this;
    }

    /**
     * Get the value of temp
     */
    public function getTemp() {
        return $this->temp;
    }

    /**
     * Set the value of temp
     *
     * @return  self
     */
    public function setTemp($temp) {
        $this->temp = $temp;

        return $this;
    }

}
