import 'package:flutter/material.dart';
import 'package:smart_home_manager/constants.dart';
import 'package:smart_home_manager/shared/CustomContainer.dart';

class CardWrapper extends StatelessWidget {
  final double height;
  final Color color;
  final Widget child;
  const CardWrapper({
    Key? key,
    required this.height,
    required this.color,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      this.color == Constants.whiteColor
      ?
      Container(
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(20),
        ),
        height: this.height,
        child: this.child,
      )
      :
      CustomContainer(
        borderRadius: 20,
        height: this.height,
        width: double.infinity,
        child: this.child,
      )
    );
  }
}
