import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.onTap,
      required this.buttonName,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonColor,
      this.textColor});

  final VoidCallback onTap;
  final String buttonName;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: buttonColor ?? Colors.white,
        child: SizedBox(
          height: buttonHeight ?? 50,
          width: buttonWidth ?? MediaQuery.sizeOf(context).width,
          child: Center(
              child: CommonText(
            titel: buttonName,
            fColor: textColor ?? Colors.black,
                fWeight: FontWeight.w500,
          )),
        ),
      ),
    );
  }
}
