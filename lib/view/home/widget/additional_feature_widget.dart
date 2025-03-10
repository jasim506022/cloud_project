import 'package:flutter/material.dart';

import '../../../model/features_model.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';

class AdditionalFeatureWidget extends StatelessWidget {
  const AdditionalFeatureWidget({
    super.key,
    required this.featuresModel,
  });
  final FeaturesModel featuresModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Image(
                image: AssetImage(featuresModel.image!),
                height: 40,
                width: 40,
                fit: BoxFit.contain),
            AppFunction.horizontalSpace(20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(featuresModel.title!,
                    style: AppFontStyle.titleTextStyle()),
                Text(featuresModel.subTitle!,
                    style: AppFontStyle.subTitleTextStyle()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
