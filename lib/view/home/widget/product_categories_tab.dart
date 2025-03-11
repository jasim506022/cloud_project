import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import '../../../model/data.dart';
import '../../../model/product_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/cons.dart';
import 'product_card_widget.dart';

class ProductCategoriesTab extends StatelessWidget {
  const ProductCategoriesTab({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        SizedBox(
          height: 320,
          child: TabBarView(
            controller: tabController,
            children: categoryList.map((category) {
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

  SizedBox _buildTabBar() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TabBar(
          labelPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: AppColors.blue),
          controller: tabController,
          tabs: categoryList.map((category) => Text(category)).toList()),
    );
  }

  // Carousel Widget
  Widget _buildCarousel(List<ProductModel> products) {
    return FlutterCarousel(
        options: FlutterCarouselOptions(
          height: 310.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          showIndicator: true,
          viewportFraction: 0.9,
        ),
        items: products.map((product) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: ProductCardWidget(productModel: product),
          );
        }).toList());
  }
}
