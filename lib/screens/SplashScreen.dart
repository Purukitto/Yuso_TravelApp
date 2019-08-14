import 'package:flutter/material.dart';
import './auth/login.dart';
import 'dart:async';
import 'package:yuso/theme/colors.dart';
import './auth/register.dart';

class SplashScreenComp extends StatefulWidget {
  @override
  _SplashScreenCompState createState() => _SplashScreenCompState();
}

class _SplashScreenCompState extends State<SplashScreenComp> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          
          builder: (BuildContext context) => LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(255, 222, 115, 1)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(80),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 200.0,
                child: Image.asset("lib/assets/static/logo_full.png"),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(bottom: 13),
                child: CircularProgressIndicator(
                  backgroundColor: primaryYellow,
                  valueColor: new AlwaysStoppedAnimation<Color>(primaryWhite),
                ),
              ),
              Container(
                height: 50,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    "Your Daily Travel Companion",
                    style: TextStyle(
                      color: Color(0xFFf4f4f2),
                      fontSize: 20.0,
                      fontFamily: 'OpenSans-Light',
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
