import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CardWrapper.dart';

class PlugWallCard extends StatelessWidget {
  const PlugWallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      height: 200,
      color: Constants.greyColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plug Wall',
                  style: TextStyle(
                    color: Constants.whiteColor
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Constants.whiteColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
