import 'package:flutter/material.dart';
//import 'package:yuso/screens/home/homescreen.dart';
import 'screens/login.dart';
//import 'screens/auth/register.dart';

void main() {
  runApp(
    new Yuso(),
  );
}

class Yuso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yuso',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => LoginPage(),
      },
    );
  }
}
