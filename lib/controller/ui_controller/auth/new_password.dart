import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/auth/new_password.dart';

class NewPasswordController extends GetxController {
  TextEditingController oldpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  RxBool isLoading = true.obs;

  newpasswordFun() async {
    isLoading.value = true;
    NewPasswordService.newpasswordService(
        oldpassword: oldpassword.text,
        newpassword: newpassword.text,
        conpassword: conpassword.text);
    isLoading.value = false;
  }

  @override
  void onInit() {
    oldpassword.text="123456";
    newpassword.text="12345678";
    conpassword.text="12345678";
    super.onInit();
  }

  @override
  void dispose() {
    oldpassword.dispose();
    newpassword.dispose();
    conpassword.dispose();
    super.dispose();
  }

}
