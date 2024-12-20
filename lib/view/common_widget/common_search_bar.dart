import 'package:flutter/material.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key, this.hText});

  final String? hText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hText,
        prefixIcon: const Icon(Icons.search)
      ),
    );
  }
}
