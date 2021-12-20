import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';
import 'package:smart_home_manager/shared/SwitchButton.dart';

class PlugWallCard extends StatefulWidget {
  const PlugWallCard({Key? key}) : super(key: key);

  @override
  _PlugWallCardState createState() => _PlugWallCardState();
}

class _PlugWallCardState extends State<PlugWallCard> {
  List<String> notes = ['Macbook Pro', 'HomePad', 'PlayStation 5'];
  Color cardColor = Constants.greyColor;
  Color textColor = Constants.whiteColor;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 200,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plug Wall',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: textColor,
                )
              ],
            ),
            ListView.builder(
              itemCount: notes.length,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text(
                      '\u2022 ',
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        height: 1
                      ),
                    ),
                    Text(
                        notes[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          height: 1
                        )
                    )
                  ],
                );
            }),
            SwitchButton(
              switchValue: _switchValue,
              onPress: (value){
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
            })
          ],
        ),
      ),
    );
  }
}
