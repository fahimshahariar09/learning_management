import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/utlis/common_funcation/common_snackbar_message.dart';
import 'package:learning_management/utlis/common_funcation/internet_connection_check.dart';
import 'package:learning_management/view/common_widget/custom_button.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';
import 'package:learning_management/view/screen/profile/widget/custom_text_field.dart';

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
          child: Column(
            children: [
              const Row(
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
              const SizedBox(height: 10),
              CustomTextField(
                controller: profileController.oldPasswordController,
                labelText: 'current_password',
              ),
              CustomTextField(
                controller: profileController.newPasswordController,
                labelText: 'new_password',
              ),
              CustomTextField(
                controller: profileController.confPasswordController,
                labelText: 'conf_password',
              ),
              const SizedBox(height: 10),
              CustomButton(onTap: ()async{
                FocusScope.of(context).unfocus();
                if(!profileController.formKey.currentState!.validate()){
                  return ;
                }
                if(!await ConnectionChecker.checkConnection()){
                  CommonSnackBarMessage.noInternetConnection();
                  return ;
                }
               // bool status = await ProfileController
              }, text: "edit")
            ],
          ),
        ),
      ),
    );
  }
}
