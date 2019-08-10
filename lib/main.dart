import 'package:flutter/material.dart';
import 'package:yuso/theme/style.dart';
import 'package:yuso/screens/home/homescreen.dart';

void main() {
  runApp(Yuso());
}

class Yuso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Yuso',
      theme: appTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => ExScreen1(),
      },
    );
  }
}
