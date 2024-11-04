import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.onTap});


  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          child: const Text("data"),
        ),
      ),
    );
  }
}
