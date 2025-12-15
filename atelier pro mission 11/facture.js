function calcul() {
    let sousTotal = 0;

    let qtes = document.querySelectorAll(".qte");
    let prix = document.querySelectorAll(".prix");
    let totaux = document.querySelectorAll(".total");

    for (let i = 0; i < qtes.length; i++) {
        totaux[i].value = qtes[i].value * prix[i].value;
        sousTotal += Number(totaux[i].value);
    }

    let remise = document.getElementById("remise").value / 100;
    let taxe = document.getElementById("taxe").value / 100;
    let frais = Number(document.getElementById("frais").value);

    document.getElementById("sousTotal").value = sousTotal;
    document.getElementById("sousTotalRemise").value = sousTotal - (sousTotal * remise);
    document.getElementById("taxeTotal").value = sousTotal * taxe;
    document.getElementById("solde").value =
        sousTotal - (sousTotal * remise) + (sousTotal * taxe) + frais;
}

function ajout_ligne() {
    let ligne = document.getElementById("modeleLigne");
    let clone = ligne.cloneNode(true);
    clone.removeAttribute("id");

    document.getElementById("lastLigne").before(clone);
}

function remplir() {
    let descriptions = [
        "Stylo", "Clavier", "Souris",
        "Casque", "Chargeur", "Bloc-notes"
    ];

    for (let i = 1; i <= 5; i++) {
        document.getElementById("d" + i).value =
            descriptions[Math.floor(Math.random() * descriptions.length)];

        document.getElementById("t" + i).value =
            Math.floor(Math.random() * 10) + 1;

        document.getElementById("p" + i).value =
            Math.floor(Math.random() * 100) + 1;
    }

    calcul();
}


function annule() {
    document.querySelectorAll("input").forEach(i => i.value = "");
}