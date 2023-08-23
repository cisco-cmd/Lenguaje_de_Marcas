function suma(valor, id, id2) {

    let preciototal = Number(0);
    preciototal = Number(document.getElementById("total").innerHTML) + Number(valor);
    document.getElementById("total").innerHTML = preciototal;
    document.getElementById(id).style.outline = "2px solid black";
    document.getElementById(id2).style.color = "blue";
    document.getElementById(id2).style.fontStyle = "italic";


}

function resta(valor, id, id2) {

    let preciototal = Number(0);
    preciototal = Number(document.getElementById("total").innerHTML) - Number(valor);
    document.getElementById("total").innerHTML = preciototal;
    document.getElementById(id).style.outline = "0px";
    document.getElementById(id2).style.color = "#86736d";
    document.getElementById(id2).style.fontStyle = "normal";


}

function negro() {

    document.getElementById("img").src = "images/negro.JPG";

}

function blanco() {

    document.getElementById("img").src = "images/blanco.JPG";

}

function gris() {

    document.getElementById("img").src = "images/gris.JPG";

}

function violeta() {

    document.getElementById("img").src = "images/violeta.JPG";

}