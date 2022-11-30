import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/utilities/textstyle.dart';

class ProductCard extends StatelessWidget {
  final String title, label, imageUrl;
  final bool isFirst, isLast;

  const ProductCard({
    required this.title,
    required this.label,
    required this.imageUrl,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: isFirst ? 16 : 0, right: isLast ? 16 : 8.0),
      child: SizedBox(
        width: Get.width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                imageUrl,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TStyle.body.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              '$label\n',
              style: TStyle.body.copyWith(fontSize: 10.5),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
