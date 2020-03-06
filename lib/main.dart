import 'package:flutter/material.dart';
import 'package:login/UI/Home/DashBoard.dart';
import 'package:login/UI/Login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stinga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Login(),
      home: DashBoard(),
    );
  }
}