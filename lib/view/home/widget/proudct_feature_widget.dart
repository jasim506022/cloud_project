import 'package:flutter/material.dart';

import '../../../model/data.dart';
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
        _productInfo(),
        _featureList(),
        AppFunction.verticalSpace(15),
        AppButton(
          title: AppString.btnShowNow,
          onTap: () {},
        ),
        AppFunction.verticalSpace(20),
        _additionalFeatureList()
      ],
    );
  }

  ListView _additionalFeatureList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppsData.additionalFeaturesList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var featureModel = AppsData.additionalFeaturesList[index];
        return FeatureItemWidget(
          featureModel: featureModel,
          isAdditionFeature: true,
        );
      },
    );
  }

  Padding _productInfo() {
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

  ListView _featureList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppsData.featuresList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var featureModel = AppsData.featuresList[index];
        return FeatureItemWidget(
          featureModel: featureModel,
        );
      },
    );
  }
}
