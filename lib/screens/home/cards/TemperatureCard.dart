import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';
import 'package:smart_home_manager/shared/SwitchButton.dart';

class TemperatureCard extends StatefulWidget {
  const TemperatureCard({Key? key}) : super(key: key);

  @override
  _TemperatureCardState createState() => _TemperatureCardState();
}

class _TemperatureCardState extends State<TemperatureCard> {
  Color cardColor = Constants.whiteColor;
  Color textColor = Constants.blackColor;
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return CardWrapper(height: 200,
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Home Temperature',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '23 ',
                  style: TextStyle(
                    fontSize: 46,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\u2103',
                      style: TextStyle(
                        fontSize: 16,
                        color: textColor
                      )
                    ),
                  ],
                ),
              ),
              SwitchButton(
                switchValue: _switchValue,
                onPress: (value) {
                  setState(() {
                    _switchValue = value;
                    if(value == true) {
                      cardColor = Constants.whiteColor;
                      textColor = Constants.blackColor;
                    } else {
                      cardColor = Constants.greyColor;
                      textColor = Constants.whiteColor;
                    }
                  });
                },
              )
            ],
          ),
        )
    );
  }
}
