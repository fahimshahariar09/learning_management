import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/auth/sign_in.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  RxBool isLoading = true.obs;

  signInFun() async {
    isLoading.value = true;
    SignInService.signinService(
        email: emailController.text, password: passController.text);
    isLoading.value = false;
  }

  @override
  void onInit() {
    emailController.text="fahim@gamil.com";
    passController.text="123456";
    super.onInit();
  }

}
