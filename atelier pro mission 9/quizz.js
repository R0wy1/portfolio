function testqcm(){
    var a1 = 3 ;
    var a2 = 0 ;
    var a3 = 0 ;

    var b1 = 0 ;
    var b2 = 0.5 ;
    var b3 = 0.5 ;

    var c1 = 0 ;
    var c2 = 2 ;
    var c3 = 0 ;

    var d1 = 2 ;
    var d2 = 0 ;
    var d3 = 2 ;

    var e1 = 1.5 ;
    var e2 = 0 ;
    var e3 = 1.5 ;

    var f1 = 0 ;
    var f2 = 0 ;
    var f3 = 4 ;

    var g1 = 0 ;
    var g2 = 2 ;
    var g3 = 0 ;

    var h1 = 0 ;
    var h2 = 2 ;
    var h3 = 2 ;

    var i1 = 0 ;
    var i2 = 4 ;
    var i3 = 0 ;

    var j1 = 1 ;
    var j2 = 1 ;
    var j3 = 1 ;
    let score = Number(a1) + Number(b2) + Number(b3) + Number(c2) + Number(d1) + Number(d3) + Number(e1) + Number(e3) + Number(f3) + Number(g2) + Number(h2) + Number(h3) + Number(i2) + Number(j1) + Number(j2) + Number(j3);
    if(score < 15){
        document.writeln("Ton score est de " + score + "/30, refait le quizz pour avoir plus.");
    }
    else if(score > 20){
      document.writeln("Ton score est de " + score + "/30.");  
    }
    else{
        document.writeln("Bravo tu as eu " + score + "/30."); 
    }
}

function corrige(){
    window.location.href="corrige.html"
}

function efface(){
    let cases = document.querySelectorAll("input[type='checkbox']");
    for (let i = 0; i < cases.length; i++) {
        cases[i].checked = false;
    }
}
