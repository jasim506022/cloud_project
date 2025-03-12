import 'package:flutter/material.dart';

import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_constant.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: AppConstant.categoriesList.length,
          itemBuilder: (context, index) => _buildCategoryItem(index)),
    );
  }

// Category Item
  Padding _buildCategoryItem(int index) {
    final String image = AppConstant.categoriesList[index]["image"]!;
    final String name = AppConstant.categoriesList[index]["name"]!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image,
                  width: 40, height: 35, fit: BoxFit.contain)),
          AppFunction.verticalSpace(8),
          Text(name,
              style: AppFontStyle.mediumBoldTextStyle()
                  .copyWith(color: AppColors.blue))
        ],
      ),
    );
  }
}
