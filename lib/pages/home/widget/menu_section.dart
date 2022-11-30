import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/asset_constant.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';
import 'package:slicing/widget/ripple_inkwell.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: kColorWhite,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: RippleInkWell(
              child: Column(
                children: [
                  SvgPicture.asset(AssetConstant.categories),
                  const SizedBox(height: 4),
                  Text(
                    'Kategori',
                    style: TStyle.body.copyWith(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              child: Column(
                children: [
                  SvgPicture.asset(AssetConstant.quote),
                  const SizedBox(height: 4),
                  Text(
                    'Quotation',
                    style: TStyle.body.copyWith(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              child: Column(
                children: [
                  SvgPicture.asset(AssetConstant.favorites),
                  const SizedBox(height: 4),
                  Text(
                    'Favorit',
                    style: TStyle.body.copyWith(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: RippleInkWell(
              child: Column(
                children: [
                  SvgPicture.asset(AssetConstant.paylater),
                  const SizedBox(height: 4),
                  Text(
                    'Paylater',
                    style: TStyle.body.copyWith(fontSize: 11),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
