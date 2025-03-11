import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/data.dart';
import '../model/product_model.dart';

class ProductController extends GetxController {
  RxList<ProductModel> displayedProducts = <ProductModel>[].obs;
  RxInt currentPage = 1.obs;
  final int pageSize = 6;
  RxBool isLoading = false.obs;

  final ScrollController scrollController = ScrollController();

  bool get hasMoreProducts =>
      displayedProducts.length < AppsData.productList.length;

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

  void loadMoreProducts() async {
    if (isLoading.value || !hasMoreProducts) return;

    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));

    int nextIndex = displayedProducts.length;
    List<ProductModel> newProducts =
        AppsData.productList.skip(nextIndex).take(pageSize).toList();

    displayedProducts.addAll(newProducts);
    currentPage.value++;
    isLoading.value = false;
  }
}
