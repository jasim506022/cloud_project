import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/apps_data.dart';
import '../model/product_model.dart';

class ProductController extends GetxController {
  RxList<ProductModel> displayProductList = <ProductModel>[].obs;
  RxInt currentPage = 1.obs;
  final int pageSize = 6;
  RxBool isLoading = false.obs;

  final ScrollController scrollController = ScrollController();

  bool get hasMoreProducts =>
      displayProductList.length < AppsData.productList.length;

  @override
  void onInit() {
    super.onInit();
    loadMoreProducts();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        loadMoreProducts();
      }
    });
  }

// Loading Product
  void loadMoreProducts() async {
    if (isLoading.value || !hasMoreProducts) return;

    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));

    int nextIndex = displayProductList.length;
    List<ProductModel> newProducts =
        AppsData.productList.skip(nextIndex).take(pageSize).toList();

    displayProductList.addAll(newProducts);
    currentPage.value++;
    isLoading.value = false;
  }
}
