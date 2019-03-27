<div class="uneRecette">
    <div class="middle-uneRecette">
        <div class="bNom">
            <h1> <?php print $recipe->getNom(); ?> </h1>
        </div>
        <div class="center-uneRecette">
            <div class="ingrediant">

            </div>
            <div class="recette">
                <img src="img/pain.jpg" alt="">
            </div>
        </div>
        <div class="middle-uneRectteDeux">

            <div class="b1">
                <p> Nombre de personne <?php print $recipe->getQuantite(); ?></p>
                <br />
                <p> Temps requis <?php print $recipe->getTemp(); ?> </p>
                <br />
                <p> Descriptions<?php print $recipe->getDescription(); ?> </p>
            </div>
        </div>
    </div>
</div> 