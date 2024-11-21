import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/home/courses.dart';
import 'package:learning_management/database/home/category.dart';
import 'package:learning_management/model/home/courses_model.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;

  RxList<CategoryList> category =<CategoryList>[].obs;
  List<CoursesModel> coursesList=[];


  coursesFun()async{
    isLoading.value=true;
    coursesList =await CoursesService.coursesService();
    isLoading.value=false;
  }

  categoryFun() async {
    isLoading.value = true;
    isLoading.value = false;
  }

  @override
  void onInit() {
    categoryFun();
    super.onInit();
  }

}
