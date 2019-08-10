import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreenComp(),
    ));

class SplashScreenComp extends StatefulWidget {
  @override
  _SplashScreenCompState createState() => _SplashScreenCompState();
}

class _SplashScreenCompState extends State<SplashScreenComp> {
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
                child: Image.asset("assets/logo-03.png"),
              ),
              Text(
                "Your Daily Travel Companion",
                style: TextStyle(
                    color: Color(0xFFf4f4f2),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
