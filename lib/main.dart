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
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        DashBoard.id: (context) => DashBoard()
      }
    );
  }
}