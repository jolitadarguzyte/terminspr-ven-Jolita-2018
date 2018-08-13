document.addEventListener("DOMContentLoaded", (event) => {
    document.querySelector("#opretProdukt").addEventListener("click", (event) => {
        event.preventDefault();
        obj = JSON.stringify({
            type : document.querySelector("#type").value,
            mærker : document.querySelector("#mærker").value,
            url : document.querySelector("#url").value,
            pris : document.querySelector("#pris").value,
            farve : document.querySelector("#farve").value,
            beskrivelse : document.querySelector("#beskrivelse").value,
            model : document.querySelector("#model").value
            
        })
        fetch("http://localhost:4500/opretprodukter/", {
            'method': 'post',
            'headers': {
                'Content-Type': 'application/json'
            },
            "body": obj,
            'mode': 'cors',
            'cache': 'default'
        })
        .then(()=>{
            alert("tak");
            document.querySelector("#type").value="";
            document.querySelector("#mærker").value="";
            document.querySelector("#url").value="";
            document.querySelector("#pris").value="";
            document.querySelector("#farve").value="";
            document.querySelector("#beskrivelse").value="";
            document.querySelector("#model").value="";
        })
    })
})

