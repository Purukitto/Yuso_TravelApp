/*
Here we define our user schema.

1. read about noSQL concepts
2. Brief :  a schema is basically a json object with certain predefined params that store certain info. Schema is
            theoretically an abstract class thats instantiated at another place

*/


const mongoose = require('mongoose');
const Schema = mongoose.Schema;


const UserSchema = new Schema({
    
    username : {
        type: String,
        required: true,
    },

    password: {    //ISSUE : USE HASHING WITH SALTING ASAP
        type: String,
        required: true,
    },

    ph: {
        type: String,
        required: true,
    },

    name: {
        type: String,
        required: true,
    },

    email: {
        type: String,
        required: true,
    },
});

module.exports = mongoose.model("users" , UserSchema);