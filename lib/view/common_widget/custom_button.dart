import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.buttonWidth,
  });

  final VoidCallback onTap;
  final String text;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SizedBox(
            height: 30,
            width: buttonWidth ?? MediaQuery.sizeOf(context).width,
            child: Center(
                child: CustomTextWidget(
              text: text,
              fontColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
          ),
        ),
      ),
    );
  }
}
