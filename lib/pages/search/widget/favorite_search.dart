import 'package:flutter/material.dart';
import 'package:slicing/pages/search/widget/card_product_row.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';

class FavoriteSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Pencarian Populer',
                style: TStyle.body.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Refresh',
              style: TStyle.body.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: kColorTeal,
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        const ProductCardRow(
          label: 'RECYCLE HIPS BLACK COLOR',
          company: 'Pelita Mekar Semesta',
          info: 'Recycled | Recycled HIPS | JAVA Area',
          imageUrl:
              'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
        ),
        const ProductCardRow(
          label: 'ADHESIVE TAPE FURONGHUI (25x1040x8000)',
          company: 'Colorpark Flexible Indonesia',
          info: 'BOPP | Adhesive Tape | JAVA Area',
          imageUrl:
              'https://cdn.tokoplas.com/assets/products/CLPI_all_-_BOPP_PRINTING_LAMI.webp.webp',
        ),
        const ProductCardRow(
          label: 'RECYCLE HIPS BLACK COLOR',
          company: 'Pelita Mekar Semesta',
          info: 'Recycled | Recycled HIPS | JAVA Area',
          imageUrl:
              'https://cdn.tokoplas.com/assets/products/PMS_-_RECYCLE_HIPS_BLACK_COLOR.webp',
        ),
        const ProductCardRow(
          label: 'ADHESIVE TAPE FURONGHUI (25x1040x8000)',
          company: 'Colorpark Flexible Indonesia',
          info: 'BOPP | Adhesive Tape | JAVA Area',
          imageUrl:
              'https://cdn.tokoplas.com/assets/products/CLPI_all_-_BOPP_PRINTING_LAMI.webp.webp',
        ),
      ],
    );
  }
}
