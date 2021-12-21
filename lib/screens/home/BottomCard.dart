import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CustomContainer.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: Alignment.topCenter,
        heightFactor: 0.9,
        child: CustomContainer(
          borderRadius: 20,
          height: 180,
          width: double.infinity,
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
        ),
      ),
    );
  }
}
