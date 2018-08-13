var express = require('express');
var router = express.Router();
var footer = require('../data/footer.json');
var indhold = require('../data/indhold.json');
var indhold2 = require('../data/img.json');
var tilbud = require('../data/tilbud.json')

/*let sql = `SELECT * FROM `cykler` WHERE `type` =  AND `` > ?`;*/
/* GET home page. */

router.get('/', function(req, res, next) {
  res.render('pages/index', { sideTitel: "Forsiden", indhold: indhold, indhold2: indhold2, tilbud: tilbud, footer: footer });
});

router.get('/index', function(req, res, next) {
res.render('pages/index', {  sideTitel: "Forsiden", indhold: indhold, indhold2: indhold2, tilbud: tilbud,footer: footer });
});


router.get('/cykler', function(req, res, next) {
db.query(`SELECT * FROM kategorier WHERE id < 7`, function (err, cykelData) {
res.render('pages/cykler', { sideTitel: "Cykler", indhold: indhold, tilbud: tilbud, footer: footer, cykelData: cykelData });  
});
});

router.get('/udstyr', function(req, res, next) {
  db.query(`SELECT * FROM kategorier WHERE id > 6`, function (err, udstyrData) {
    res.render('pages/udstyr', { sideTitel: "Udstyr", indhold: indhold, tilbud: tilbud, footer: footer, udstyrData: udstyrData });
  });
});


router.get('/kontakt', function(req, res, next) {
  db.query(`SELECT * FROM kontakt_oplysninger`, function (err, kontakt_oplysninger){
  res.render('pages/kontakt', { sideTitel: "Kontakt", indhold: indhold, tilbud: tilbud, footer: footer,kontakt_oplysninger });
});
 
  
});

router.get('/nyheder', function(req, res, next) {
  db.query(`SELECT * FROM nyheder`, function (err, nyhedData){
    res.render('pages/nyheder', {  sideTitel: "Nyheder", indhold: indhold, tilbud: tilbud, footer: footer, nyhedData: nyhedData });
  });
  console.log("nyhedData");
});


router.get('/login', function(req, res, next) {
res.render('pages/login', { footer: footer });
});

router.get('/admin', function(req, res, next) {
  db.query(`SELECT * FROM cykler`, function (err, cykleAdmin) {
  res.render('pages/admin', {  cykleAdmin: cykleAdmin });

  })
});

router.get('/nyhedAdmin', function(req, res, next) {
db.query(`SELECT * FROM nyheder`, function (err, nyhedAdministr){
res.render('pages/nyhedAdmin', { nyhedAdministr: nyhedAdministr });
})
});

router.get('/udstyrAdmin', function(req, res, next) {
db.query(`SELECT * FROM udstyr`, function (err, udstyrAdmininstr) {
res.render('pages/udstyrAdmin', {  udstyrAdmininstr: udstyrAdmininstr });
    
  })
});

router.get('/opretprodukt', function(req, res, next) {
res.render('pages/opretprodukt', {  });
});

//::  

router.get('/kategori/:type', function(req, res) {
  // SQL: LIMIT 3  henter kun 3
  db.query(`SELECT * 
            FROM cykler
            WHERE kategori_nr = ?
            `,[req.params.type], (err, rows) => {
    if(err) console.log(err);
    res.render('pages/cykel_kategori', {
      'cykelData' : rows, tilbud: tilbud, footer: footer 
    })
  })
})

router.get('/model/:id', function(req, res) {
  db.query(`SELECT * 
            FROM cykler
            WHERE id = ?`, [req.params.id], (err, rows) => {
              res.render('pages/cykel_model', {
                'cykelData' : rows, tilbud: tilbud, footer: footer
              })
            })
})



module.exports = router;
