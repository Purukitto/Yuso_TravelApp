var express = require("express");
var path = require('path');
var router = require("./routes/router.js");
var mongoClient = require('mongodb').MongoClient;
var mongodriver = require('mongodb');
var mongoose = require('mongoose');
const assert = require('assert');
var keys = require("./assets/keys");
var users = require("./models/userAuth");
var bodyParser = require('body-parser');


var app = express();


mongoose.connect(keys.mongouri ,{useNewUrlParser: true}, (err) => {
    if(err == null){
        console.log("connected successfully!")
    }
    else{
        console.log(err)
    }

})


var port = 8000;

app.use(bodyParser.urlencoded({extended:false}));

app.listen(port , () => {
    console.log("Server Running at Port : " , port);
})


app.use("/" , router);


module.exports = app;
