const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const app = express();
const connection = require('./Models/db');

app.use(bodyParser.urlencoded({extended:true}));

app.set('view engine','ejs');

const routeIndex = require('./Route/index');
const routeGet = require('./Route/getStudent');
const routeInsert = require('./Route/insertStudent');
const routeDelete = require('./Route/deleteStudent');

app.use(routeIndex);
app.use(routeGet);
app.use(routeInsert);
app.use(routeDelete);

app.listen(3000, (req,res) =>{
    console.log("Server is running");
})