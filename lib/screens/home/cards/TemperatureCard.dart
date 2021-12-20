import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class TemperatureCard extends StatefulWidget {
  const TemperatureCard({Key? key}) : super(key: key);

  @override
  _TemperatureCardState createState() => _TemperatureCardState();
}

class _TemperatureCardState extends State<TemperatureCard> {
  Color cardColor = Constants.whiteColor;
  @override
  Widget build(BuildContext context) {
    return CardWrapper(height: 200,
        color: cardColor,
        child: Column()
    );
  }
}
