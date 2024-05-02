import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/features/pagination/controller/second_pagination_controller.dart';
import 'package:live_assesment/features/pagination/ui/pagination_body.dart';

class SecondPagenationScreen extends StatelessWidget {
  final SecondPaginationController productsController =
      Get.put(SecondPaginationController());
  SecondPagenationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PaginationBody(productsController: productsController),
    );
  }
}
