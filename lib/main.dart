import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/view/screen/home_screen/home_screen.dart';
import 'package:learning_management/view/screen/profile/widget/change_password_section.dart';
import 'package:learning_management/view/screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangePasswordSection(),
    );
  }
}
