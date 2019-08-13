/* 
The Register Component consists of:

1. Underlying scaffold holding all widgets
2. Standard Widget Tree Structure: GestureDetector -> Scaffold -> Form -> Container -> ListView -> Center -> Child
3. Existing issues: -- Text/Cursor disappears when too many characters are supplied to TextFormField
                    -- Form Fields look wierd
   Note - Gesture Detector for enabling Tap Outside & Quit                
*/

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yuso/screens/home/home.dart' as prefix0;
import 'dart:core';
import '../home//home.dart';



//class to handle POST requests i.e. serialization and deserialization
class PostReq {
  
  //declare here
  String username;
  String name;
  String email;
  String ph;
  String password;

  //initialize here
  PostReq({this.username, this.email, this.name, this.password, this.ph});

  //serialize here
  Map toMap(){
    
    var map = new Map<String , dynamic>();
    map['username'] = username;
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['ph'] = ph;

    return map; 
   
  }

  //unserialize here
  factory PostReq.fromjson(Map<String , dynamic>json) {
    return PostReq(
      username : json['username'],
      email : json['email'],
      name : json['name'],
      password : json['password'],
      ph : json['ph'],
    );
  }
}

// Finally Make the damn request, please
//check readme regarding routing. fuss involved
Future<String> sendRegisterDetails(String _host , String _path, {Map body} ) async{
  return http.post(Uri.http("localhost:3333", "register" ) , body: body)
             .then((http.Response response){
               
               int statusCode = response.statusCode;

               if(statusCode < 200 || statusCode > 400 ){
                 throw new Exception("Error while posting info at sendRegisterDetails");
               }

               return ((response.body));
             });

}

class MainRegisterComp extends StatefulWidget {
  @override
  MainRegisterCompState createState() {
    return MainRegisterCompState();
  }
}

class MainRegisterCompState extends State<MainRegisterComp> {
  
  final _formKey = GlobalKey<FormState>();

  //we define controllers to handle text in textformfields
  TextEditingController usernameController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController phController = new TextEditingController();
  var _host = "localhost:8000";
  var _path = "/register";


  @override
  Widget build(BuildContext context) {




    return new GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        //appBar: AppBar(title: Text("Hello"),),
        backgroundColor: Color.fromRGBO(255, 222, 115, 1),
        //resizeToAvoidBottomPadding: false,
        body: Form(
          key: _formKey,
          child: Container(
            child: ListView(children: <Widget>[
              Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Image.asset(
                      'lib/assets/static/logo_icon.png',
                      height: 200,
                      width: 200,
                    )),
              ),
              Center(
                  child: Container(
                width: 230.0,
                height: 60.0,
                padding: EdgeInsets.fromLTRB(25, 0, 0, 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Name",
                    labelStyle: TextStyle(fontFamily: 'Roboto'),
                    border: new OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(248, 234, 192, .5),
                  ),
                  controller: nameController,
                ),
              )),
              Center(
                child: Container(
                  width: 230.0,
                  height: 60.0,
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(fontFamily: 'Roboto'),
                      prefixIcon: Icon(Icons.phone),
                      border: new OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      fillColor: Color.fromRGBO(248, 234, 192, .5),
                      filled: true,
                    ),
                    controller: phController,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 230.0,
                  height: 60.0,
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(fontFamily: 'Roboto'),
                      prefixIcon: Icon(Icons.person),
                      border: new OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      fillColor: Color.fromRGBO(248, 234, 192, .5),
                      filled: true,
                    ),
                    controller: usernameController,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 230.0,
                  height: 60.0,
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      labelStyle: TextStyle(fontFamily: 'Roboto'),
                      border: new OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      fillColor: Color.fromRGBO(248, 234, 192, .5),
                      filled: true,
                    ),
                    controller: emailController,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 230.0,
                  height: 60.0,
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.enhanced_encryption),
                      labelText: "Password",
                      labelStyle: TextStyle(fontFamily: 'Roboto'),
                      border: new OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      fillColor: Color.fromRGBO(248, 234, 192, .5),
                      filled: true,
                    ),
                    controller: passwordController,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Center(
                  child: FloatingActionButton.extended(
                    //backgroundColor: Color.fromRGBO(255, 222, 115, 1),
                    backgroundColor: Color.fromRGBO(255, 222, 115, 1),
                    shape: new Border.all(
                      color: Color.fromRGBO(248, 234, 192, 1),
                      width: 2.5,
                    ),
                     
                     
                     //create the post request dart object
                     onPressed: () async {
                      PostReq newPost = new PostReq(username: usernameController.text, password: passwordController.text,
                                               email: emailController.text, name: nameController.text, ph: phController.text,
                      
                     );
                       
                       //call the make request function
                       String res = await sendRegisterDetails(_host, _path , body: newPost.toMap());
                       
                       if(res == "Successfully added"){
                        //change screens wherever u want
                         Navigator.of(context).pushReplacement(
                         MaterialPageRoute(
                           builder: (BuildContext context) => Dummy(),
                         )
                      
                       );
                      }
                     },

                    elevation: 0,
                    label: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'OpenSans-Light.tff', fontSize: 15),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
