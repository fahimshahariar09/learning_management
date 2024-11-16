import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool isLightTheme = true.obs;

  RxString selectedLanguage ="BD".obs;
  RxList<String> languageList =<String>[
    "BD",
    "US",
    "India",
  ].obs;

  changeThemeFun() async {
    isLightTheme.value = !isLightTheme.value;
    Get.changeTheme(!isLightTheme.value ? ThemeData.dark() : ThemeData.light());
  }

  changeLanguageFun(){
    String local ="en";
  }

}
