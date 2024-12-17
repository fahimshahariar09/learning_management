import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.vpn_key,
                    color: AppColors.bg1LightColor,
                  ),
                  SizedBox(height: 10),
                  CustomTextWidget(
                    text: "change_password",
                    fontSize: 22,
                    fontColor: AppColors.bg1LightColor,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
