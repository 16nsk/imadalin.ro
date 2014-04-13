
setTimeout(function(){
  $("#open-content").addClass("shake animated");
  $("#open-content").click(function() {
    $("#main-content").fadeIn(700).delay(700).addClass("lightSpeedIn animated");
    $("#header").addClass("hinge animated");
    setTimeout(function() {
      $("#header").slideUp();
    }, 2000);
  });
  $(".myavatar a, .tooltips").tooltip();
},1000);
