
var express = require('express');
var server = express.Router();
server.post("/opretprodukter", (req, res) => {
    console.log(req.body)
    db.query(`insert into cykler(type, mærker, url, pris, farve, beskrivelse, model, kategori_nr)
        values (?,?,?,?,?,?,?,? )
                     `, [req.body.type, req.body.mærker, req.body.url, req.body.pris, req.body.farve, req.body.beskrivelse, req.body.model, 1], (err, results) => {
            if (err) {
                console.log(err);
                res.json({ message: "fejlede" })
            }
            else {
                res.json({ message: "succes" })
            }
            
        })

})



server.delete("/cykler/:id", (req, res) => {
    console.log(req.params.id)
    db.query(`DELETE FROM cykler
    WHERE id =?`, [req.params.id], (err, results) => {
            if (err) {

                console.log(err);
            }
        })


})

server.put("/cykler", (req, res) => {
    db.query(`UPDATE cykler set type = ?, mærker = ?, pris = ?, farve = ?, beskrivelse = ?, model = ?
     WHERE id = ?`,
     [req.body.type, req.body.mærker, req.body.pris,  req.body.farve, req.body.beskrivelse, req.body.model,req.body.id],(err,result)=>{
         if(err)console.log(err);
         res.send("succes")
     })

})
server.get("/produkt/:id", (req, res) => {
    db.query("SELECT * FROM cykler WHERE id = ?", [req.params.id], (err, result) => {
        if (err) console.log(err);
        res.send(result);
    })
})







module.exports = server