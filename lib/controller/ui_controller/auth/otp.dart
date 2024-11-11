import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/api_controller/auth/otp.dart';

class OtpController extends GetxController {
  TextEditingController numController = TextEditingController();
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();
  RxBool isLoading = true.obs;

  otpFun() async {
    isLoading.value = true;
    OtpService.otpService(
        num: numController.text,
        num1: num1Controller.text,
        num2: num2Controller.text,
        num3: num3Controller.text);
    isLoading.value = false;
  }

  @override
  void onInit() {
    numController.text = "2";
    num1Controller.text = "5";
    num2Controller.text = "9";
    num3Controller.text = "0";
    super.onInit();
  }
}
