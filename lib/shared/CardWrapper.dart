import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:smart_home_manager/constants.dart';

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
      GlassmorphicContainer(
        width: double.infinity,
        height: this.height,
        borderRadius: 20,
        blur: 7,
        border: 1.5,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFffffff).withOpacity(0.5),
            Color((0xFF000000)).withOpacity(0.5),
          ],
        ),
        child: this.child,
      ),
    );
  }
}
