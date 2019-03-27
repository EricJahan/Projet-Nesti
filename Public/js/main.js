
$(".connexion").hide();
$(".inscription").hide();
$(".second-nav").hide();


$(document).ready(function(){
    $("#js-connexion").click(function(){
      $(".connexion").toggle();
      $(".inscription").hide();
    });
  });

  $(document).ready(function(){
    $("#js-inscription").click(function(){
      $(".inscription").toggle();
      $(".connexion").hide();
    });
  });

  $(document).ready(function(){
    $(".fa-bars").click(function(){
      $(".second-nav").toggle();
      $(".inscription").hide();
    });
  });