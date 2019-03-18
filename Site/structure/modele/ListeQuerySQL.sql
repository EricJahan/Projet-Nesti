/**
 * Author:  ThunderMephisto
 * Created: 18 mars 2019
 */

************************
*      Recettes :      *
************************

Récupérer toutes les recettes :
"SELECT `id`, `nom`, `quantite_personne`, `tempsPreparation` FROM `recettes` WHERE 1";

Avec Description :
"SELECT * FROM `recettes` WHERE 1";



************************
*     Ingrédients :    *
************************

Liste complète des ingrédients :
"SELECT * FROM `ingredients` WHERE 1;";

Liste ingrédients avec un filtre : 
"SELECT * FROM `ingredients` WHERE `nom` LIKE '%" + $maVariableRecupSearch + "%';";



************************************
* Filtre catégories ingrédients :  *
************************************

$filtreCaegorie = "";

switch(filtreCategorie){
    case value1: 
        $filtreCategorie = legumes;
        break;
    case value2:
        $filtreCategorie = fruits;
        break;
    case value3:
        $filtreCategorie = viandes;
        break;
    case value4:
        $filtreCategorie = poissons;
        break;
    case value5:
        $filtreCategorie = condiments;
        break;
    case value6:
        $filtreCategorie = liquides;
        break;
    case value7:
        $filtreCategorie = epicerie;
        break;

}

"SELECT `ingredients`.*, `categories`.`nom_categorie` 
FROM `ingredients` 
JOIN `categories` 
ON `id_categories` = `categories`.id 
WHERE `categories`.`nom_categorie` = '" + $filtreCategorie + "';";


