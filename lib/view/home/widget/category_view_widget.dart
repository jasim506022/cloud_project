import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_string.dart';
import 'package:flutter/material.dart';

import '../../../model/catory_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../widget/outline_app_button.dart';

class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({
    super.key,
    required this.productModel,
  });
  final CategoryModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 340,
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: Column(
          children: [
            _buildImageSection(),
            AppFunction.verticalSpace(20),
            _categoryDetails()
          ],
        ),
      ),
    );
  }

  Column _categoryDetails() {
    return Column(
      children: [
        Text(productModel.title!, style: AppFontStyle.mediumLargeTitle()),
        AppFunction.verticalSpace(13),
        Text("${AppString.staringFrom} ${productModel.price!}",
            style:
                AppFontStyle.mediumTextStyle().copyWith(color: AppColors.grey)),
        AppFunction.verticalSpace(25),
        OutlineAppButton(onTap: () {}, title: AppString.btnViewProduct),
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
              child: Image.asset(productModel.image![0],
                  height: 170, fit: BoxFit.fill)),
          AppFunction.horizontalSpace(10),
          AppFunction.horizontalSpace(10),
          Expanded(
            flex: 3,
            child: Column(
                children: List.generate(
              2,
              (index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Image.asset(productModel.image![index + 1],
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
