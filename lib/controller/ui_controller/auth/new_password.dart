import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController{
  TextEditingController oldpassword =TextEditingController();
  TextEditingController newpassword =TextEditingController();
  TextEditingController conpassword =TextEditingController();
  RxBool isLoading=true.obs;
}