import 'package:flutter/material.dart';
import 'package:learning_management/utlis/app_colors.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class SelectImageDialogue extends StatelessWidget {
  const SelectImageDialogue(
      {super.key, required this.galleryButton, required this.cameraButton});

  final VoidCallback galleryButton;
  final VoidCallback cameraButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomTextWidget(
            text: "Selected image",
            fontSize: 20,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: cameraButton,
                child: const Icon(
                  Icons.camera_alt,
                  size: 25,
                  color: AppColors.bg1LightColor,
                ),
              ),
              InkWell(
                onTap: galleryButton,
                child: const Icon(
                  Icons.photo,
                  size: 25,
                  color: AppColors.bg1LightColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
