import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing/utilities/textstyle.dart';

class LabelIcon extends StatelessWidget {
  final String assetName;
  final String label;

  const LabelIcon({required this.assetName, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(assetName),
        const SizedBox(height: 4),
        Text(
          label,
          style: TStyle.body.copyWith(fontSize: 11),
        )
      ],
    );
  }
}
