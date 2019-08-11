import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Color(0xFFf4f4f2)),
      debugShowCheckedModeBanner: false,
      home: SplashScreenComp(),
    ));

class SplashScreenComp extends StatefulWidget {
  @override
  _SplashScreenCompState createState() => _SplashScreenCompState();
}

class _SplashScreenCompState extends State<SplashScreenComp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=> print("Next Screen Now"));
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
                padding: EdgeInsets.all(100),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 200.0,
                child: Image.asset("assets/logo1.png"),//correct the location of the image.
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(bottom: 13),
                child: CircularProgressIndicator(),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    "Your Daily Travel Companion",
                    style: TextStyle(
                      color: Color(0xFFf4f4f2),
                      fontSize: 20.0,
                      fontFamily: 'OpenSans-Light',
                      //fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
         
        ],
      ),
    );
  }
}
