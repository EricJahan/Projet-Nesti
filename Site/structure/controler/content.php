<?php
        switch($loc){

        case "allRecipes":
        include("vue/home.php");
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
        case "company":
        include("vue/company.php");
        break;
        case "legal":
        include("vue/legal.php");
        break;
        case "contact":
        include("vue/contact.php");
        break;
        default:
        include("vue/404.php");
        }

?>