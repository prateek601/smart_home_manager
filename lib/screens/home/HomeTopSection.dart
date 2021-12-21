import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CustomContainer.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Constants.whiteColor,
                fontSize: 22
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Chris Cooper',
              style: TextStyle(
                color: Constants.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),
            )
          ],
        ),
        InkWell(
          onTap: () {},
          child: CustomContainer(
            borderRadius: 15,
            height: 50,
            width: 50,
            child: Center(
              child: Icon(
                Icons.add,
                color: Constants.whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
