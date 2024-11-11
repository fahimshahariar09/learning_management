
import 'package:flutter/material.dart';

class CommonOtp extends StatelessWidget {
  const CommonOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        fillColor: Colors.grey,
      ),
    );
  }
}
