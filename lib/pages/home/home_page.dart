import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/pages/home/widget/home_appbar.dart';
import 'package:slicing/pages/home/widget/menu_section.dart';
import 'package:slicing/pages/home/widget/paylater_section.dart';
import 'package:slicing/pages/home/widget/quote_section.dart';
import 'package:slicing/utilities/asset_constant.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/widget/icon_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorWhite,
      body: Column(
        children: [
          HomeAppbar(
            actions: [
              IconRoute(assetName: AssetConstant.notification),
              IconRoute(assetName: AssetConstant.setting),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    MenuSection(),
                    const SizedBox(height: 16),
                    PaylaterSection(),
                    const SizedBox(height: 16),
                    QuoteSection(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
