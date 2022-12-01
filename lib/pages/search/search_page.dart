import 'package:flutter/material.dart';
import 'package:slicing/pages/search/widget/button_outline.dart';
import 'package:slicing/pages/search/widget/favorite_search.dart';
import 'package:slicing/utilities/colors.dart';
import 'package:slicing/utilities/textstyle.dart';
import 'package:slicing/widget/back_icon.dart';
import 'package:slicing/widget/container_appbar.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  FocusNode node = FocusNode();

  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 500), () => node.requestFocus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search',
      child: Scaffold(
        backgroundColor: kColorWhite,
        body: Column(
          children: [
            ContainerAppBar(
              child: Row(
                children: [
                  const BackIcon(),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      focusNode: node,
                      cursorColor: kColorBlack,
                      cursorWidth: 0.5,
                      textAlignVertical: TextAlignVertical.center,
                      style: TStyle.body.copyWith(
                        fontSize: 10.5,
                        color: kColorBlack,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kColorWhite,
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(
                            color: kColorWhite,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(
                            color: kColorWhite,
                            width: 1.0,
                          ),
                        ),
                        hintText: 'Cari nama produk, kategori, atau kelas',
                        hintStyle: TStyle.body.copyWith(fontSize: 10.5),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 15,
                          color: kColorActive,
                        ),
                        prefixIconConstraints:
                            const BoxConstraints(minHeight: 32, minWidth: 32),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      FavoriteSearch(),
                      const SizedBox(height: 24),
                      ButtonOutline(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
