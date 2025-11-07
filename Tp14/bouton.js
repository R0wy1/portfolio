function affichagetab(){
    document.write("<table border=2px width=30%");
    for(let i=0; i<=2; i++){
       document.write("<tr><td> * </td><td> * </td><td> * </td></tr>"); 
    }
    document.write("</table>");
}

function affichagetab2(){
    var x = prompt("Combien de lignes ?");
    document.write("<table border=2px width=30%");
    for(let i=1; i<=x; i++){
        document.write("<tr><td>" + i+ "</td><td> * </td><td> * </td></tr>");
    }
    document.write("</table>");
}

function connect(){
    var login= prompt("Nom utilisateur : ");
    var password = prompt("Mot de passe : ");
    if (login=="admin" && password=="admin"){
        document.write("Bienvenu :" + login);
    }
    else{
        alert("Accès refusé")
    }
}

function cdc(){
    var chaine= prompt(" Donne un mot : ");
    document.write(chaine.toUpperCase() +"<br>");
    document.write(chaine.toLowerCase() +"<br>");
    document.write(" La chaine contient " + chaine.length + " caractères" + "<br>");
    document.write("La première lettre est " + chaine.substr(0,1) + "<br>");
}

function connect2(){
    window.location.href="identif.html"
}

function login(){
    var login = document.getElementById("t1").value;
    var mdp = document.getElementById("t2").value;
    if(login=="admin" && mdp=="admin"){
        window.location.href="oui.html"
    }
    else{
        window.location.href="non.html"
    }
}