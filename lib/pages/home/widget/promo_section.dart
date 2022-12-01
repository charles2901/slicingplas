import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/main_controller.dart';
import 'package:slicing/pages/home/widget/menu_section.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/widget/ripple_inkwell.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromoSection extends StatelessWidget {
  MainController mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: CarouselSlider(
        items: mainController.image
            .map((url) => Ink.image(
                  width: Get.width,
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {},
                    splashFactory: InkRipple.splashFactory,
                    splashColor: kColorWhite.withOpacity(0.5),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          onPageChanged: (idx, _) => mainController.indexPromo.value = idx,
        ),
      ),
    );
  }
}
