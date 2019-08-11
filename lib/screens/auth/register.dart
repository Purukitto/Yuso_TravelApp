/* 
The Register Component consists of:

1. Underlying scaffold holding all widgets
2. Standard Widget Tree Structure: GestureDetector -> Scaffold -> Form -> Container -> ListView -> Center -> Child
3. Existing issues: -- Text/Cursor disappears when too many characters are supplied to TextFormField
                    -- Form Fields look wierd
   Note - Gesture Detector for enabling Tap Outside & Quit                
*/

import 'package:flutter/material.dart';

class MainRegisterComp extends StatefulWidget {
  @override
  MainRegisterCompState createState() {
    return MainRegisterCompState();
  }
}

class MainRegisterCompState extends State<MainRegisterComp> {
  final _formKey = GlobalKey<FormState>();

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
                      'lib/assets/static/logo.png',
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
                    onPressed: () {},
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
