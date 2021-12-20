import 'package:flutter/material.dart';
import 'package:smart_home_manager/screens/home/StackedHome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/home_bg.jpg',
            fit: BoxFit.cover,
          ),
          StackedHome()
        ],
      ),
    );
  }
}
