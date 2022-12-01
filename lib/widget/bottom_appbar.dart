import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/controllers/main_controller.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:collection/collection.dart';
import 'package:slicing/widget/label_icon.dart';

class BottomAppHome extends StatelessWidget {
  final MainController mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: kColorWhite,
        boxShadow: [
          BoxShadow(
            color: kColorGrey.withOpacity(0.5),
            blurRadius: 0.5,
            offset: const Offset(0, -0.5),
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
          children: mainController.listBottomBar
              .mapIndexed((index, model) => Expanded(
                    child: LabelIcon(
                      assetName: model.asset,
                      label: model.label,
                      fontSize: 10,
                      color: kColorGrey,
                      isActive: mainController.indexBottombar.value == index,
                    ),
                  ))
              .toList()),
    );
  }
}
