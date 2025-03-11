import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_image.dart';
import 'package:cloud_project/res/app_string.dart';
import 'package:cloud_project/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CoustomAppBar(
        icon: Icons.shopping_cart_outlined,
        title: AppString.yourCartTitle,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Image.asset(AppImage.emptyCart),
          ),
          Text(
            "Your cart is Empty",
            style: AppFontStyle.mediumLargeTitle(),
          ),
          AppFunction.verticalSpace(15),
          AppButton(onTap: () {}, title: AppString.btnShowNow)
        ],
      ),
    );
  }
}

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoustomAppBar({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(icon, size: 30, color: AppColors.blue),
      title: Text(title),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.close))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
