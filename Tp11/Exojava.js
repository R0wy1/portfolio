function calcul_moyenne(){
    var a = prompt("1ère note :");
    var b = prompt("2ème note :");
    var c = prompt("3ème note :");

    var somme = Number(a) + Number(b) + Number(c);

    document.writeln("La somme : " + somme + "<br>");
    var moyenne = somme/3;

    document.writeln("Moyenne : " + moyenne + "<br>");

    if (moyenne < 10) {
        document.writeln("Pas admis");
    }
    else {
        document.writeln("Admis");
    }
}

function test_age(){
    let age = prompt("Quel âge ?");
    if (age < 18){
        document.writeln("Mineur mineur !");
        document.bgColor="red"
    }
    else{
        document.writeln("Majeur");
        document.bgColor="blue"
    }
}

function aff_Nomprenom(){
    let name = prompt("Nom ?");
    let prenom = prompt("Prénom ?");

    document.writeln("<div style='margin:auto; width:300px; border:2px solid blue;'>");
    document.writeln("Bonjour " + name + " " + prenom);
    document.writeln("</div>");
}

function couleur(){
    let couleur = prompt("Ecrit une couleur")
    if (couleur == "rouge" || couleur == "Rouge" || couleur == "red" || couleur == "Red" ){
        document.body.style.background = "red"
    }
    else if (couleur == "bleu" || couleur == "Bleu" || couleur == "blue" || couleur == "Blue" ){
        document.body.style.background = "blue"
    }
    else if (couleur == "doré" || couleur == "Doré" || couleur == "gold" || couleur == "Gold" ){
        document.body.style.background = "gold"
    }
    else if (couleur == "violet" || couleur == "Violet" || couleur == "purple" || couleur == "Purple" ){
        document.body.style.background = "purple"
    }
    else {
        document.writeln("Couleur pas prise en charge");
    }

}