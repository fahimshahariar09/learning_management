import 'package:flutter/material.dart';
import 'package:learning_management/utlis/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key,
      required this.onTap,
      required this.onText,
      required this.offText,
      this.value});

  final VoidCallback onTap;
  final String onText;
  final String offText;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 25,
              width: 30,
              decoration: BoxDecoration(
                  color: value.value == false
                      ? AppColors.bg1LightColor
                      : Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.transparent)),
            )
          ],
        ),
      ),
    );
  }
}
