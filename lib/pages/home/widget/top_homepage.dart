import 'package:flutter/material.dart';
import 'package:slicing/pages/home/widget/indicator_promo.dart';
import 'package:slicing/pages/home/widget/menu_section.dart';
import 'package:slicing/utilities/colors.dart';

class TopHomePage extends StatelessWidget {
  const TopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kColorGrey.withOpacity(0.1),
            kColorGrey.withOpacity(0.25),
            kColorGrey.withOpacity(0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        // color: kColorBlack,
      ),
      child: Column(
        children: [
          IndicatorPromo(),
          const SizedBox(height: 12),
          const MenuSection(),
        ],
      ),
    );
  }
}
