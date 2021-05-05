// Eclipse Public License Copyright (c) 2017 CEA LIST
// use to interpret Papyrus hyperlinks

function displayMessage (evt) {	changeDiagram(evt.data);}
if (window.addEventListener) {
	window.addEventListener("message", displayMessage, false);
}else {
	window.attachEvent("onmessage", displayMessage);
}