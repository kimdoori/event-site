window.onload = init;

function init() {

	var classname = document.getElementsByClassName("fruit");

	for (var i = 0; i < classname.length; i++) {
		classname[i].addEventListener('click', myFunction, false);
	}

}

var myFunction = function() {
	var index = this.getAttribute("id");
	this.style.backgroundColor="rgba(187, 76, 7,0.5)";

	
	var color = ["#fffee0","purple","Crimson","yellow","LawnGreen","orange","LavenderBlush","Gold"];
	
	document.getElementById("liquid").style.backgroundColor = color[index];
	document.getElementById("liquid").style.borderColor = color[index];
	

	
	
};
