import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/routes/route_name.dart';
import '../view/home/home_page.dart';
import '../view/product/product_page.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;
  var isExpanded = false.obs;

//bottom navigation items
  final List<Widget> pages = [
    const HomePage(),
    const SizedBox.shrink(),
    const SizedBox.shrink(),
    const ProductPage(),
    const SizedBox.shrink(),
  ];

  void onItemTapped(int index) {
    if (index == 2) {
      isExpanded.value = !isExpanded.value;
      return;
    } else if (index == 1) {
      Get.toNamed(RouteName.searchPage);
    } else if (index == 4) {
      Get.toNamed(RouteName.profilePage);
    } else if (selectedIndex.value != index) {
      selectedIndex.value = index;
      isExpanded.value = false;
    }
  }
}
