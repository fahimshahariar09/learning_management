

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController{
TextEditingController numController =TextEditingController();
TextEditingController num1Controller =TextEditingController();
TextEditingController num2Controller =TextEditingController();
TextEditingController num3Controller =TextEditingController();
RxBool isLoading =true.obs;

otpFun()async{
  isLoading.value=true;
  isLoading.value=false;
}

}