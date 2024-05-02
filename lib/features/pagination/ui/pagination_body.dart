import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/theming/color_manager.dart';
import 'package:live_assesment/core/theming/value_manager.dart';

/// Same Body UI for both first and second pagination with different controllers
class PaginationBody extends StatelessWidget {
  final dynamic productsController;
  const PaginationBody({required this.productsController, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                padding: EdgeInsets.all(AppSizes.s10),
                child: Center(
                  child: SpinKitChasingDots(
                    color: ColorManager.primary,
                    size: AppSizes.s40,
                  ),
                ),
              );
            }
            final product = productsController.products[index];
            return Card(
              elevation: AppSizes.s8,
              margin: const EdgeInsets.symmetric(
                  horizontal: AppSizes.s10, vertical: AppSizes.s6),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.s8),
                child: Container(
                  padding: const EdgeInsets.all(AppSizes.s10),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.grey),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSizes.s20),
                    ),
                  ),
                  child: ListTile(
                    leading: Text(product.id.toString()),
                    title: Text(product.title!),
                    subtitle: Text(product.price.toString()),
                    trailing: Image(
                      image: NetworkImage(product.thumbnail!),
                      width: AppSizes.s100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
