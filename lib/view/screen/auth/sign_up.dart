import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/auth/sign_up.dart';
import 'package:learning_management/view/screen/auth/widget/con_password_field.dart';
import 'package:learning_management/view/screen/auth/widget/email_text_field.dart';
import 'package:learning_management/view/screen/auth/widget/name_text_field.dart';
import 'package:learning_management/view/screen/auth/widget/password_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller =Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                NameTextField(nameController: controller.nameController),
                const SizedBox(height: 15),
                EmailTextField(emailController: controller.emailController),
                const SizedBox(height: 15),
                PasswordTextField(passwordController: controller.passwordController),
                const SizedBox(height: 15),
                ConPasswordField(conpasswordController: controller.conpasswordController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
