import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_image.dart';
import 'package:cloud_project/res/app_string.dart';
import 'package:flutter/material.dart';

import '../../../model/data.dart';
import '../../../res/app_font_style.dart';
import 'feature_widget.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _productInfor(),
        _featureList(),
      ],
    );
  }

  Padding _productInfor() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(image: AssetImage(AppImage.productTheme)),
          AppFunction.verticalSpace(20),
          Text(AppString.productTitle, style: AppFontStyle.largeTitle()),
          AppFunction.verticalSpace(15),
          Text(AppString.productOverview, style: AppFontStyle.mediumTextStyle())
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
        return FeatureWidget(featuresModel: featureModel);
      },
    );
  }
}
