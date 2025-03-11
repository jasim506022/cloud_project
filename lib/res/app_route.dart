import 'package:cloud_project/res/route_name.dart';
import 'package:cloud_project/view/cart/cart_page.dart';
import 'package:cloud_project/view/main/main_page.dart.dart';
import 'package:cloud_project/view/search/search_page.dart';
import 'package:get/get.dart';

class AppRoute {
  static appRoute() => [
        GetPage(
          name: RouteName.mainPage,
          page: () => const MainPage(),
        ),
        GetPage(
            name: RouteName.cartPage,
            page: () => const CartPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: RouteName.searchPage,
            page: () => const SearchPage(),
            transition: Transition.rightToLeft),
      ];
}
