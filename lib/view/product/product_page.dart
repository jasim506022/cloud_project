import 'package:badges/badges.dart' as badges;
import 'package:cloud_project/res/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/app_colors.dart';
import '../../res/app_function.dart';
import '../../res/app_image.dart';
import '../cart/cart_view.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
      body: Column(
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
                            Icon(Icons.image_not_supported, size: 50),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
          )
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
