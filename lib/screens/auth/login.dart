import 'package:flutter/material.dart';
import 'package:yuso/theme/colors.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset(
          'lib/assets/static/logo_icon.png',
          color: primaryYellow,
          fit: BoxFit.cover,
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        filled: true,
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0)
          ),
        fillColor: Color.fromRGBO(255, 222, 115, 1),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        filled: true,
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
        fillColor: Color.fromRGBO(255, 222, 115, 1),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(null);
        },
        padding: EdgeInsets.all(12),
        color: Color.fromRGBO(255, 222, 115, 1),
        child: Text('Log In', style: TextStyle(color: Colors.black)),
      ),
    );

    
     final google_signin  = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0),
      
      child: RaisedButton(
        elevation: 0,
        child: new Row(
                children: <Widget>[
                  new Icon(Icons.search),
                  new Text("Sign in with Google",style: TextStyle(color: Colors.black)),
                  
            
                ],
              ),
 
        shape: RoundedRectangleBorder(
       
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(null);
        },
        padding: EdgeInsets.all(12),
        color: Color.fromRGBO(255, 222, 115, 1),
 
        

 
      ),
    );

    

    final signin = FlatButton(
      child: Text(
        "Don't have an account ?",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  

    return new GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
      
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            logo,
            SizedBox(height: 70.0),
            email,
            SizedBox(height: 8.0),
            password,
            forgotLabel,
            SizedBox(height: 0.0),
            loginButton,
            SizedBox(height: 0.0),
            google_signin,
            SizedBox(height: 15.0),
            signin
          ],
        ),
      ),
      )
    );

  }
}
