import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  final double borderRadius;
  const CustomContainer({
    Key? key,
    this.child,
    required this.borderRadius,
    required this.height,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: this.width,
      height: this.height,
      borderRadius: this.borderRadius,
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
    );
  }
}
