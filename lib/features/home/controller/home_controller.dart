import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme() {
    isDark.value = !isDark.value;
  }
}
