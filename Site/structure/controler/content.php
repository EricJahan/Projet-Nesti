<?php
        switch($loc){

        case "home":
        include("vue/slider.php");
        case "band":        
        include("vue/band.php");
        include("vue/botpic.php");
        break;
        case "tour":       
        include("vue/tour.php");
        break;
        case "contact":
        include("vue/contact.php");
        break;
        case "login":
        include("vue/login.php");
        break;
        case "inscription":
        include("vue/inscription.php");
        break;
        default:
        include("vue/404.php");
        }

        ?>