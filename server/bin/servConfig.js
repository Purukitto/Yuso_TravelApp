var app = require("../server.js");

var port = 8000;
app.listen(port , () => {
    console.log("Server Running at Port : " , port);
})