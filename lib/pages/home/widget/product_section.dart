import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slicing/pages/home/widget/product_card.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';

class ProductSection extends StatelessWidget {
  final String title;

  const ProductSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: kColorWhite,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TStyle.body.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lihat lebih banyak',
                  style: TStyle.body.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: kColorTeal,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ProductCard(
                  title: 'RECYCLE HIPS BLACK COLOR',
                  label:
                      'Pelita Mekar Semesta Recycled | Recycled HIPS\nJAVA Area',
                  imageUrl:
                      'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
                  isFirst: true,
                ),
                ProductCard(
                  title: 'RECYCLE HIPS BLACK COLOR',
                  label:
                      'Pelita Mekar Semesta Recycled | Recycled HIPS\nJAVA Area',
                  imageUrl:
                      'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
                ),
                ProductCard(
                  title: 'RECYCLE HIPS BLACK COLOR',
                  label:
                      'Pelita Mekar Semesta Recycled | Recycled HIPS\nJAVA Area',
                  imageUrl:
                      'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
                ),
                ProductCard(
                  title: 'RECYCLE HIPS BLACK COLOR',
                  label:
                      'Pelita Mekar Semesta Recycled | Recycled HIPS\nJAVA Area',
                  imageUrl:
                      'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
                ),
                ProductCard(
                  title: 'RECYCLE HIPS BLACK COLOR',
                  label:
                      'Pelita Mekar Semesta Recycled | Recycled HIPS\nJAVA Area',
                  imageUrl:
                      'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
                  isLast: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
