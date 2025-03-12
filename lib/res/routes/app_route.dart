import 'package:cloud_project/res/routes/route_name.dart';
import 'package:cloud_project/view/cart/cart_page.dart';
import 'package:cloud_project/view/main/main_page.dart.dart';
import 'package:cloud_project/view/profile/profile_page.dart';
import 'package:cloud_project/view/search/search_page.dart';
import 'package:get/get.dart';

class AppRoute {
  //pages and transitions.
  static List<GetPage> appRoute() => [
        GetPage(name: RouteName.mainPage, page: () => const MainPage()),
        GetPage(
            name: RouteName.cartPage,
            page: () => const CartPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: RouteName.searchPage,
            page: () => const SearchPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: RouteName.profilePage,
            page: () => const ProfilePage(),
            transition: Transition.rightToLeft),
      ];
}
