window.setTimeout(function(){
		document.getElementById("open-content").className += " shake animated";
	}, 1000);

$(document).ready(function(){
	$("#open-content").click(function() {
		$("#main-content").fadeIn(700).delay(700).addClass("lightSpeedIn animated");
	});
	$(".myavatar a").tooltip();
});