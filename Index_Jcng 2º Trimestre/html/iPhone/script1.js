/*Funciones de los colores*/

function azul() {

    document.getElementById("img1").src = "images/Azul/azul1.jpeg";
    document.getElementById("img2").src = "images/Azul/azul2.jpeg";
    document.getElementById("texto2").innerHTML = "Azul";
    document.getElementById("boton2").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton3").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton4").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton5").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton1").style.boxShadow = "inset 0 0 10px #00000080, 0 0 10px #0000007b"
    document.getElementById("color").innerHTML = 50;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function rojo() {
    
    document.getElementById("img1").src = "images/Rojo/Rojo1.jpeg";
    document.getElementById("img2").src = "images/Rojo/Rojo2.jpeg";
    document.getElementById("texto2").innerHTML = "Rojo";
    document.getElementById("boton1").style.boxShadow = "inset 0 0 0px, 0 0 0px";
    document.getElementById("boton2").style.boxShadow = "inset 0 0 0px, 0 0 0px";
    document.getElementById("boton3").style.boxShadow = "inset 0 0 0px, 0 0 0px";
    document.getElementById("boton4").style.boxShadow = "inset 0 0 0px, 0 0 0px";
    document.getElementById("boton5").style.boxShadow = "inset 0 0 20px #00000080, 0 0 20px #000000";
    document.getElementById("color").innerHTML = 75;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function purpura() {

    document.getElementById("img1").src = "images/Purpura/purpura1.jpeg";
    document.getElementById("img2").src = "images/Purpura/purpura2.jpeg";
    document.getElementById("texto2").innerHTML = "Púrpura";
    document.getElementById("boton1").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton3").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton5").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton4").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton2").style.boxShadow = "inset 0 0 10px #00000080, 0 0 10px #0000007b"
    document.getElementById("color").innerHTML = 50;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function negro() {
    document.getElementById("img1").src = "images/Negro/Negro1.jpeg";
    document.getElementById("img2").src = "images/Negro/Negro2.jpeg";
    document.getElementById("texto2").innerHTML = "Negro";
    document.getElementById("boton1").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton2").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton4").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton5").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton3").style.boxShadow = "inset 0 0 10px #ffffff7b, 0 0 10px #0000007b"
    document.getElementById("color").innerHTML = 0;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function blanco() {
    
    document.getElementById("img1").src = "images/Blanco/Blanco1.jpeg";
    document.getElementById("img2").src = "images/Blanco/Blanco2.jpeg";
    document.getElementById("texto2").innerHTML = "Blanco";
    document.getElementById("boton1").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton2").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton3").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton5").style.boxShadow = "inset 0 0 0px, 0 0 0px"
    document.getElementById("boton4").style.boxShadow = "inset 0 0 10px #00000080, 0 0 20px #0000007b"
    document.getElementById("color").innerHTML = 0;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

/*Funciones de los botones del modelo*/

function modelo() {

    document.getElementById("texto1").innerHTML = "Plus";
    document.getElementById("texto1").className = "sombra1";
    document.getElementById("texto3").className = "sombra3";
    document.getElementById("texto3").innerHTML = " 1.009 €";
    document.getElementById("texto4").className = "sombra1";
    document.getElementById("base").innerHTML = 1009;
    document.getElementById("xcapacidad").style.display = "block"
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function modelo1() {

    document.getElementById("texto1").className = "sombra_";
    document.getElementById("texto1").innerHTML = "Plus";
    document.getElementById("texto3").className = "sombra1";
    document.getElementById("texto4").className = "sombra3";
    document.getElementById("texto4").innerHTML = " 1.159 €";
    document.getElementById("base").innerHTML = 1159;
    document.getElementById("xcapacidad").style.display = "block"
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function modelo2() {

    document.getElementById("texto1").className = "sombra_";
    document.getElementById("texto1").innerHTML = "Plus";
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;
}

/*Funciones de los botones de capacidad*/

function modelo3() {

    document.getElementById("texto5").className = "sombra3";
    document.getElementById("texto5").innerHTML = " 0 € ";
    document.getElementById("texto6").className = "sombra1";
    document.getElementById("texto6").innerHTML = "0 €";
    document.getElementById("texto7").className = "sombra1";
    document.getElementById("texto7").innerHTML = "0€";  
    document.getElementById("capacidad").innerHTML = 0;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function modelo4() {

    document.getElementById("texto6").className = "sombra3";
    document.getElementById("texto6").innerHTML = "130 €";
    document.getElementById("texto7").className = "sombra1";
    document.getElementById("texto7").innerHTML = " 0 € ";
    document.getElementById("texto5").className = "sombra1";
    document.getElementById("texto5").innerHTML = " 0 € ";
    document.getElementById("capacidad").innerHTML = 130;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

function modelo5() {

    document.getElementById("texto7").className = "sombra3";
    document.getElementById("texto7").innerHTML = "390€";
    document.getElementById("texto6").className = "sombra1";
    document.getElementById("texto6").innerHTML = "0 €";
    document.getElementById("texto5").className = "sombra1";
    document.getElementById("texto5").innerHTML = " 0 € ";
    document.getElementById("capacidad").innerHTML = 390;
    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;

}

/*Funciones de los botones de extras*/

function modelo6() {

    document.getElementById("texto8").className = "sombra3";
    document.getElementById("texto8").innerHTML = "239 €/Año";

}

function modelo7() {

    document.getElementById("texto9").className = "sombra3";
    document.getElementById("texto9").innerHTML = "35'88 €/Año";
    
}

function modelo8() {

    document.getElementById("texto8").className = "sombra1";
    document.getElementById("texto8").innerHTML = "0€";
 
}

function modelo9() {

    document.getElementById("texto9").className = "sombra1";
    document.getElementById("texto9").innerHTML = "0€";


}

/*Funciones para los checkbox extras*/

function suma(valor) {

    let preciototal = parseFloat(0);
    preciototal = parseFloat(document.getElementById("extras").innerHTML) + parseFloat(valor);
    preciototal = preciototal.toFixed(2);
    document.getElementById("extras").innerHTML = preciototal;

}

function resta(valor) {

    let preciototal = parseFloat(0);
    preciototal = parseFloat(document.getElementById("extras").innerHTML) - parseFloat(valor);
    preciototal = preciototal.toFixed(2);
    document.getElementById("extras").innerHTML = preciototal;

}

function total() {

    let color = parseFloat(document.getElementById("color").innerHTML);
    let extra = parseFloat(document.getElementById("extras").innerHTML);
    let base = parseFloat(document.getElementById("base").innerHTML);
    let capacidad = parseFloat(document.getElementById("capacidad").innerHTML);
    let cuenta = parseFloat(color+extra+base+capacidad);
    document.getElementById("total").innerHTML=cuenta;
}