import 'package:get/get.dart';
import 'package:slicing/models/bottom_bar.dart';
import 'package:slicing/utilities/asset_constant.dart';

class MainController extends GetxController {
  var indexBottombar = 0.obs;
  var indexPromo = 0.obs;
  List<String> image = [
    'https://cdn.tokoplas.com/assets/blogs/WIAUp73sVJRX1647956376.webp',
    'https://cdn.tokoplas.com/assets/blogs/promo-bulan-september-2022-N2DbvWLJ.webp',
    'https://cdn.tokoplas.com/assets/blogs/dCynOGgZBIiQ1655374499.jpg',
    'https://cdn.tokoplas.com/assets/blogs/WIAUp73sVJRX1647956376.webp',
    'https://cdn.tokoplas.com/assets/blogs/promo-bulan-september-2022-N2DbvWLJ.webp',
    'https://cdn.tokoplas.com/assets/blogs/dCynOGgZBIiQ1655374499.jpg',
    'https://cdn.tokoplas.com/assets/blogs/WIAUp73sVJRX1647956376.webp',
    'https://cdn.tokoplas.com/assets/blogs/promo-bulan-september-2022-N2DbvWLJ.webp',
    'https://cdn.tokoplas.com/assets/blogs/dCynOGgZBIiQ1655374499.jpg',
  ];
  List<BottomBarModel> listBottomBar = [
    BottomBarModel(
      asset: AssetConstant.home,
      label: 'Home',
    ),
    BottomBarModel(
      asset: AssetConstant.quote,
      label: 'Quotation',
    ),
    BottomBarModel(
      asset: AssetConstant.historyOrder,
      label: 'Riwayat Order',
    ),
    BottomBarModel(
      asset: AssetConstant.truck,
      label: 'Truk',
    ),
    BottomBarModel(
      asset: AssetConstant.account,
      label: 'Akun',
    ),
  ];
}
