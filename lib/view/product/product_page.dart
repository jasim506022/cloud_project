import 'package:flutter/material.dart';

import '../../controller/product_controller.dart';
import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';
import '../../res/app_function.dart';
import '../../res/app_string.dart';
import '../../widget/app_footer_widget.dart';
import 'widget/category_widget.dart';
import 'widget/product_widget.dart';

import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.put(ProductController());
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                _buildSectionHeader(AppString.categories, AppString.seeAll),
                AppFunction.verticalSpace(15),
                const CategoryWidget(),
                _buildSectionHeader(AppString.shop, AppString.itemFound),
                AppFunction.verticalSpace(15),
                _buildProductGrid(controller),
                AppFunction.verticalSpace(15),
                Obx(() => controller.hasMoreProducts
                    ? _buildLoadMoreButton(controller)
                    : const SizedBox.shrink()),
              ],
            ),
          ),
          const AppFooterWidget(),
        ],
      ),
    );
  }

//Section Header
  Widget _buildSectionHeader(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppFontStyle.mediumLargeTitle()),
        Row(
          children: [
            Text(actionText,
                style: AppFontStyle.mediumBoldTextStyle()
                    .copyWith(color: AppColors.blue)),
            const Icon(Icons.arrow_forward_ios, color: AppColors.blue, size: 20)
          ],
        )
      ],
    );
  }

// Product Grid
  Widget _buildProductGrid(ProductController productController) {
    return Obx(() => GridView.builder(
          controller: productController.scrollController,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: productController.displayProductList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .78,
            mainAxisSpacing: 8,
            crossAxisSpacing: 6,
          ),
          itemBuilder: (context, index) {
            var productModel = productController.displayProductList[index];
            return ProductWidget(productModel: productModel);
          },
        ));
  }

//Load More Button
  Center _buildLoadMoreButton(ProductController productController) {
    return Center(
      child: Obx(() => ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                backgroundColor: AppColors.blue),
            onPressed: productController.loadMoreProducts,
            child: productController.isLoading.value
                ? const CircularProgressIndicator(color: AppColors.white)
                : Text(AppString.loadMore,
                    style: AppFontStyle.buttonTextStyle()),
          )),
    );
  }
}
