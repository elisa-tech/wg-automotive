// Eclipse Public License Copyright (c) 2017 CEA LIST


var changeDiagram = function(value) {
	document.getElementById("diagram").data = value;
};


var displayJson = function(value) {
var res = "";
if (value){
	res = res +"<li"
	if (value.id){
		res = res + " id="+value.id;
	}
	res = res + ">"
	if (value.additionalInformations.iconpath){
		res = res + "<img src='icons/"+value.additionalInformations.iconpath+"'/>";
	}
	if (value.additionalInformations.diagramPath) {
		res = res + "<a onclick=\"changeDiagram('"+value.additionalInformations.diagramPath+"')\">"+ value.text+"</a>";
	}else {
		res = res + value.text;
	}	
	
	if (value.childs && value.childs.length > 0){
		res = res + "<ul>"
		for (var i = 0; i < value.childs.length ; i++) {
			res = res + displayJson(value.childs[i])
		}
		res = res + "</ul>"
	}
    return res+"</li>";
}
return "novalue";
};