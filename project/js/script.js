const xhttp = new XMLHttpRequest();
const knihy = document.getElementById("knihy");
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200){

        var response = xhttp.responseText.substring(
            xhttp.responseText.indexOf("[{"),
            xhttp.responseText.lastIndexOf("}]") + 2
        );

        var object = JSON.parse(response);
        var data = [];
        for (var i in object) {
            data.push(object[i]);
        }
        //console.log(data);
        for (let kniha of data){
            knihy.innerHTML += "<div><h2>"+ kniha["name"] +"</h2> <p>"+ "Autor/Author: " + kniha["author"]+ " | Žánr/Genre: "+ kniha["genre"] +"<br>Datum prvního vydání/First release date:" + kniha["release_date"]+ " | Jazyk/Language: " +kniha["language"] +"</p></div>"
    }
}
};
xhttp.open("GET", "/project/app/get.php", true);
xhttp.send();