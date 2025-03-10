import 'package:flutter/material.dart';

import '../../../model/data.dart';
import 'category_view_widget.dart';

class CateoryViewListWidget extends StatelessWidget {
  const CateoryViewListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppsData.categoriesList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var productModel = AppsData.categoriesList[index];
        return CategoryViewWidget(productModel: productModel);
      },
    );
  }
}
