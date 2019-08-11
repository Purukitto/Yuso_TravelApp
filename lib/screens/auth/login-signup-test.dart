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
          color:primaryYellow,
          fit: BoxFit.cover,
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        filled: true,
        hintText: 'Email', hintStyle:TextStyle(color: primaryBlack),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100.0)
          ),
        fillColor: primaryYellow,
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.fingerprint),
        filled: true,
        hintText: 'Password',hintStyle:TextStyle(color: primaryBlack),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100.0),
        ),
        fillColor: primaryYellow,
      ),
    );

    final forgotLabel = Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.0),

      child: FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: primaryBlack),
      ),
      onPressed: () {},
    )
    );
    
     

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
      child: OutlineButton(
        borderSide: BorderSide(
            color: primaryYellow, 
            style: BorderStyle.solid,
            width: 2.0, 
          ),

        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0), 
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(null);
        },
        
        padding: EdgeInsets.all(12),
        color: primaryWhite,
        child: Text('Log In', style: TextStyle(color: primaryBlack)),
      ),
    );

    
     final google_signin  = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
      
      child: RaisedButton(
        elevation: 0,
        child: new Row(
                children: <Widget>[
                  new Icon(Icons.group_work, color: Colors.black54),
                  new Text("    Sign in with Google",style: TextStyle(color: primaryBlack)),
                  
            
                ],
              ),
 
        shape: RoundedRectangleBorder(
       
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(null);
        },
        padding: EdgeInsets.all(12),
        color: primaryYellow,
 
        

 
      ),
    );

    final signin = Row(
  children: <Widget>[
    new Container(width: 50,),
   

     const Text("Don't have an account ?",style:TextStyle(color: primaryBlack, fontWeight: FontWeight.bold)),
     Padding(
       padding:  EdgeInsets.only(left:0),
     child:GestureDetector(
       onTap: null,
        child: Text(
        " Sign up",
        style: TextStyle(color: primaryYellow,fontWeight: FontWeight.bold),
      ),
    ),
     ),
  
    

        
  ]
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
