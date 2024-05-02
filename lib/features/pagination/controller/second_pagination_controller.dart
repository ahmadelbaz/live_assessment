import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/networking/dio_service.dart';
import 'package:live_assesment/features/pagination/data/product_model.dart';

class SecondPaginationController extends GetxController {
  RxList<Product> products = <Product>[].obs;
  RxBool loading = false.obs;
  Rx<ScrollController> scrollController = ScrollController().obs;
  RxInt totalProducts = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print('We call product controller!');
    _getProducts();
    scrollController.value.addListener(() {
      if (scrollController.value.position.pixels ==
              scrollController.value.position.maxScrollExtent &&
          products[products.length - 1].id! < totalProducts.value) {
        _getProducts(skip: products[products.length - 1].id);
      } else if (scrollController.value.position.pixels ==
          scrollController.value.position.minScrollExtent) {
        _getProducts(skip: (products.first.id)! - 20);
      }
    });
  }

  Future<void> _getProducts({int? skip = 0}) async {
    loading.value = true;
    DioService productsService = Get.find();
    // skip = products.isEmpty ? 0 : products[products.length - 1].id;
    print('skip : $skip');
    var responseData = await productsService
        .get('limit=20&skip=$skip&select=title,price,thumbnail');
    // print("response : $responseData");
    List data = responseData['products'];
    List<Product> productsList =
        data.map((product) => Product.fromJson(product)).toList();
    // products.addAll(RxList<Product>(productsList));
    products = RxList<Product>(productsList);
    totalProducts.value = responseData['total'];
    print('products length : ${products.length}');
    print('totalProducts : $totalProducts');
    loading.value = false;
  }
}
