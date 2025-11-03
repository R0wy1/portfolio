function effacerChamps() {
    document.getElementById("t1").value = "";
    document.getElementById("p1").value = "";
    document.getElementById("t2").value = "";
    document.getElementById("p2").value = "";
    document.getElementById("t3").value = "";
    document.getElementById("p3").value = "";
    document.getElementById("resultat1").value = "";
    document.getElementById("resultat2").value = "";
    document.getElementById("resultat3").value = "";
    document.getElementById("resultat4").value = "";
}

function resultat() {
   var a = document.getElementById("t1").value;
    var b = document.getElementById("p1").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat1").value = c;

    var a = document.getElementById("t2").value;
    var b = document.getElementById("p2").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat2").value = c;

    var a = document.getElementById("t3").value;
    var b = document.getElementById("p3").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat3").value = c;

    var a = document.getElementById("resultat1").value;
    var b = document.getElementById("resultat2").value;
    var c = document.getElementById("resultat3").value;
    var d = Number(a) + Number(b) + Number(c);
    document.getElementById("resultat4").value = d;
}