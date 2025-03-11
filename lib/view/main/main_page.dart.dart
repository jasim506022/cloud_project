import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/route_name.dart';
import 'package:cloud_project/view/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

import '../../res/app_function.dart';
import '../../res/app_image.dart';
import '../home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  bool _isExpanded = false;

  final List<Widget> _pages = [
    const HomePage(),
    const SizedBox.shrink(),
    const SizedBox.shrink(),
    const ProductPage(),
    const SizedBox.shrink(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      setState(() => _isExpanded = !_isExpanded);
      return;
    } else if (index == 1) {
      Get.toNamed(RouteName.searchPage);
    } else if (index == 4) {
      Get.toNamed(RouteName.profilePage);
    } else if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
        _isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75), child: _buildAppBar()),
      drawer: const Drawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: _isExpanded ? 150 : 80,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: _isExpanded ? 75 : 0,
              left: 0,
              right: 0,
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.white,
                currentIndex: _selectedIndex,
                selectedItemColor: AppColors.blue,
                unselectedItemColor: AppColors.grey,
                selectedLabelStyle: AppFontStyle.bottomSelectTextStyle(),
                onTap: _onItemTapped,
                items: [
                  _navItem(Icons.home, "Home"),
                  _navItem(Icons.search, "Search"),
                  BottomNavigationBarItem(
                    icon: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black87, shape: BoxShape.circle),
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        )),
                    label: "More",
                  ),
                  _navItem(Icons.favorite, "WishList"),
                  _navItem(Icons.person, "Account"),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              bottom: _isExpanded ? 0 : -70,
              left: 0,
              right: 0,
              child: Container(
                height: 62,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _menuItem(Icons.local_offer_outlined, "Offers"),
                    _menuItem(Icons.branding_watermark_outlined, "Brands"),
                    _menuItem(Icons.category_outlined, "Category"),
                    _menuItem(Icons.shopping_cart_outlined, "Orders"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _navItem(
    IconData icon,
    String label,
  ) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset(AppImage.appLogo, height: 80),
      actions: [
        badges.Badge(
          onTap: () => Get.toNamed(RouteName.cartPage),
          badgeStyle: const badges.BadgeStyle(badgeColor: AppColors.blue),
          badgeContent:
              const Text('3', style: TextStyle(color: AppColors.white)),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        AppFunction.horizontalSpace(20),
      ],
    );
  }

  Widget _menuItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black54),
        const SizedBox(height: 5),
        Text(title,
            style:
                AppFontStyle.bottomTextStyle().copyWith(color: Colors.black54)),
      ],
    );
  }
}
