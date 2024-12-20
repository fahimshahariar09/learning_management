import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class SelectImageDialogue extends StatelessWidget {
  const SelectImageDialogue(
      {super.key, required this.galleryButton, required this.cameraButton});

  final VoidCallback galleryButton;
  final VoidCallback cameraButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: "Selected image",
          fontSize: 20,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            InkWell(
              onTap: cameraButton,
            )
          ],
        )
      ],
    );
  }
}
