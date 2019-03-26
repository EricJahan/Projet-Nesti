<div class="uneRecette">
    <div class="middle-uneRecette">
        <div class="ingrediant">
            <ul>
                <li>ss</li>
                <li>ss</li>
                <li>ss</li>
            </ul>
        </div>
        <div class="recette">
            <img src="img/pain.jpg" alt="">
        </div>
        <div class="middle-uneRectteDeux">
            <div>

                <div class="b1">
                    <h1> <?php print $recipe->getNom(); ?> </h1>
                    <br />
                    <p> Nombre de personne <?php print $recipe->getQuantite(); ?></p>
                    <br />
                    <p> Temps requis <?php print $recipe->getTemp(); ?> </p>
                    <br />
                    <p> Descriptions<?php print $recipe->getDescription(); ?> </p>
                </div>
                
            </div>
        </div>
    </div>
</div>