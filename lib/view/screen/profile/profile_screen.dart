import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';
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
                                fit: BoxFit.cover,
                                placeholder: "",
                                image:
                                    "${profileController.userInfo["profile_image"] ?? ''}",
                                imageErrorBuilder: (context, o, t) {
                                  return const CircleAvatar(
                                    backgroundImage: NetworkImage("url"),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextWidget(
                        text:
                            "${profileController.userInfo["name"] ?? "please update your name"}",
                        fontWeight: FontWeight.w500,
                        fontColor: Colors.white,
                        fontSize: 20,
                      ),
                      CustomTextWidget(
                        text:
                            "${profileController.userInfo["email"] ?? "empty email"}",
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomTextWidget(
                            text: "phone",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                          CustomTextWidget(
                            text: "${profileController.userInfo["phone"]}",
                            fontWeight: FontWeight.w300,
                            fontColor: Colors.white,
                            fontSize: 14,
                          )
                        ],
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
