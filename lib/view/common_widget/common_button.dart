import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.onTap,
      required this.buttonName,
      this.buttonWidth,
      this.textColor});

  final VoidCallback onTap;
  final String buttonName;
  final double? buttonWidth;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
        color: Colors.white,
        child: SizedBox(
          height: 30,
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
