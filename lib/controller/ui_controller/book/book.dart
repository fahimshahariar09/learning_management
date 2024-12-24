import 'package:get/get.dart';
import 'package:learning_management/model/mentor/top_mentor.dart';

class BookController extends GetxController{
  RxBool isLoading = true.obs;
  List<TopMentorModel> topmentorlist = [];
}