import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.text,
      this.fontColor,
      this.fontWeight,
      this.overflow,
      this.maxLine,
      this.fontSize,
      this.textAlign,
      this.fontFamily});

  final String text;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? fontSize;
  final int? maxLine;
  final TextAlign? textAlign;
  final String? fontFamily;

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
