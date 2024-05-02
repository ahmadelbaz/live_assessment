import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/networking/dio_service.dart';
import 'package:live_assesment/features/pagination/data/cashing_products.dart';
import 'package:live_assesment/features/pagination/data/product_model.dart';

class FirstPaginationController extends GetxController {
  RxList<Product> products = <Product>[].obs;
  RxBool loading = false.obs;
  Rx<ScrollController> scrollController = ScrollController().obs;
  RxInt totalProducts = 0.obs;
  RxInt skip = 0.obs;
  // Cashing instance
  final CashingProducts cashingProducts = CashingProducts();

  @override
  void onInit() async {
    super.onInit();
    // Read cashed products if exist else fetch products from api and cache them in local
    await cashingProducts.readProducts().then((value) {
      products.value = value;
      skip.value = products.length;
    });

    // We know that totalProducts is 100, so if it's less than 100 we can fetch more products
    if (products.length > 99) return;

    _getProducts();
    // Listen to scroll controller and fetch more products if necessary
    scrollController.value.addListener(
      () async {
        if (scrollController.value.position.pixels ==
                scrollController.value.position.maxScrollExtent &&
            products.length < totalProducts.value &&
            !loading.value) {
          await _getProducts();
        }
      },
    );
  }

  Future<void> _getProducts() async {
    loading.value = true;
    DioService productsService = Get.find();
    var responseData = await productsService
        .get('limit=10&skip=$skip&select=title,price,thumbnail');
    List data = responseData['products'];
    List<Product> productsList =
        data.map((product) => Product.fromJson(product)).toList();
    print('First coming id : ${productsList[0].id}');
    products.addAll(RxList<Product>(productsList));
    await cashingProducts.writeProducts(products);
    totalProducts.value = responseData['total'];
    print('products length : ${products.length}');
    print('totalProducts : $totalProducts');
    skip += 10;
    loading.value = false;
  }
}
