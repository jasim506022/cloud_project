import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/route_name.dart';
import 'package:cloud_project/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

import '../../res/app_function.dart';
import '../../res/app_image.dart';
import '../product/product_page.dart';
import '../search/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: const Drawer(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _currentIndex == 0 ? const HomePage() : const ProductPage(),

          Positioned(
            bottom: 0, // Appears at the bottom of the screen
            left: 0,
            right: 0,
            child: Visibility(
              visible: _isExpanded,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _extraItem(Icons.settings, "Settings"),
                    _extraItem(Icons.notifications, "Alerts"),
                    _extraItem(Icons.help, "Help"),
                  ],
                ),
              ),
            ),
          ),

          // Main Bottom Navigation Bar
          Positioned(
            bottom: _isExpanded ? 60 : 0,
            left: 0,
            right: 0,
            child: ConvexAppBar(
              curveSize: 0,
              height: 80,
              backgroundColor: Colors.white,
              style: TabStyle.fixed,
              activeColor: Colors.black,
              color: Colors.grey,
              cornerRadius: 0,
              items: [
                const TabItem(icon: Icons.home, title: "Home"),
                const TabItem(icon: Icons.search, title: "Search"),
                TabItem(
                    icon: Container(
                  decoration: BoxDecoration(
                      color: AppColors.black.withOpacity(.7),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.menu_book_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                )), // Middle Button// Middle Button
                const TabItem(icon: Icons.favorite, title: "Favorites"),
                const TabItem(icon: Icons.person, title: "Profile"),
              ],
              initialActiveIndex: _currentIndex,
              onTap: (index) {
                if (index == 1) {
                  // Navigate to Search page
                  Get.toNamed(RouteName.searchPage);
                }

                if (index == 2) {
                  setState(() => _isExpanded = !_isExpanded);
                } else {
                  setState(() {
                    _currentIndex = index;
                    _isExpanded = false;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _extraItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 28, color: Colors.blue),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset(AppImage.appLogo, height: 80),
      actions: [
        badges.Badge(
          onTap: () {
            Get.toNamed(RouteName.cartPage);
          },
          badgeStyle: badges.BadgeStyle(badgeColor: AppColors.blue),
          badgeContent: Text('3', style: TextStyle(color: AppColors.white)),
          child: Icon(Icons.shopping_cart_outlined),
        ),
        AppFunction.horizontalSpace(20),
      ],
    );
  }
}
