import 'package:flutter/material.dart';

class CommonOtp extends StatelessWidget {
  const CommonOtp({super.key, required this.otpController});

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 50,
      child: TextField(
        controller: otpController,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          fillColor: Colors.grey,
        ),
      ),
    );
  }
}
