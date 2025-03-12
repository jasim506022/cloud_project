import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productModel.image.first,
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          _buildProductDetails()
        ],
      ),
    );
  }

//  details (category, title, price) for the product
  Padding _buildProductDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppFunction.verticalSpace(10),
          Text(productModel.category,
              style: AppFontStyle.mediumBoldTextStyle()
                  .copyWith(color: AppColors.grey)),
          AppFunction.verticalSpace(5),
          Text(productModel.title, style: AppFontStyle.titleTextStyle()),
          AppFunction.verticalSpace(5),
          Text("\$ ${productModel.price}",
              style: AppFontStyle.titleTextStyle()
                  .copyWith(color: AppColors.blue)),
        ],
      ),
    );
  }
}
