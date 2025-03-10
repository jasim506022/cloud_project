import 'package:flutter/material.dart';

import '../../../model/data.dart';
import 'additional_feature_widget.dart';

class AdditionalFeatureListWidget extends StatelessWidget {
  const AdditionalFeatureListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppsData.additionalFeaturesList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var featureModel = AppsData.additionalFeaturesList[index];
        return AdditionalFeatureWidget(featuresModel: featureModel);
      },
    );
  }
}
