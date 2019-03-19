<!----middle------>
<div class="middle-recette">
    <ul class="recette-gauche">
        <div class="pre">saison
            <ul class="saison">
                <li><a href="#">printemp</a></li>
                <li><a href="#">ete</a></li>
                <li><a href="#">automne</a></li>
                <li><a href="#">hiver</a></li>
            </ul>
        </div>
        <li>repas</li>
        <li>dessert</li>
    </ul>
    <div class="middle-home">
        <?php 
        foreach ($recipeArray as $recipe) {
            ?>

        <div class="b1">
            <h1> <?php print $recipe->getNom(); ?> </h1>
            <br />
            <p> Nombre de personne <?php print $recipe->getQuantite(); ?></p>
            <br />
            <p> Temps requis <?php print $recipe->getTemp(); ?> </p>
            <br />
            <p> Description s<?php print $recipe->getDescription(); ?> </p>
        </div>

        <?php

    }
    ?>

    </div>
</div> 