var express = require('express');
var router = express.Router();
var axios = require('axios');
var users = require("../models/userAuth");


//index router
router.get('/' , (req,res) => {
    console.log("Recived home request");
    res.send("Hello world!");

    
})

//demo route
router.get('/home', (req, res)=>{
    console.log("home called");
    res.send("hello");
} )


//route that handles register requests
router.post("/register" , (req , res) => {

    //create a newUser document (ref: userAuth.js)
    const newUser = new users({
        name : req.body.name,
        username : req.body.username,
        email : req.body.email,
        password : req.body.password,
        ph : req.body.ph,
    })

    //save it to mongoDB and define callbacks 
    newUser.save((err) => {
        if(err){
            console.log("Error: " , err);
            res.statusCode = 1;
            res.body = '';
            res.send(res);
        }else{
            console.log(newUser);
            res.send("Successfully added");
        }
    })

})


module.exports = router;