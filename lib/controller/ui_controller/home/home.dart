import 'package:get/get.dart';
import 'package:learning_management/database/home/category.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;

  RxList<CategoryList> category =<CategoryList>[].obs;

  categoryFun() async {
    isLoading.value = true;
    isLoading.value = false;
  }
}
