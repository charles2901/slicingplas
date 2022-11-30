import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slicing/utilities/asset_constant.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';
import 'package:slicing/widget/ripple_inkwell.dart';

class QuoteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RippleInkWell(
        color: kColorGreyPrimary,
        child: Row(
          children: [
            SvgPicture.asset(AssetConstant.quote),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Request for Quote',
                    style: TStyle.body.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Negosiasikan produk dengan cepat dan mudah',
                    style: TStyle.body.copyWith(
                      fontSize: 10.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
