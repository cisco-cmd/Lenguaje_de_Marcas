let cont=Number(0);

function separar() {

    cont+=1

    if (cont%2==1){

    document.getElementById("body").style.backgroundColor="#ffb7b7";
    document.getElementById("titulo").innerHTML="Cajas separadas";
    document.getElementById("caja1").style.float="left";
    document.getElementById("caja2").style.float="right";
    document.getElementById("caja1").style.backgroundColor="#ffdfdf";
    document.getElementById("caja2").style.backgroundColor="#ffdfdf";
    document.getElementById("caja1").style.border="5px solid red";
    document.getElementById("caja2").style.border="5px solid red";
    document.getElementById("titulo").style.textShadow="2px 2px 0px #ff00003b";
    document.getElementById("btn").style.border="2px solid red";
    document.getElementById("btn").style.color="red"
    document.getElementById("btn").style.backgroundColor="#ffdfdf"
    document.getElementById("btn").style.boxShadow="0 0 2px red";
    document.getElementById("btn").value="Unir Cajas";
    
    }else{

    document.getElementById("body").style.backgroundColor="#cbe7ff"
    document.getElementById("titulo").innerHTML="Cajas juntas";
    document.getElementById("caja1").style.float="none";
    document.getElementById("caja2").style.float="none";
    document.getElementById("caja1").style.backgroundColor="aliceblue";
    document.getElementById("caja2").style.backgroundColor="aliceblue";
    document.getElementById("caja1").style.border="5px solid blue";
    document.getElementById("caja2").style.border="5px solid blue";
    document.getElementById("titulo").style.textShadow="2px 2px 0px #0000ff3b";
    document.getElementById("btn").style.border="2px solid blue";
    document.getElementById("btn").style.color="blue";
    document.getElementById("btn").style.backgroundColor="aliceblue";
    document.getElementById("btn").style.boxShadow="0 0 2px blue";
    document.getElementById("btn").value="Separar Cajas";

    }
}

