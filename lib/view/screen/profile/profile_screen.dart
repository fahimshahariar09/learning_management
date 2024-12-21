import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/view/common_widget/image_view_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width,
                  padding: const EdgeInsets.only(top: 70, bottom: 20),
                  decoration: const BoxDecoration(
                    color: AppColors.bg1LightColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(
                            () => ImageViewWidget(
                              imageUrl:
                                  "${profileController.userInfo["profile_image"] ?? ''}",
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ClipOval(
                              child: FadeInImage.assetNetwork(
                                height: 100,
                                width: 100,
                                placeholder: "",
                                image:
                                    "${profileController.userInfo["profile_image"] ?? ''}",
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
