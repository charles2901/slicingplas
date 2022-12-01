import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';

class LabelIcon extends StatelessWidget {
  final String assetName;
  final String label;
  final double fontSize;
  final Color? color;
  final bool isActive;
  final Color? activeColor;

  const LabelIcon({
    required this.assetName,
    required this.label,
    this.fontSize = 11,
    this.color,
    this.isActive = false,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          assetName,
          color: isActive ? activeColor ?? kColorActive : color ?? kColorBlack,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TStyle.body.copyWith(
              fontSize: fontSize,
              color: isActive
                  ? activeColor ?? kColorActive
                  : color ?? kColorBlack),
        )
      ],
    );
  }
}
