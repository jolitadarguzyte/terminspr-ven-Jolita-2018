
/* Require these */
const sql_connection = require("../config/sql.js").connect();
const log_module = require("../services/logging_module/logging_module.js");

module.exports = (server) => {
    server.get("/login", (req, res) => {
        res.render("pages/login",{
           
        })

        log_module.activityLog(req.connection.remoteAddress + " /index");
    })
    server.post("/login", (req, res) => {
        var sess = req.session;

        var post = req.body;
        var name = post.brugername;
        var pass = post.password;
        sql_connection.query(`SELECT brugernavn , rettiheder
         FROM brugeres
         where user_name = ? 
         AND password = ?`, [name, pass], (err, data) => {
            // cia surasem is DB Selesct brugernavn, rettiheder form brugere     
            
            if (err) {
                    console.log(err);
                }
                else {
                    if (data.length) {
                        console.log(data);
                        req.session.rights = data[0].rettiheder;
                        if (req.session.rights == 1) {
                            res.redirect('/admin');
                        }
                        // cai pasakem kad zmones kurie turi rettiheder
                        // prisijungima kaip tik prisijungia is karto tuoj 
                        //nunestu i admin puslapi kur jie gali redaguoti sau reikiama info
                        else {
                            res.redirect('/medlemmer');
                        }
                        // else funkcijoj pasakem, jei zmones su paprastu loginu
                        // juo tiesiai nunestu i puslapi skirta paprastiems vartotojams  
                    }
                    else {
                        res.redirect("/login");
                    }
                }
            })
        log_module.activityLog(req.connection.remoteAddress + " /index");
    })

// cia padarem logout is amin puslapio ir pasakem kad islogindami tiesiai nunestu i index puslapi 
    server.get('/logout', function (req, res) {
		req.session.destroy(function (err) {
			res.redirect("/");
		});
	});

}