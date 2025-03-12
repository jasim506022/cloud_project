import 'package:flutter/material.dart';

import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_image.dart';
import '../../../res/app_string.dart';
import '../../../res/app_constant.dart';
import '../../../widget/app_button.dart';

class ProductPromotionOverviewWidget extends StatelessWidget {
  const ProductPromotionOverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProductImage(),
        AppFunction.verticalSpace(30),
        _buildProductDetails(),
        AppFunction.verticalSpace(20),
        AppButton(title: AppString.btnShowNow, onTap: () {}),
      ],
    );
  }

// product details section (title, description, etc.)
  Column _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppString.onTheEar, style: AppFontStyle.titleTextStyle()),
        Text(AppString.bluetoothHeadset, style: AppFontStyle.largeTitle()),
        AppFunction.verticalSpace(15),
        Text(AppString.productDescrition,
            style: AppFontStyle.mediumTextStyle()),
        AppFunction.verticalSpace(15),
        _buildProductFeatures()
      ],
    );
  }

// product image section with a badge on top
  Stack _buildProductImage() {
    return Stack(
      children: [
        Image.asset(AppImage.newProduct),
        Positioned(
          top: 50,
          width: 80,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: AppColors.green, shape: BoxShape.circle),
            child: Center(
                child: Text(AppString.btnNew,
                    style: AppFontStyle.buttonTextStyle())),
          ),
        ),
      ],
    );
  }

  // Builds the list of product features
  Widget _buildProductFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: AppConstant.features
          .map((feature) => Text(
                "✔  $feature",
                style: AppFontStyle.mediumBoldTextStyle(),
              ))
          .toList(),
    );
  }
}
