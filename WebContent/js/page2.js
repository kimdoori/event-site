window.onload = init;

var cupIndex = [ -1, -1 ];



function init() {

	var classname = document.getElementsByClassName("fruit");

	for (var i = 0; i < classname.length; i++) {
		classname[i].addEventListener('click', myFunction, false);

	}

}

var myFunction = function() {
	var index = this.getAttribute("id");
	var position = this.style.position == "" ? "static" : this.style.position;
	
	var color = [ "#fffee0", "purple", "Crimson", "yellow", "LawnGreen",
		"orange", "LavenderBlush", "Gold" ];
	
	
	var colorInput = document.getElementsByClassName("color");
	for (var i = 0; i < colorInput.length; i++) {
		color[i]=colorInput[i].value;
	}


	if (position == "static") {

		for (var i = 0; i < cupIndex.length; i++) {

			if (cupIndex[i] == -1) {
				cupIndex[i] = index;

				var name = i == 0 ? "liquid" : "liquid-top";

				document.getElementById(name).style.backgroundColor = color[index];
				document.getElementById(name).style.borderColor = color[index];

				this.style.boxShadow = "0px 3px 0px rgba(219,31,5,1), 0px 3px 6px rgba(0,0,0,.9)";
				this.style.position = "relative";
				this.style.top = "6px";

				break;
			}
		}

	} else {
		for (var i = 0; i < cupIndex.length; i++) {

			if (cupIndex[i] == index) {
				cupIndex[i] = -1;

				var name = i == 0 ? "liquid" : "liquid-top";
				document.getElementById(name).style.backgroundColor = "#d9fff4";
				document.getElementById(name).style.borderColor = "#d9fff4";

				this.style.boxShadow = "0px 9px 0px rgba(219,31,5,1), 0px 9px 25px rgba(0,0,0,.7)";
				this.style.position = "static";

				break;
			}
		}

	}

};
function go() {
	var i=0;
	for(i=0;i<cupIndex.length;i++){
		if(cupIndex[i]==-1) break;
	}
	
	if(i==cupIndex.length)
		location.href = "page3.jsp?fruit1="+cupIndex[0]+"&fruit2="+cupIndex[1];
	else
		alert("두 가지 재료를 선택해주세요.");
}