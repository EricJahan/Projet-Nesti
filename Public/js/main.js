
$(".connexion").hide();
$(".inscription").hide();

$(document).ready(function(){
    $("#js-connexion").click(function(){
      $(".connexion").toggle(200);
      $(".inscription").hide();
    });
  });

  $(document).ready(function(){
    $("#js-inscription").click(function(){
      $(".inscription").toggle(200);
      $(".connexion").hide();
    });
  });

  $(document).ready(function(){
    $(".pre").click(function(){
      $(".second-nav").toggle(200);
      $(".inscription").hide();
    });
  });