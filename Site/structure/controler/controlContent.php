<?php

switch ($loc) {

        case "home":
                include("vue/home.php");
                break;
        case "moncompte":
                include("vue/monCompte.php");
                break;
        case "magasin":
                include("vue/magasin.php");
                break;
        case "panier":
                include("vue/panier.php");
                break;
        case "recette":
                include("vue/recette.php");
                break;
        case "uneRecette":
                include("vue/uneRecette.php");
                break;
        case "contact":
                include("vue/contact.php");
                break;
        default:
                include("vue/404.php");
}
        
 ?>