import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/auth/sign_up.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conpasswordController = TextEditingController();
  RxBool isLoading = true.obs;

  signupFun() async {
    isLoading.value = true;
    SignUpService.signUpService(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        conpassword: conpasswordController.text);
    isLoading.value = false;
  }

  @override
  void onInit() {
    nameController.text = "fahim";
    emailController.text = "fahim@gmail.com";
    passwordController.text = "123456";
    conpasswordController.text = "123456";
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    conpasswordController.dispose();
    super.dispose();
  }
}
