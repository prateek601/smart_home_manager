import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/screens/home/BottomCard.dart';
import 'package:smart_home_manager/screens/home/CardSection.dart';
import 'package:smart_home_manager/screens/home/HomeTopSection.dart';

class StackedHome extends StatelessWidget {
  const StackedHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTopSection(),
                Padding(
                  padding: const EdgeInsets.only(top: 40,bottom: 20),
                  child: Text(
                    'Living Room',
                    style: TextStyle(
                      fontSize: 18,
                      color: Constants.whiteColor
                    ),
                  ),
                ),
                CardSection(),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Statistics',
                        style: TextStyle(
                            color: Constants.whiteColor,
                            fontSize: 18
                        ),
                      ),
                      Text(
                        'Month',
                        style: TextStyle(
                          color: Constants.whiteColor.withOpacity(0.5),
                          fontSize: 18
                        ),
                      )
                    ],
                  ),
                ),
                BottomCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
