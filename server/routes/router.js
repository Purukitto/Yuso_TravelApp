const express = require('express');
const router = express.Router();
const axios = require('axios');
const users = require('../models/userAuth');
const mongoose = require('mongoose');

//index router
router.get('/', (req, res) => {
    console.log("Recived home request");
    res.send("Hello world!");
});

//demo route
router.get('/home', (req, res)=>{
    console.log("home called");
    res.send("hello");
});

//route that handles register requests
router.post('/register', (req, res) => {

    //create a newUser document (ref: userAuth.js)
    const { name, username, email, password, ph } = req.body;
    const newUser = new users({
        name, username, email, password, ph
    });

    //save it to mongoDB and define callbacks 
    newUser.save((err) => {
        if (err) {
            console.log("Error: ", err);
            res.statusCode = 1;
            res.body = '';
            res.send(res);
        } else {
            console.log(newUser);
            res.send("Successfully added");
        }
    });
});

router.get('/signin', (req, res) => {   //ISSUE: NO SECURITY. FIX!!!!!
    const { email, password } = req.query;
    users.find({ password }, (err, document) => {
        if (err != null) {
            res.send("false");
        } else {
            (document[0] && document[0].email == email) ?          
                res.send("true") : res.send("false");
        }
    });
});

module.exports = router;