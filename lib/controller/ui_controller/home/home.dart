import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/home/category.dart';
import 'package:learning_management/controller/api_controller/home/courses.dart';
import 'package:learning_management/database/home/category.dart';
import 'package:learning_management/model/home/category_model.dart';
import 'package:learning_management/model/home/courses_model.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;
  List<CoursesModel> coursesList = [];
  List<CategoryModel> categoryList = [];

  coursesFun() async {
    isLoading.value = true;
    coursesList = await CoursesService.coursesService();
    isLoading.value = false;
  }

  categoryFun() async {
    isLoading.value = true;
    categoryList = await CategoryService.categoryService();
    isLoading.value = false;
  }

  @override
  void onInit() {
    categoryFun();
    coursesFun();
    super.onInit();
  }
}
