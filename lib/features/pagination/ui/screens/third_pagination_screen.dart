import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/features/pagination/controller/second_pagination_controller.dart';
import 'package:live_assesment/features/pagination/ui/widgets/pag_buttons.dart';
import 'package:live_assesment/features/pagination/ui/widgets/pagination_body.dart';

class ThirdPaginationScreen extends StatelessWidget {
  final SecondPaginationController productsController =
      Get.put(SecondPaginationController());
  ThirdPaginationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PaginationBody(
            productsController: productsController,
            pageFooter: true,
          ),
          const Center(child: PagButtons()),
        ],
      ),
    );
  }
}
