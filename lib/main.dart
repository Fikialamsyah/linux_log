import 'package:flutter/material.dart';
import 'package:linux_log/welcomePage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linux Log',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black),
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
