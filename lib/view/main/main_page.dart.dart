import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

import '../../controller/main_controller.dart';
import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';
import '../../res/app_function.dart';
import '../../res/app_image.dart';
import '../../res/app_constant.dart';
import '../../res/routes/route_name.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75), child: _buildAppBar()),
      drawer: const Drawer(),
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => _buildBottomNavigationBar(controller)),
    );
  }

  /// App Bar Widget
  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset(AppImage.appLogo, height: 80),
      actions: [
        badges.Badge(
            onTap: () => Get.toNamed(RouteName.cartPage),
            badgeStyle: const badges.BadgeStyle(badgeColor: AppColors.blue),
            badgeContent:
                const Text('3', style: TextStyle(color: AppColors.white)),
            child: const Icon(Icons.shopping_cart_outlined)),
        AppFunction.horizontalSpace(20),
      ],
    );
  }

  /// Bottom Navigation Bar
  SizedBox _buildBottomNavigationBar(MainController controller) {
    return SizedBox(
      height: controller.isExpanded.value ? 150 : 80,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: controller.isExpanded.value ? 75 : 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              currentIndex: controller.selectedIndex.value,
              selectedItemColor: AppColors.blue,
              unselectedItemColor: AppColors.grey,
              selectedLabelStyle: AppFontStyle.bottomSelectTextStyle(),
              onTap: controller.onItemTapped,
              items: [
                _buildNavItem(AppConstant.navItems[0]["icon"],
                    AppConstant.navItems[0]["label"]),
                _buildNavItem(AppConstant.navItems[1]["icon"],
                    AppConstant.navItems[1]["label"]),
                _buildMiddleNavItem(),
                _buildNavItem(AppConstant.navItems[2]["icon"],
                    AppConstant.navItems[2]["label"]),
                _buildNavItem(AppConstant.navItems[3]["icon"],
                    AppConstant.navItems[3]["label"]),
              ],
            ),
          ),
          _buildExpandedMenu(controller),
        ],
      ),
    );
  }

  /// Navigation Item
  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  /// Middle Button (Menu)
  BottomNavigationBarItem _buildMiddleNavItem() {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black87,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.grid_view, color: AppColors.white),
      ),
      label: "More",
    );
  }

  /// Expanded Menu for Additional Items
  AnimatedPositioned _buildExpandedMenu(MainController controller) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      bottom: controller.isExpanded.value ? 0 : -70,
      left: 0,
      right: 0,
      child: Container(
          height: 62,
          color: AppColors.white,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: AppConstant.additionalNavItems
                  .map((item) => _buildMenuItem(item["icon"], item["label"]))
                  .toList())),
    );
  }

  /// Expanded Menu Item
  Widget _buildMenuItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black54),
        AppFunction.verticalSpace(5),
        Text(title,
            style:
                AppFontStyle.bottomTextStyle().copyWith(color: Colors.black54)),
      ],
    );
  }
}
