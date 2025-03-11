import 'package:cloud_project/res/app_function.dart';

import 'package:flutter/material.dart';

import '../../model/data.dart';
import '../../widget/app_footer_widget.dart';
import 'widget/category_item_widget.dart';
import 'widget/limited_offer_widget.dart';
import 'widget/prodcut_promotion_overview_widget.dart';

import 'widget/product_categories_tab.dart';
import 'widget/proudct_feature_widget.dart';
import 'widget/create_team_widget.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const ProductFeatureWidget(),
                  AppFunction.verticalSpace(30),
                  _cateryList(),
                  AppFunction.verticalSpace(30),
                  const ProductPromotionOverviewWidget(),
                  AppFunction.verticalSpace(50),
                  const CreativeTeamWidget(),
                  AppFunction.verticalSpace(50),
                  ProductCategoriesTab(tabController: tabController),
                  AppFunction.verticalSpace(20),
                  const LimitedOfferWidget(),
                  AppFunction.verticalSpace(20),
                ],
              ),
            ),
            const AppFooterWidget()
          ],
        ),
      ),
    );
  }

  ListView _cateryList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppsData.categoriesList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var categoryModel = AppsData.categoriesList[index];
        return CategoryItemWidget(categoryModel: categoryModel);
      },
    );
  }
}
