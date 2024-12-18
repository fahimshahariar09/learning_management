import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/view/screen/profile/widget/custom_text_field.dart';

class DeletedAccountSection extends StatelessWidget {
  const DeletedAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: AppColors.bg1LightColor,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: profileController.oldPasswordController,
                    labelText: "current_password",
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
