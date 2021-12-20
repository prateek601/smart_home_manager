import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
        color: Constants.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Electricity Usage',
                  style: TextStyle(
                    color: Constants.whiteColor,
                    fontSize: 18
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Constants.whiteColor,
                )
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/electricity_usage.PNG',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
