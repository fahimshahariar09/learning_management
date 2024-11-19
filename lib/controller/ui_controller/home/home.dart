import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;

  categoryFun() async {
    isLoading.value = true;
    isLoading.value = false;
  }
}
