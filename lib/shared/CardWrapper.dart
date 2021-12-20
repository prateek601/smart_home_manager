import 'package:flutter/material.dart';

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
      child: Container(
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(15)
        ),
        height: this.height,
        child: this.child,
      ),
    );
  }
}
