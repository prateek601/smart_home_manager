import 'package:flutter/material.dart';
import 'screens/home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PulpDisplay'
      ),
      home: Home(),
    );
  }
}
