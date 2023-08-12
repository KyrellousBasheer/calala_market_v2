import 'dart:math';

import 'package:calala_market/constants.dart';
import 'package:flutter/material.dart';

class SmallIconBtn extends StatelessWidget {
  const SmallIconBtn({
    super.key,
    this.onPressed,
    this.iconSize,
    this.radius = 17,
    this.splashRadius,
    this.paddingRadius = 0,
    required this.icon,
    required this.iconColor,
  });
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? splashRadius;
  final double radius;
  final double paddingRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(paddingRadius),
      child: IconButton(
        iconSize: kScreenSize!.width / 20, // iconSize ?? radius,
        splashRadius: max(max(radius / 2, splashRadius ?? 0), 17) + 3,
        constraints: BoxConstraints(
          maxWidth: radius,
          maxHeight: radius,
          minWidth: radius,
          minHeight: radius,
        ),
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Icon(icon, color: iconColor),
      ),
    );
  }
}
