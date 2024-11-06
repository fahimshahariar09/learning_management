import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/constant/images.dart';
import 'package:learning_management/controller/ui_controller/splash/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0xff32073F),
            body: Center(
              child: Column(
                children: [
                  Image.asset(AppImages.splash),
                  SizedBox(height: 15),
                  Text("Grow Your Soft Skill\nAnd\n Be More Creative",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                ],
              ),
            ),
          );
        });
  }
}
