const mysql = require('mysql');

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'college management system'
  });
   
  connection.connect(function(err) {
    if (err) {
      console.error('error connecting: ');
    }
   
    console.log('connected to database');
  });

module.exports = connection;