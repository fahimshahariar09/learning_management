import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/constant/images.dart';
import 'package:learning_management/controller/ui_controller/splash/splash.dart';
import 'package:learning_management/view/common_widget/common_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: const Color(0xff32073F),
            body: SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.splash),
                    const SizedBox(height: 15),
                    const Text(
                      "Grow Your Soft Skill\nAnd\n Be More Creative",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                      const SizedBox(height: 10),
                    CommonButton(onTap: (){},buttonWidth: 200, buttonName: "Get Started"),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
