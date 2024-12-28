
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/book/top_mentor.dart';
import 'package:learning_management/model/mentor/top_mentor.dart';

class BookController extends GetxController{
  RxBool isLoading = true.obs;
  List<TopMentorModel> topmentorlist = [];

  topmentorFun()async{
    isLoading.value=true;
    topmentorlist = await TopMentorService.tomentorService();
    isLoading.value= false;
  }


  @override
  void onInit() {
    topmentorFun();
    super.onInit();
  }

}