import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:live_assesment/features/pagination/controller/first_pagination_controller.dart';

class FirstPagenationScreen extends StatelessWidget {
  final FirstPaginationController productsController =
      Get.put(FirstPaginationController());

  FirstPagenationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Obx(
          () => ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: false,
            controller: productsController.scrollController.value,
            itemCount: productsController.products.length +
                (productsController.loading.value ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == productsController.products.length &&
                  productsController.loading.value) {
                return const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: SpinKitChasingDots(
                      color: Colors.purple,
                      size: 40,
                    ),
                  ),
                );
              }
              final product = productsController.products[index];
              return ListTile(
                leading: Text(product.id.toString()),
                title: Text(product.title!),
                subtitle: Text(product.price.toString()),
                trailing: Image(
                  image: NetworkImage(product.thumbnail!),
                  width: 150,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
