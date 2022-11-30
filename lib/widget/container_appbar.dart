import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/colors.dart';

class ContainerAppBar extends StatelessWidget {
  final Widget child;

  const ContainerAppBar({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        16,
        MediaQuery.of(context).viewPadding.top + 12,
        16,
        16,
      ),
      width: Get.width,
      color: kColorGreyPrimary,
      child: child,
    );
  }
}
