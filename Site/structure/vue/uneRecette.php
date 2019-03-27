<div class="uneRecette">
    <div class="middle-uneRecette">
        <div class="bNom">
            <h2> <?php print $recipe->getNom(); ?> </h2>
        </div>
        <div class="center-uneRecette">
            <div></div>
            <div class="ingrediant">
                <div class="ingredient">

                </div>
            <p>Ajouter tout les ingredients a panier<button><i class="fas fa-cart-plus fa-2x"></i></button></p>
            </div>
            <div class="recette">
                <img src="img/pain.jpg" alt="">
                <div class="recette-texte">
                    <p> Temps requis <?php print $recipe->getTemp(); ?> </p>
                    <p> Nombre de personne <?php print $recipe->getQuantite(); ?></p>
                </div>
            </div>
        </div>
        <div class="middle-uneRectteDeux">
            <div class="b1">
                <p> Descriptions<br><?php print $recipe->getDescription(); ?> </p>
            </div>
        </div>
    </div>
</div> 