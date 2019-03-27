<?php

/**
 * Description of AutoLoader
 *
 * @author ThunderMephisto
 */
class AutoLoader {
    
    static function register(){
        spl_autoload_register(array(__CLASS__, 'autoLoad'));
    }

    static function autoLoad($className) {
        include_once '../Site/structure/modele/' . $className . '.php';
    }

}
?>