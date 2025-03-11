import 'package:flutter/material.dart';

import '../../../model/category_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_string.dart';
import '../../../widget/app_outline_button.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 345,
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: Column(
          children: [
            _buildImageSection(),
            AppFunction.verticalSpace(20),
            _buildCategoryDetails()
          ],
        ),
      ),
    );
  }

  Column _buildCategoryDetails() {
    return Column(
      children: [
        Text(categoryModel.title, style: AppFontStyle.mediumLargeTitle()),
        AppFunction.verticalSpace(13),
        Text("${AppString.staringFrom} ${categoryModel.price}",
            style:
                AppFontStyle.mediumTextStyle().copyWith(color: AppColors.grey)),
        AppFunction.verticalSpace(25),
        AppOutlineButton(onTap: () {}, title: AppString.btnViewProduct),
        AppFunction.verticalSpace(15),
      ],
    );
  }

  SizedBox _buildImageSection() {
    return SizedBox(
      height: 170,
      child: Row(
        children: [
          Expanded(
              flex: 6,
              child: Image.asset(categoryModel.image[0],
                  height: 170, fit: BoxFit.fill)),
          AppFunction.horizontalSpace(10),
          Expanded(
            flex: 3,
            child: Column(
                children: List.generate(
              2,
              (index) {
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: index == 0 ? 8 : 0),
                    child: Image.asset(categoryModel.image[index + 1],
                        fit: BoxFit.fill, width: double.infinity),
                  ),
                );
              },
            )),
          )
        ],
      ),
    );
  }
}
