<?php

class ModeleMonCompte extends Connexion {

    function afficheCompte() {
        $query = new QueryClass();
        $strQuery = $query->queryunCompte();

        $stmt = $this->getBdd()->query($strQuery);

        $unCompte = new StructCompte();

        if ($row = $stmt->fetch()) {


            $unCompte->setId($row['id']);
            $unCompte->setNom($row['nom']);
            $unCompte->setPrenom($row['prenom']);
            $unCompte->setMail($row['mail']);
            $unCompte->setNumeroRue($row['numeroRue']);
            $unCompte->setNomRue($row['nomRue']);
            $unCompte->setCodePostal($row['codePostal']);
            $unCompte->setVille($row['ville']);
            $unCompte->setPays($row['pays']);
        }
        return $unCompte;
    }

}
