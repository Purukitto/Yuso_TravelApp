/*
index.dart is the entry screen. Login and Register components go here.

NOTE : AS OF NOW we are assuming the app is no cache to store logins. Once the app as such is ready we add 
the caching feature to increase functionality . So the structuring/routing will change then.
 */

//Change login/register/SplashScreen as per need (for now)

import 'package:flutter/material.dart';
import 'package:yuso/screens/Auth/login.dart' as login;
import 'package:yuso/theme/colors.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
      name: 'lib/assets/static/splash.flr',
      next: login.LoginPage(),
      //until: () => Future.delayed(Duration(seconds: 5)),
      startAnimation: 'intro',
      backgroundColor: primaryYellow,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) =>
          SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}
