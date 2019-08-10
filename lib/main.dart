import 'package:flutter/material.dart';
import 'package:yuso/screens/home/homescreen.dart';
import 'screens/index.dart';
import 'screens/auth/register.dart';

void main() 
  runApp(Yuso());
}

class Yuso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Yuso',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => Index(),
      },
    );
  }
}

class YusoStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{'/': (BuildContext context) => Index()},
    );
  }
}
