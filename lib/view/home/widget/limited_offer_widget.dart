import 'package:cloud_project/res/app_function.dart';
import 'package:flutter/material.dart';

import '../../../res/app_font_style.dart';
import '../../../res/app_string.dart';
import '../../../widget/app_button.dart';

class LimitedOfferWidget extends StatelessWidget {
  const LimitedOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSalesText(),
          AppButton(
            title: AppString.btnShowNow,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Column _buildSalesText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(AppString.hurryUp, style: AppFontStyle.mediumLargeTitle()),
        AppFunction.verticalSpace(10),
        Text(AppString.hugeSales, style: AppFontStyle.largeTitle()),
        AppFunction.verticalSpace(10),
        Text(AppString.discountProduct,
            textAlign: TextAlign.center, style: AppFontStyle.mediumLargeTitle())
      ],
    );
  }
}
