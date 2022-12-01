import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/asset_constant.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/widget/label_icon.dart';
import 'package:slicing/widget/ripple_inkwell.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: Get.width,
      decoration: BoxDecoration(
          color: kColorWhite,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: kColorBlack.withOpacity(0.05),
              blurRadius: 0.5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        children: const [
          Expanded(
            child: RippleInkWell(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              child: LabelIcon(
                label: 'Kategori',
                assetName: AssetConstant.categories,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              borderRadius: BorderRadius.zero,
              child: LabelIcon(
                label: 'Quotation',
                assetName: AssetConstant.quote,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              borderRadius: BorderRadius.zero,
              child: LabelIcon(
                label: 'Favorit',
                assetName: AssetConstant.favorites,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: LabelIcon(
                label: 'Paylater',
                assetName: AssetConstant.paylater,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
