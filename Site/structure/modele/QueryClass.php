<?php

/**
 * Description of QueryClass
 *
 * @author ThunderMephisto
 */
class QueryClass {

    function queryAllIngredients() {
        return "SELECT * FROM `ingredients` WHERE 1";
    }

    function querySearchIngredients() {
        return "SELECT * FROM `ingredients` WHERE `nom` LIKE 1";
    }

    function queryUnCompte() {
        return "SELECT
                    `utilisateurs`.id,
                    `nom`,
                    `prenom`,
                    `mail`,
                    `adresses`.`numeroRue`,
                    `adresses`.`nomRue`,
                    `adresses`.`codePostal`,
                    `adresses`.`ville`,
                    `adresses`.`pays`
                FROM
                    `utilisateurs`
                JOIN adresses 
                ON adresses.id_utilisateurs = utilisateurs.id
                WHERE `utilisateurs`.id = 1";
    }
}
