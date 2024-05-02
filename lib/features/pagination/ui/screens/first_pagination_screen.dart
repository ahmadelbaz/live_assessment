import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/features/pagination/controller/first_pagination_controller.dart';
import 'package:live_assesment/features/pagination/ui/widgets/pagination_body.dart';

class FirstPagenationScreen extends StatelessWidget {
  final FirstPaginationController productsController =
      Get.put(FirstPaginationController());
  FirstPagenationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PaginationBody(productsController: productsController),
    );
  }
}
