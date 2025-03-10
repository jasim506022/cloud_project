import 'package:flutter/material.dart';

import '../../../res/app_font_style.dart';
import '../../../res/app_string.dart';
import '../../../widget/app_button.dart';

class HugeSalesWidget extends StatelessWidget {
  const HugeSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hurry up!",
                style: AppFontStyle.mediumLargeTitle(),
              ),
              Text(
                "Huge SALES",
                style: AppFontStyle.largeTitle(),
              ),
              Text("Up to 20% off on all products",
                  textAlign: TextAlign.center,
                  style: AppFontStyle.mediumLargeTitle())
            ],
          ),
          AppButton(
            title: AppString.btnShowNow,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
