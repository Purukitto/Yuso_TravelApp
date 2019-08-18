import '../home/home.dart';
import 'package:flutter/material.dart';
import 'package:yuso/theme/colors.dart';
import 'package:yuso/assets/icons/custom_icons1_icons.dart';
import 'package:yuso/components/slide_route.dart';
import './register.dart';
import 'package:http/http.dart' as http;

class GetReq {
  //declare here
  String email;
  String password;
  //String retCode;

  //initialize here
  GetReq({this.email, this.password});

  //serialize here
  Map toMap() {
    var map = new Map<String, String>();

    map['email'] = email;
    map['password'] = password;

    return map;
  }
}

//make the damn request please
Future<String> lookforUser(String _host, String _path, {Map body}) async {
  return http.get(Uri.http(_host, _path, body)).then((http.Response response) {
    if (response.statusCode < 200 || response.statusCode > 400) {
      throw new Exception("Error at GET Request");
    }
    return response.body;
  });
}

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _showDialog() {
    //ISSUE:  change design please. very ugly
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          content: new Text("Wrong Email or Password"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  var _host = "localhost:3333";
  var _path = "signin";
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

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
      controller: emailController,
      decoration: InputDecoration(
        prefixIcon: const Icon(CustomIcons1.user),
        filled: true,
        hintText: 'Email',
        hintStyle: TextStyle(color: primaryBlack),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100.0)),
        fillColor: primaryYellow,
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.fingerprint),
        filled: true,
        hintText: 'Password',
        hintStyle: TextStyle(color: primaryBlack),
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
        ));

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
        onPressed: () async {
          //on press event handling done here
          GetReq newreq = new GetReq(
            email: emailController.text,
            password: passController.text,
          );

          String msgFromServer =
              await lookforUser(_host, _path, body: newreq.toMap());
          if (msgFromServer == "true") {
            Navigator.push(context, SlideRightRoute(page: Dummy()));
          } else {
            //temporary measure. this alert dialog box needs to be replaced by something
            //ISSUE
            _showDialog();
          }
        },
        padding: EdgeInsets.all(12),
        color: primaryWhite,
        child: Text('Log In', style: TextStyle(color: primaryBlack)),
      ),
    );

    final googleSignIn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
      child: RaisedButton(
        elevation: 0,
        child: Center(
          child: new Row(
            children: <Widget>[
              new Icon(CustomIcons1.google),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              ),
              new Text(
                "Sign in with Google",
                style: TextStyle(color: primaryBlack),
              ),
            ],
          ),
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

    final signin = Center(
      child: Row(
        children: <Widget>[
          new Container(
            width: 50,
          ),
          const Text(
            "Don't have an account ?",
            style: TextStyle(color: primaryBlack, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, SlideRightRoute(page: MainRegisterComp()));
            },
            child: Text(
              " Sign up",
              style:
                  TextStyle(color: primaryYellow, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
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
              googleSignIn,
              SizedBox(height: 15.0),
              signin
            ],
          ),
        ),
      ),
    );
  }
}
