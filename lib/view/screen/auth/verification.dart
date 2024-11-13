import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/auth/otp.dart';
import 'package:learning_management/view/screen/auth/widget/common_otp.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    OtpController otpController = Get.put(OtpController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonOtp(otpController: otpController.numController),
                  const SizedBox(width: 10),
                  CommonOtp(otpController: otpController.num1Controller),
                  const SizedBox(width: 10),
                  CommonOtp(otpController: otpController.num2Controller),
                  const SizedBox(width: 10),
                  CommonOtp(otpController: otpController.num3Controller),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
