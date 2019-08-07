import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuso/blocprovs/example-bloc-prov.dart';
import 'package:yuso/blocs/example-bloc.dart';
import 'package:yuso/theme/style.dart';
import 'package:yuso/screens/home/homescreen.dart';

void main() {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleProvider(
      bloc: ExampleBloc(),
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => ExScreen1(),
          "/ExScreen2": (BuildContext context) => ExScreen2(),
        },
      ),
    );
  }
}
