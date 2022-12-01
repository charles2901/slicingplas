import 'package:flutter/material.dart';
import 'package:slicing/utilities/textstyle.dart';
import 'package:slicing/widget/ripple_inkwell.dart';

class ProductCardRow extends StatelessWidget {
  final String label, company, info, imageUrl;
  const ProductCardRow({
    required this.label,
    required this.company,
    required this.info,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return RippleInkWell(
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                imageUrl,
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TStyle.body.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    company,
                    style: TStyle.body.copyWith(fontSize: 10.5),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    info,
                    style: TStyle.body.copyWith(fontSize: 10.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
