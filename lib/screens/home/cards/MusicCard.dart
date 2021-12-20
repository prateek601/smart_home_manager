import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  Color cardColor = Constants.greyColor;
  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 150,
      color: cardColor,
      child: Column()
    );
  }
}
