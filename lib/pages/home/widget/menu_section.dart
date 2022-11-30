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
      ),
      child: Row(
        children: const [
          Expanded(
            child: RippleInkWell(
              child: LabelIcon(
                label: 'Kategori',
                assetName: AssetConstant.categories,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              child: LabelIcon(
                label: 'Quotation',
                assetName: AssetConstant.quote,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              child: LabelIcon(
                label: 'Favorit',
                assetName: AssetConstant.favorites,
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
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
