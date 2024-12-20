import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/auth/forget_password.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  RxBool isLoading = true.obs;

  forgetpassFun() async {
    isLoading.value = true;
    ForgetPasswordService.forgetpasswordservice(email: emailController.text);
    isLoading.value=false;
  }

  @override
  void onInit() {
    emailController.text="fahim@gmail.com";
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

}
