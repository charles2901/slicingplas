import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/routes/route_name.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';
import 'package:slicing/widget/container_appbar.dart';
import 'package:collection/collection.dart';

class HomeAppbar extends StatelessWidget {
  final List<Widget>? actions;

  const HomeAppbar({this.actions});

  @override
  Widget build(BuildContext context) {
    return ContainerAppBar(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Get.toNamed(RouteName.search),
              child: Hero(
                tag: 'search',
                child: Container(
                  padding: const EdgeInsets.all(6),
                  margin: EdgeInsets.only(right: actions == null ? 0 : 12),
                  decoration: BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 15,
                        color: kColorActive,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Cari nama produk, kategori, atau kelas',
                        style: TStyle.body.copyWith(fontSize: 10.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (actions != null)
            ...actions!
                .mapIndexed(
                  (index, child) => Padding(
                    padding: EdgeInsets.only(
                        right: index != actions!.length - 1 ? 8 : 0),
                    child: child,
                  ),
                )
                .toList()
        ],
      ),
    );
  }
}
