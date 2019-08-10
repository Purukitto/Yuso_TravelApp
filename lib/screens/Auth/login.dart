import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );

  }
   
}

class LoginPage extends StatefulWidget{
  @override 
  State createState() => new LoginPageState();
  }

class LoginPageState extends  State<LoginPage>{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Container(),
    );
  }
}