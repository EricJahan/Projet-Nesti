<!----middle------>
<div class="middle-recette">
    <ul class="recette-gauche">
      <div class="pre">Saison
      <ul class="saison">
      <li><a href="#">Printemps</a></li>
     <li><a href="#">Ete</a></li>
     <li><a href="#">Automne</a></li>
     <li><a href="#">Hiver</a></li>
     </ul>
     </div>
     <div class="pre">Repas
      <ul class="repas">
      <li><a href="#">Poissons</a></li>
     <li><a href="#">Viandes</a></li>
     <li><a href="#">Volaille</a></li>
     </ul>
     </div>
     <div class="pre">Dessert
      <ul class="dessert">
      <li><a href="#">Tartes</a></li>
     <li><a href="#">Verrines</a></li>
     <li><a href="#">Entremets</a></li>
     </ul>
     </div>
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