import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing/utilities/asset_constant.dart';

class IconRoute extends StatelessWidget {
  final String assetName;

  IconRoute({required this.assetName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(assetName),
    );
  }
}
