import 'package:flutter/material.dart';
import 'package:slicing/widget/back_icon.dart';
import 'package:slicing/widget/container_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search',
      child: Scaffold(
        body: Column(
          children: [
            ContainerAppBar(
              child: Row(
                children: const [
                  BackIcon(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
