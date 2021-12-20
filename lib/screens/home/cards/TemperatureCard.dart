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

  @override
  Widget build(BuildContext context) {
    return CardWrapper(height: 200,
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home Temperature',
                style: TextStyle(
                  color: textColor
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10),
                child: RichText(
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
              ),
              SwitchButton(
                switchValue: true,
                onPress: (value) {
                  setState(() {
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
