import 'package:badges/badges.dart' as badges;
import 'package:cloud_project/model/data.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product_model.dart';
import '../../res/app_colors.dart';
import '../../res/app_function.dart';
import '../../res/app_image.dart';
import '../cart/cart_view.dart';
import '../../widget/app_footer_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ProductModel> displayedProducts = [];
  int currentPage = 1;
  final int pageSize = 6;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadMoreProducts(); // Load initial 10 products
  }

  // Function to load next 10 products
  void _loadMoreProducts() async {
    if (isLoading || displayedProducts.length >= AppsData.productList.length)
      return;

    setState(() => isLoading = true);

    await Future.delayed(const Duration(seconds: 1)); // Simulate API delay

    int nextIndex = (currentPage - 1) * pageSize;
    List<ProductModel> newProducts =
        AppsData.productList.skip(nextIndex).take(pageSize).toList();

    setState(() {
      displayedProducts.addAll(newProducts);
      currentPage++;
      isLoading = false;
    });
  }

  final List<Map<String, String>> items = [
    {"name": "Desks", "image": "assets/categories/Desks.png"},
    {"name": "Furnitures", "image": "assets/categories/Furnitures.png"},
    {"name": "Boxes", "image": "assets/categories/Boxes.png"},
    {"name": "Drawers", "image": "assets/categories/Drawers.png"},
    {"name": "Cabinets", "image": "assets/categories/Cabinets.png"},
    {"name": "Bins", "image": "assets/categories/Bins.png"},
    {"name": "Lamps", "image": "assets/categories/Lamps.png"},
    {"name": "Services", "image": "assets/categories/Services.png"},
    {"name": "Multimedia", "image": "assets/categories/Multimedia.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Categories"), Text("See All")],
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        items[index]["image"]!,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.image_not_supported, size: 50),
                      ),
                      SizedBox(height: 10),
                      Text(
                        items[index]["name"]!,
                        style: AppFontStyle.mediumBoldTextStyle()
                            .copyWith(color: AppColors.blue),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Products"), Text("See All")],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: displayedProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .75,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var productModel = displayedProducts[index];
              return Card(
                color: AppColors.white,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.grey.shade100),
                      child: Image.asset(
                        productModel.image[0],
                        height: 90,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(productModel.title,
                        style: AppFontStyle.titleTextStyle()),
                    Text(productModel.price.toString(),
                        style: AppFontStyle.titleTextStyle()),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 20),

          // "Load More" Button
          if (displayedProducts.length < AppsData.productList.length)
            Center(
              child: ElevatedButton(
                onPressed: _loadMoreProducts,
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text("Load More"),
              ),
            ),

          AppFooterWidget(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset(AppImage.appLogo, height: 80),
      actions: [
        badges.Badge(
          onTap: () {
            Get.to(() => CartView(), transition: Transition.rightToLeft);
          },
          badgeStyle: badges.BadgeStyle(badgeColor: AppColors.blue),
          badgeContent: Text('3', style: TextStyle(color: AppColors.white)),
          child: Icon(Icons.shopping_cart_outlined),
        ),
        AppFunction.horizontalSpace(20),
      ],
    );
  }
}
