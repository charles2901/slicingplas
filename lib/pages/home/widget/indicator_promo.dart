import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/main_controller.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorPromo extends StatelessWidget {
  MainController mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedSmoothIndicator(
        activeIndex: mainController.indexPromo.value,
        count: mainController.image.length,
        duration: const Duration(milliseconds: 500),
        effect: WormEffect(
          spacing: 7,
          dotHeight: 6,
          dotWidth: 6,
          dotColor: kColorGrey,
          activeDotColor: kColorWhite,
        ),
      ),
    );
  }
}
