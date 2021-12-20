import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';

typedef void OnPress(bool value);

class SwitchButton extends StatefulWidget {
  final bool switchValue;
  final OnPress onPress;
  const SwitchButton({
    Key? key,
    required this.switchValue,
    required this.onPress
  }) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  late bool switchValue;
  @override
  void initState() {
    super.initState();
    switchValue = this.widget.switchValue;
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: switchValue,
      onChanged: (value) {
        setState(() {
          switchValue = value;
          this.widget.onPress(value);
        });
      },
      activeColor: Constants.pitchColor,
      trackColor: Constants.whiteColor.withOpacity(0.7),
    );
  }
}
