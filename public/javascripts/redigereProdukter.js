let id;
let redigerprodukt = document.querySelectorAll(".edit");
redigerprodukt.forEach((element) => {
    element.addEventListener("click", (event) => {
        event.preventDefault();
        console.log(element);
        id = element.dataset.id;
        fetch("http://localhost:4500/produkt/" + element.dataset.id)
            .then(data => data.json())
            .then(data => {
                let typenavn = document.querySelector("#type");
                typenavn.value = data[0].type;
                let mærkernavn = document.querySelector("#mærker");
                mærkernavn.value = data[0].mærker;
                let redigerpris = document.querySelector("#pris");
                redigerpris.value = parseInt(data[0].pris);
                let redigerfarve = document.querySelector("#farve");
                redigerfarve.value = data[0].farve;
                let redigerbeskrivelse = document.querySelector("#beskrivelse");
                redigerbeskrivelse.value = data[0].beskrivelse;
                let redigermodel = document.querySelector("#model");
                redigermodel.value = data[0].model;
                // let redigerurl = document.querySelector("#url");
                // redigerurl.value = data[0].url;
                

            })
    })
})
document.querySelector('#singlebutton').addEventListener('click', (event) => {
    event.preventDefault();
    let typenavn = document.querySelector("#type");
    let mærkernavn = document.querySelector("#mærker");
    let redigerurl = document.querySelector("#url");
    let redigerpris = document.querySelector("#pris");
    let redigerfarve = document.querySelector("#farve");
    let redigerbeskrivelse = document.querySelector("#beskrivelse");
    let redigermodel = document.querySelector("#model");
    

    let object = JSON.stringify({
        id: id,
        type: typenavn.value,
        mærker: mærkernavn.value,
        url: redigerurl.value,
        pris: redigerpris.value,
        farve: redigerfarve.value,
        beskrivelse: redigerbeskrivelse.value,
        model: redigermodel.value
     
    })

    fetch("http://localhost:4500/cykler/", {
        'method': 'put',
        'headers': {
            'Content-Type': 'application/json'
        },
        "body": object,
        'mode': 'cors',
        'cache': 'default'
    })
    .then(data => {
        window.location.reload();
    })
})



