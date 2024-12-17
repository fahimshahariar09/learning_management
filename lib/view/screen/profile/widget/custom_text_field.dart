import 'package:flutter/material.dart';
import 'package:learning_management/utlis/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.textInputType,
      required this.labelText});

  final TextEditingController controller;
  final String labelText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          labelText: labelText,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.bg1LightColor)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.cardDarkColor)),
          errorBorder: const OutlineInputBorder(
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
