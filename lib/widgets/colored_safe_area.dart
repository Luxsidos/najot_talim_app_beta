
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';

class ColoredSafeArea extends StatelessWidget {
  const ColoredSafeArea({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);
  final Widget child;
  final Color? color;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? kPrimaryLightColor,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
