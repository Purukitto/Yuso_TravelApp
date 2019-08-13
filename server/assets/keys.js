var mongoUsername = "pranjaldatta";
var mongoPass = "cU7E3wBIp6zwWITQ";

//replace <password> with password for given username
const mongouri = "mongodb+srv://pranjaldatta:"+mongoPass+"@yusodb-qus7o.mongodb.net/test?retryWrites=true&w=majority";



module.exports.mongoUsername = mongoUsername;
module.exports.mongoPass = mongoPass;   
module.exports.mongouri = mongouri;