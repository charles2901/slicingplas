import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/colors.dart';

class RippleInkWell extends StatelessWidget {
  final Widget child;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  const RippleInkWell({
    required this.child,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: color ?? kColorWhite,
        borderRadius: borderRadius ?? BorderRadius.circular(4),
      ),
      child: Material(
        borderRadius: borderRadius ?? BorderRadius.circular(4),
        color: Colors.transparent,
        child: InkWell(
          splashFactory: InkRipple.splashFactory,
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(12),
            child: child,
          ),
        ),
      ),
    );
  }
}
