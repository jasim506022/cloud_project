import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_image.dart';
import 'package:cloud_project/res/app_string.dart';
import 'package:cloud_project/view/home/home_page.dart';
import 'package:cloud_project/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: const Icon(
          Icons.shopping_cart_outlined,
          size: 30,
          color: AppColors.blue,
        ),
        title: Text(
          "Your Cart",
          style: AppFontStyle.mediumLargeTitle(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.off(
                  HomePage(),
                  transition: Transition.leftToRight,
                );
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Image.asset(AppImage.productTheme),
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
