<!----middle------>
<div class="middle-recette">
    <div class="">
        <ul class="menu-gauche">
            <p>Saison</p>
            <li><a href="#">Printemps</a></li>
            <li><a href="#">Ete</a></li>
            <li><a href="#">Automne</a></li>
            <li><a href="#">Hiver</a></li>
            <p>Viandes</p>
            <li><a href="#">Poissons</a></li>
            <li><a href="#">Viandes</a></li>
            <li><a href="#">Volaille</a></li>
            <p>Desserts</p>
            <li><a href="#">Tartes</a></li>
            <li><a href="#">Verrines</a></li>
            <li><a href="#">Entremets</a></li>
        </ul>
    </div>
    <div class="middle-ingredients">
        <?php
        foreach ($afficheTousIngredients as $ingredients) {
            ?>

            <div class="blocIngredient">
                <h1><a href="#"> <?php print $ingredients->getNomIngredient(); ?> </a></h1>
                <br>
            </div>

            <?php
        }
        ?>

    </div>
</div> 