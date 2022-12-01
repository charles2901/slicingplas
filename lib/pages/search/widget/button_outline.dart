import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';

class ButtonOutline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: kColorBlack, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'LIHAT SELENGKAPNYA',
        style: TStyle.body.copyWith(
          fontSize: 10,
          color: kColorBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
