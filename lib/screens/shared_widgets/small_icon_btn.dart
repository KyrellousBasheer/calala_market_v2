import 'package:flutter/material.dart';

class SmallIconBtn extends StatelessWidget {
  const SmallIconBtn({
    super.key,
    this.onPressed,
    this.splashRadius,
    this.radius = 14,
    this.iconSize = 35,
    this.paddingRadius = 0,
    this.bgColorIntensity = .1,
    required this.icon,
    required this.iconColor,
  });
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? iconColor;
  final double iconSize;
  final double bgColorIntensity;
  final double? splashRadius;

  final double radius;
  final double paddingRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: iconSize,
        height: iconSize,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0),
            shape: const CircleBorder(),
            backgroundColor: iconColor?.withOpacity(bgColorIntensity),
            shadowColor: Colors.transparent,
            elevation: 9,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize - iconSize * .3,
          ),
        ));
  }
}
