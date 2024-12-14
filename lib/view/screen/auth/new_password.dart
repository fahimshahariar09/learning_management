import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/auth/new_password.dart';
import 'package:learning_management/view/common_widget/custom_button.dart';
import 'package:learning_management/view/screen/auth/widget/password_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController controller =Get.put(NewPasswordController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              PasswordTextField(passwordController: controller.oldpassword),
              const SizedBox(height: 10),
              PasswordTextField(passwordController: controller.newpassword),
              const SizedBox(height: 10),
              PasswordTextField(passwordController: controller.conpassword),
              const SizedBox(height: 10),
              CustomButton(onTap: (){}, buttonName: "Save"),

            ],
          ),
        ),
      ),
    );
  }
}
