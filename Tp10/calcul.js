function somme() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("resultat1").value = c;
}

function Soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("resultat2").value = c;
}

function Multiplication() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat3").value = c;
}

function Division() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    if (a / 0 ==0){
    	document.getElementById("resultat4").value = " impossible "
	}
    else{
        document.getElementById("resultat4").value = c;
    }
}

function permuter() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    document.getElementById("t1").value = b;
    document.getElementById("t2").value = a;
}

function Parite()
{
	var x = document.getElementById("t1").value
	if (x % 2 ==0){
    	document.getElementById("pair").value = " Paire "
	}
	else{
    	document.getElementById("pair").value = " Impaire "
	}
}

function effacerChamps() {
    document.getElementById("t1").value = "";
    document.getElementById("t2").value = "";
    document.getElementById("resultat1").value = "";
    document.getElementById("resultat2").value = "";
    document.getElementById("resultat3").value = "";
    document.getElementById("resultat4").value = "";
}