import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({Key? key}) : super(key: key);

  @override
  _DeviceCardState createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  Color cardColor = Constants.greyColor;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 150,
      color: cardColor,
      child: Column(),
    );
  }
}
