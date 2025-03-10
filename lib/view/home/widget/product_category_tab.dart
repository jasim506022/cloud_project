import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import '../../../model/data.dart';
import '../../../model/product_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/cons.dart';
import 'product_card_widget.dart';

class ProductCategoryTab extends StatelessWidget {
  const ProductCategoryTab({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TabBar(
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.blue,
              ),
              controller: tabController,
              tabs: categories.map((category) => Text(category)).toList()),
        ),
        SizedBox(
          height: 320,
          child: TabBarView(
            controller: tabController,
            children: categories.map((category) {
              List<ProductModel> filteredProducts = AppsData.productList
                  .where((product) => product.category == category)
                  .toList();

              return _buildCarousel(filteredProducts);
            }).toList(),
          ),
        ),
      ],
    );
  }

  // Carousel Widget
  Widget _buildCarousel(List<ProductModel> products) {
    return FlutterCarousel(
      options: FlutterCarouselOptions(
        height: 310.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        showIndicator: true,
        viewportFraction: 0.9,
        slideIndicator: CircularSlideIndicator(),
      ),
      items: products.map((product) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: ProductCardWidget(productModel: product),
        );
      }).toList(),
    );
  }
}
