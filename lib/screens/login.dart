import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
   

    final logo =  Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset('images/logo-02.png'),
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
        fillColor: Color.fromRGBO(255, 222, 115, 1),
      ),
      
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
      
      child: RaisedButton(
        
    
        shape: RoundedRectangleBorder(
           
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(null);
        },
        padding: EdgeInsets.all(12),
        color: Color.fromRGBO(255, 222, 115, 1),
 
        child: Text('Log In', style: TextStyle(color: Colors.white)),

 
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final signin = FlatButton(
      child: Text(
        "Don't have an account ?",
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );


     return Scaffold(
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
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            SizedBox(height: 96.0),
            signin
          ],
        ),
      ),
    );
  
  
}
}


