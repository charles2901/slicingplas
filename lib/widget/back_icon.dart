import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: const SizedBox(
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 20,
        ),
      ),
    );
  }
}
