import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/splash/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
              child: Column(
                children: [
                  Image.asset("name"),
                  SizedBox(height: 15),
                  Text("data"),
                ],
              ),
            ),
          );
        });
  }
}
