import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';
import 'package:smart_home_manager/shared/SwitchButton.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({Key? key}) : super(key: key);

  @override
  _DeviceCardState createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  Color cardColor = Constants.greyColor;
  Color textColor = Constants.whiteColor;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 150,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smart TV',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18
                        ),
                      ),
                      Text(
                        'Samsung UA55 4AC',
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor.withOpacity(0.7)
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: textColor,
                )
              ],
            ),
            SwitchButton(
              switchValue: false,
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
            })
          ],
        ),
      ),
    );
  }
}
