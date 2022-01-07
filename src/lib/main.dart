import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/const.dart';
import 'package:flutter_chat_app_challenge/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Home(),
    );
  }
}
