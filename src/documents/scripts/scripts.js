$(document).ready(function(){
  setTimeout(function(){
    $("#open-content").addClass("shake animated");
  }, 1000);
  $("#open-content").click(function() {
    $("#main-content").fadeIn(700).delay(700).addClass("lightSpeedIn animated");
  });
  $(".myavatar a, .tooltips").tooltip();
});
