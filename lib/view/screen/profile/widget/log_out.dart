import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Card(
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        shape: OutlineInputBorder(borderSide: BorderSide.none),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: CustomTextWidget(text: "log out"),
            ),
            Icon(
              Icons.logout,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
