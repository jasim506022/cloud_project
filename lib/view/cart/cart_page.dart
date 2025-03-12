import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_image.dart';
import 'package:cloud_project/res/app_string.dart';
import 'package:cloud_project/widget/app_button.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        icon: Icons.shopping_cart_outlined,
        title: AppString.yourCartTitle,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Image.asset(AppImage.emptyCart)),
          Text(AppString.yourCartIsEmpty,
              style: AppFontStyle.mediumLargeTitle()),
          AppFunction.verticalSpace(15),
          AppButton(onTap: () {}, title: AppString.btnShowNow)
        ],
      ),
    );
  }
}
