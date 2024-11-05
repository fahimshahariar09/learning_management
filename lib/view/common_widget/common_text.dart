import 'package:flutter/material.dart';
class CommonText extends StatelessWidget {
  const CommonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15,
        overflow: TextOverflow.ellipsis
      ),
      maxLines: 1,
    );
  }
}
