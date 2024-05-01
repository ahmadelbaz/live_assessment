import 'package:get/get.dart';
import 'package:live_assesment/core/networking/dio_service.dart';

Future<void> registerService() async {
  Get.put(DioService());
}
