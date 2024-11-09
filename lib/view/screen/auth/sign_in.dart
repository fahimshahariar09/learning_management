import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/auth/sign_in.dart';
import 'package:learning_management/view/common_widget/common_button.dart';
import 'package:learning_management/view/screen/auth/widget/email_text_field.dart';
import 'package:learning_management/view/screen/auth/widget/password_text_field.dart';
import 'package:learning_management/view/screen/home_screen/home_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                EmailTextField(emailController: controller.emailController),
                const SizedBox(height: 10),
                PasswordTextField(
                    passwordController: controller.passController),
                const SizedBox(height: 10),
                CommonButton(
                    onTap: () {
                      if (!controller.formKey.currentState!.validate()) {
                        return;
                      } else {
                        controller.signInFun();
                        Get.to(HomeScreen());
                      }
                    },
                    buttonName: "Sign In"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
