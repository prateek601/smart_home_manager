import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';

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
        MaterialButton(
          onPressed: (){},
          color: Constants.greyColor,
          height: 50,
          minWidth: 50,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          child: Icon(
            Icons.add,
            color: Constants.whiteColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(15.0),
          ),
        )
      ],
    );
  }
}
