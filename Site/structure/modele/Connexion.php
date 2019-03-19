<?php

class Connexion
{

    private $bdd;

    private function connect()
    {
        try {
            $user = $_SERVER['HTTP_USER_AGENT'];

            if (stristr($user, 'Macintosh')) {
                $mdp = "root";
            } else {
                $mdp = "";
            }
            $this->bdd = new PDO('mysql:host=localhost;dbname=Projet-Nesti;charset=utf8', 'root', $mdp);
            //double requete pour plus de croquettes
        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
    }
 
    public function getBdd()
    {
        if ($this->bdd == null) {
            $this->connect();
        }
        return $this->bdd;
    }
}
 