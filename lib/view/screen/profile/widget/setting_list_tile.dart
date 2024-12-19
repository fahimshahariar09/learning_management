import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/custom_text_widget.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({super.key, required this.onTap, required this.titel});

  final VoidCallback onTap;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        surfaceTintColor: Colors.transparent,
        shape: OutlineInputBorder(borderSide: BorderSide.none),
        child: Row(
          children: [CustomTextWidget(text: titel)],
        ),
      ),
    );
  }
}
