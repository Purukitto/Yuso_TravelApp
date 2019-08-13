var users = require("./models/userAuth");

const newUser = new users({
    username : "trial_xxxxxmkdf13",
    email: "trial@123.com",
    password: "notsecure",
    ph: "1234",
    name: "trial_123"
})

newUser.save()
       .then((item) => {
           console.log("item added successfully!");
       })
       .catch((err)=> {
           console.log(err);
       })

