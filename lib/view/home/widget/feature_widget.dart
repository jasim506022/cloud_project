import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/app_function.dart';
import 'package:flutter/material.dart';

import '../../../model/features_model.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key, required this.featuresModel});
  final FeaturesModel featuresModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Image(
                image: AssetImage(featuresModel.image!),
                height: 50,
                width: 70,
                color: const Color.fromARGB(255, 202, 91, 0)),
            AppFunction.horizontalSpace(25),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(featuresModel.title!,
                    style: AppFontStyle.titleTextStyle()),
                Text(featuresModel.subTitle!,
                    style: AppFontStyle.subTitleTextStyle())
              ],
            )
          ],
        ),
      ),
    );
  }
}
