import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/common_funcation/common_snackbar_message.dart';
import 'package:learning_management/utlis/common_funcation/internet_connection_check.dart';
import 'package:learning_management/view/common_widget/custom_button.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';
import 'package:learning_management/view/screen/profile/widget/custom_text_field.dart';

class ProfileEditSection extends StatelessWidget {
  const ProfileEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: "profile edit",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    profileController.getImage(
                        imageSource: ImageSource.gallery);
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: profileController.profileIMG.value ==
                                null
                            ? NetworkImage(
                                "${profileController.userInfo['profile_image'] ?? ""}")
                            : FileImage(File(
                                    profileController.profileIMG.value!.path))
                                as ImageProvider,
                      ),
                      const CustomTextWidget(
                        text: "Tap to Change image",
                        fontSize: 11,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: profileController.nameController,
                  labelText: "name",
                ),
                CustomTextField(
                  controller: profileController.addressController,
                  labelText: "address",
                ),
                const SizedBox(height: 10),
                CustomButton(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    if(!await ConnectionChecker.checkConnection()){
                      CommonSnackBarMessage.noInternetConnection();
                      return ;
                    }
                    bool status = await profileController.profileUpdateService();
                    if(status){
                      await profileController.getProfileInfo();
                      Get.back();
                    }
                  },
                  text: "edit",
                  buttonWidth: 150,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
