/*
index.dart is the entry screen. Login and Register components go here.

NOTE : AS OF NOW we are assuming the app is no cache to store logins. Once the app as such is ready we add 
the caching feature to increase functionality . So the structuring/routing will change then.
 */

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import './auth/register.dart';
import './SplashScreen.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenComp(),
    );
  }
}
