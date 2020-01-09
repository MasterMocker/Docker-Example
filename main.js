function getQuote() {
  var xhttp = new XMLHttpRequest(); //Setup ajax object
  xhttp.onreadystatechange = function() { //Function to update the html with the response
	if (this.readyState == 4 && this.status == 200) {
	  document.getElementById("content").innerHTML = this.responseText;
	}
  };
  xhttp.open("GET", "quote.php", true); //Get the php page output that talks to the sql server
  xhttp.send();
}