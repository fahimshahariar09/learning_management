import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.onTap,
      required this.buttonName,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonColor});

  final VoidCallback onTap;
  final String buttonName;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          child: CommonText(titel: buttonName),
        ),
      ),
    );
  }
}
