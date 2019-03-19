<!----middle------>
<div class="middle-recette">
    <ul class="recette-gauche">
<<<<<<< HEAD
      <div class="pre">Saison
      <ul class="saison">
      <li><a href="#">Printemps</a></li>
     <li><a href="#">Ete</a></li>
     <li><a href="#">Automne</a></li>
     <li><a href="#">Hiver</a></li>
     </ul>
     </div>
     <div class="pre">repas
      <ul class="repas">
      <li><a href="#">Prin</a></li>
     <li><a href="#">Ee</a></li>
     <li><a href="#">omne</a></li>
     <li><a href="#">Hiv</a></li>
     </ul>
     </div>
     <div class="pre">dessert
      <ul class="dessert">
      <li><a href="#">emps</a></li>
     <li><a href="#">Et</a></li>
     <li><a href="#">Auto</a></li>
     <li><a href="#">Her</a></li>
     </ul>
     </div>
=======
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
>>>>>>> 14f3badea90f51083045d666019a0acee14ce12c
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