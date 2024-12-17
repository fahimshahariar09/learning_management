import 'package:flutter/material.dart';
import 'package:learning_management/utlis/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.controller, this.textInputType});

  final TextEditingController controller;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bg1LightColor)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
        ),
        validator: (value) {
          if (value.toString() == "") {
            return "Field can't be empty";
          }
          return null;
        },
      ),
    );
  }
}
