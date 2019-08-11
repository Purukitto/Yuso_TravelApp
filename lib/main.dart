import 'package:flutter/material.dart';
import 'screens/index.dart';

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
        "/": (BuildContext context) => Index(),
      },
    );
  }
}
