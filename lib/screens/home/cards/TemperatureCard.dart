import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';

class TemperatureCard extends StatefulWidget {
  const TemperatureCard({Key? key}) : super(key: key);

  @override
  _TemperatureCardState createState() => _TemperatureCardState();
}

class _TemperatureCardState extends State<TemperatureCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Constants.whiteColor,
          borderRadius: BorderRadius.circular(15)
        ),
        height: 200,
      ),
    );
  }
}
