import 'package:flutter/material.dart';

import '../../../model/feature_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';

class FeatureItemWidget extends StatelessWidget {
  const FeatureItemWidget(
      {super.key, required this.featureModel, required this.isAdditionFeature});
  final FeatureModel featureModel;

  final bool isAdditionFeature;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 15, horizontal: isAdditionFeature ? 0 : 15),
      child: SizedBox(
        height: isAdditionFeature ? 45 : 60,
        child: Row(
          children: [
            _buildFeatureImage(),
            AppFunction.horizontalSpace(25),
            _buildFeatureText()
          ],
        ),
      ),
    );
  }

//image widget
  Widget _buildFeatureImage() {
    return Image.asset(
      featureModel.image,
      height: isAdditionFeature ? 40 : 50,
      width: isAdditionFeature ? 40 : 70,
      color: isAdditionFeature ? null : AppColors.orange,
    );
  }

// text widget
  Column _buildFeatureText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(featureModel.title, style: AppFontStyle.titleTextStyle()),
        Text(featureModel.subTitle, style: AppFontStyle.subTitleTextStyle())
      ],
    );
  }
}
