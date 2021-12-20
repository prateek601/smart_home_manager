import 'package:flutter/material.dart';
import 'package:smart_home_manager/screens/home/cards/DeviceCard.dart';
import 'package:smart_home_manager/screens/home/cards/MusicCard.dart';
import 'package:smart_home_manager/screens/home/cards/PlugWallCard.dart';
import 'package:smart_home_manager/screens/home/cards/TemperatureCard.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TemperatureCard(),
            SizedBox(width: 20,),
            PlugWallCard(),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            MusicCard(),
            SizedBox(width: 20,),
            DeviceCard()
          ],
        )
      ],
    );
  }
}
