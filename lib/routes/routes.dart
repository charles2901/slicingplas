import 'package:get/route_manager.dart';
import 'package:slicing/pages/home/home_page.dart';
import 'package:slicing/pages/search/search_page.dart';
import 'package:slicing/routes/route_name.dart';

final routes = [
  GetPage(
    name: RouteName.home,
    page: () => HomePage(),
  ),
  GetPage(
    name: RouteName.search,
    page: () => SearchPage(),
  ),
];
