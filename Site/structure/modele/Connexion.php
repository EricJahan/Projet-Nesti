<?php 

    class Connexion {

        private $bdd;

        function connexion() {
            try {
                $this -> bdd = new PDO('mysql:host=localhost;dbname=Projet-Nesti;charset=utf8', 'root', '');
                 //$this -> bdd = new PDO('mysql:host=localhost;dbname=Projet-Nesti;charset=utf8', 'root', 'root');
                
            }catch (Exception $e)
            {
                    die('Erreur : ' . $e->getMessage());
            }
        }
    
        public function getBdd(){
            if ($this -> bdd == NULL ){
                $this -> connexion();
            }
            return $this -> bdd;
        }
    }

?>