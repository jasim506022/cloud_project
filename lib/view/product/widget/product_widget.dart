import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductImage(),
          _buildProductInfo(),
        ],
      ),
    );
  }

// Product Image
  Widget _buildProductImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          child: Container(
            color: AppColors.lightGrey,
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(productModel.image.first, fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
            child: const Icon(Icons.arrow_drop_down),
          ),
        )
      ],
    );
  }

// Product Information
  Padding _buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(productModel.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppFontStyle.mediumBoldTextStyle()
                  .copyWith(color: AppColors.blue)),
          AppFunction.verticalSpace(5),
          Text("\$${productModel.price.toStringAsFixed(2)}",
              style: AppFontStyle.titleTextStyle()
                  .copyWith(color: AppColors.blue)),
        ],
      ),
    );
  }
}
