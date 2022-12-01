import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/main_controller.dart';
import 'package:slicing/pages/home/widget/home_appbar.dart';
import 'package:slicing/pages/home/widget/indicator_promo.dart';
import 'package:slicing/pages/home/widget/menu_section.dart';
import 'package:slicing/pages/home/widget/product_section.dart';
import 'package:slicing/pages/home/widget/paylater_section.dart';
import 'package:slicing/pages/home/widget/product_card.dart';
import 'package:slicing/pages/home/widget/promo_section.dart';
import 'package:slicing/pages/home/widget/quote_section.dart';
import 'package:slicing/pages/home/widget/top_homepage.dart';
import 'package:slicing/utilities/asset_constant.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/widget/bottom_appbar.dart';
import 'package:slicing/widget/icon_route.dart';

class HomePage extends StatelessWidget {
  MainController mainController = Get.put(MainController());
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
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowIndicator();
                return false;
              },
              child: RefreshIndicator(
                onRefresh: () async {},
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PromoSection(),
                      Transform.translate(
                        offset: const Offset(0, -50),
                        child: Column(
                          children: [
                            const TopHomePage(),
                            const SizedBox(height: 16),
                            PaylaterSection(),
                            const SizedBox(height: 16),
                            QuoteSection(),
                            const SizedBox(height: 16),
                            const ProductSection(
                              title: 'Produk Terbaru',
                            ),
                            const SizedBox(height: 12),
                            const ProductSection(
                              title: 'Apa yang orang beli sekarang',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          BottomAppHome(),
        ],
      ),
    );
  }
}
