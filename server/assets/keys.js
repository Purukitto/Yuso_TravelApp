var mongoUsername = ""; //enter mongoUsername here
var mongoPass = "";   //enter pass

//replace <password> with password for given username
const mongouri = "mongodb+srv://<username>:"+mongoPass+"@yusodb-qus7o.mongodb.net/test?retryWrites=true&w=majority";



module.exports.mongoUsername = mongoUsername;
module.exports.mongoPass = mongoPass;   
module.exports.mongouri = mongouri;
