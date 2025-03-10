import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';

import 'package:cloud_project/res/app_function.dart';
import 'package:cloud_project/res/app_image.dart';
import 'package:cloud_project/view/cart/cart_view.dart';
import 'package:cloud_project/view/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/route_manager.dart';

import '../../res/app_string.dart';

import '../../widget/app_button.dart';
import 'widget/additional_feature_list_widget.dart';
import 'widget/bottom_details.dart';
import 'widget/category_view_list.dart';
import 'widget/huge_sales_widget.dart';
import 'widget/new_product_overview_widget.dart';

import 'widget/product_category_tab.dart';
import 'widget/product_details_widget.dart';
import 'widget/team_create_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const ProductDetailWidget(),
                  AppFunction.verticalSpace(15),
                  AppButton(
                    title: AppString.btnShowNow,
                    onTap: () {},
                  ),
                  AppFunction.verticalSpace(20),
                  const AdditionalFeatureListWidget(),
                  AppFunction.verticalSpace(30),
                  const CateoryViewListWidget(),
                  AppFunction.verticalSpace(30),
                  const NewProductOverviewWidget(),
                  AppFunction.verticalSpace(50),
                  const TeamCreateWidget(),
                  AppFunction.verticalSpace(50),
                  ProductCategoryTab(tabController: tabController),
                  AppFunction.verticalSpace(20),
                  const HugeSalesWidget(),
                  AppFunction.verticalSpace(20),
                ],
              ),
            ),
            const BottomDetails()
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Image.asset(AppImage.appLogo, height: 80),
      actions: [
        badges.Badge(
          onTap: () {
            Get.to(() => ProductPage(), transition: Transition.rightToLeft);
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
