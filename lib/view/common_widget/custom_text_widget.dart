import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.text,
      this.fontColor,
      this.fontWeight,
      this.overflow,
      this.maxLine,
      this.fontSize,
      this.textAlign,
      this.fontFamily,
      this.textLineThrough});

  final String text;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? fontSize;
  final int? maxLine;
  final TextAlign? textAlign;
  final String? fontFamily;
  final bool? textLineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decorationStyle: TextDecorationStyle.solid,
          decorationColor: Colors.blue,
          decoration: textLineThrough == true
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          color: fontColor ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? 15,
          decorationThickness: 2.1,
          fontFamily: fontFamily ?? 'RobotoSerif',
          overflow: overflow ?? TextOverflow.ellipsis),
      maxLines: maxLine ?? 1,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
