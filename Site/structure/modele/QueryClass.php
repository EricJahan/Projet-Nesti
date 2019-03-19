<?php

/**
 * Description of QueryClass
 *
 * @author ThunderMephisto
 */
class QueryClass {
    
    function queryAllIngredients(){
        return "SELECT * FROM `ingredients` WHERE 1";
    }
    
    function querySearchIngredients(){
        return "SELECT * FROM `ingredients` WHERE `nom` LIKE :maVar";
    }
}
