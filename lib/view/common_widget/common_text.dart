import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.titel,
      this.color,
      this.fWeight,
      this.overflow});

  final String titel;
  final Color? color;
  final FontWeight? fWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      '',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          overflow: TextOverflow.ellipsis),
      maxLines: 1,
    );
  }
}
