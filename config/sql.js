const mysql = require("mysql2");

var connection =
        mysql.createConnection({
            host : 'localhost',
            user : 'root',
            password : 'root',
            database : "rts_terminprove",
            port: '8889'
        })

        connection.connect();

        global.db = connection;

