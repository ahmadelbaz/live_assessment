import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isDark = true.obs;

  void changeTheme() {
    isDark.value = !isDark.value;
  }
}
