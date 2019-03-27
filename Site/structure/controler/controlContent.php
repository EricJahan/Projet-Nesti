<?php

$fileName = "../Site/structure/vue/";

switch ($loc) {
        case "home":
            $fileName .= "home";
                break;
        case "monCompte":
                $fileName .= "monCompte";
                break;
        case "magasin":
                $fileName .= "magasin";
                break;
        case "panier":
                $fileName .= "panier";
                break;
        case "recette":
                $fileName .= "recette";
                break;
        case "uneRecette":
                $fileName .= "uneRecette";
                break;
        case "contact":
                $fileName .= "contact";
                break;
        default:
                $fileName .= "404";
                break;
}

$fileName .= ".php";
        
include_once $fileName;
 ?>