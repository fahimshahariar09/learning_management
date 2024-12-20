import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

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
                CustomTextWidget(
                  text: "profile edit",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    profileController.getImage(
                        imageSource: ImageSource.gallery);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
