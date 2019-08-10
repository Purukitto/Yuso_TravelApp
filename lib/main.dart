import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuso/blocprovs/example-bloc-prov.dart';
import 'package:yuso/blocs/example-bloc.dart';
import 'package:yuso/theme/style.dart';
import 'package:yuso/screens/home/homescreen.dart';
import 'screens/index.dart';
import 'screens/auth/register.dart';


void main() {
  runApp(YusoStart());
}

/*class YusoStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleProvider(
      bloc: ExampleBloc(),
      child: MaterialApp(
        title: 'ExampleApp',
        //theme: appTheme(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => Index(),
        },
      ),
    );
  }
}

ISSUE: Probably BLOC preventing render or something. Check
*/

class YusoStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MainRegisterComp(),
      initialRoute: '/',
      routes: <String , WidgetBuilder>{
      '/' : (BuildContext context) => Index()
      },
    );
    
  }
}