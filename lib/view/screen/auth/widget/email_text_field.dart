import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Email",
      ),
      validator: (value) {
        if (value == '' || value == null) {
          return "email can't be empty";
        } else if (!(value.toString().contains('.') ||
            value.toString().contains("@"))) {
          return "your valid email";
        }
        return null;
      },
    );
  }
}
