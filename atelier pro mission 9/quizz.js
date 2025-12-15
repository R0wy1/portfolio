function testqcm() {
    let score = 0;

    if (document.getElementById("a1").checked) score += 3;

    if (document.getElementById("b2").checked) score += 0.5;
    if (document.getElementById("b3").checked) score += 0.5;

    if (document.getElementById("c2").checked) score += 2;

    if (document.getElementById("d3").checked) score += 4;

    if (document.getElementById("e1").checked) score += 1.5;
    if (document.getElementById("e3").checked) score += 1.5;

    if (document.getElementById("f3").checked) score += 4;

    if (document.getElementById("g2").checked) score += 2;

    if (document.getElementById("h2").checked) score += 2;
    if (document.getElementById("h3").checked) score += 2;

    if (document.getElementById("i2").checked) score += 4;

    if (document.getElementById("j1").checked) score += 1;
    if (document.getElementById("j2").checked) score += 1;
    if (document.getElementById("j3").checked) score += 1;

    document.body.innerHTML =
        "<p>Ton score est de " + score + "/30</p>" +
        "<a href='Quizz.html'>Revenir au quizz</a>";
}

function corrige() {
    window.location.href = "corrige.html";
}

function efface() {
    let cases = document.querySelectorAll("input[type='checkbox']");
    for (let i = 0; i < cases.length; i++) {
        cases[i].checked = false;
    }
}
