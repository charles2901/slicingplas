import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/colors.dart';

class RippleInkWell extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color? splashColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  const RippleInkWell({
    required this.child,
    this.color,
    this.borderRadius,
    this.padding,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: Get.width,
      decoration: BoxDecoration(
        color: color ?? kColorWhite,
        borderRadius: borderRadius ?? BorderRadius.circular(4),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius != null
              ? borderRadius as BorderRadius
              : BorderRadius.circular(4),
          splashFactory: InkRipple.splashFactory,
          splashColor: kColorGrey.withOpacity(0.3),
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(4),
            ),
            padding: padding ?? const EdgeInsets.all(12),
            child: child,
          ),
        ),
      ),
    );
  }
}
