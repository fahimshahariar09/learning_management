import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.titel,
      this.fColor,
      this.fWeight,
      this.overflow,
      this.maxLine,
      this.fSize});

  final String titel;
  final Color? fColor;
  final FontWeight? fWeight;
  final TextOverflow? overflow;
  final double? fSize;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
          color: fColor ?? Colors.black,
          fontWeight: fWeight ?? FontWeight.normal,
          fontSize: fSize ?? 15,
          overflow: overflow ?? TextOverflow.ellipsis),
      maxLines: maxLine ?? 1,
    );
  }
}
