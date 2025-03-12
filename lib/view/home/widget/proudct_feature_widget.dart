import 'package:flutter/material.dart';

import '../../../data/apps_data.dart';
import '../../../model/feature_model.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_image.dart';
import '../../../res/app_string.dart';
import '../../../widget/app_button.dart';
import 'feature_item_widget.dart';

class ProductFeatureWidget extends StatelessWidget {
  const ProductFeatureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProductInfo(),
        _buildFeatureList(AppsData.mainFeaturesList),
        AppFunction.verticalSpace(15),
        AppButton(title: AppString.btnShowNow, onTap: () {}),
        AppFunction.verticalSpace(20),
        _buildFeatureList(AppsData.additionalFeaturesList,
            isAdditionFeature: true),
      ],
    );
  }

// product info section
  Padding _buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(image: AssetImage(AppImage.productTheme)),
          AppFunction.verticalSpace(20),
          Text(AppString.productTitle, style: AppFontStyle.largeTitle()),
          AppFunction.verticalSpace(15),
          Text(AppString.productOverview,
              style: AppFontStyle.mediumTextStyle()),
        ],
      ),
    );
  }

//ListView.builder logic
  ListView _buildFeatureList(List<FeatureModel> featureData,
      {bool isAdditionFeature = false}) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: featureData.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => FeatureItemWidget(
          featureModel: featureData[index],
          isAdditionFeature: isAdditionFeature),
    );
  }
}
