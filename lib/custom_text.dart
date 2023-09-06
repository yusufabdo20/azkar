import 'package:flutter/material.dart';

class CustomHeadText extends StatelessWidget {
  CustomHeadText({
    super.key,
    required this.title,
    this.titleFontSize = 25,
    this.titleColor,
  });
  String title;
  double titleFontSize;
  Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: titleColor,
          fontSize: titleFontSize,
          fontWeight: FontWeight.bold,
          fontFamily: 'Amiri'),
      textDirection: TextDirection.rtl,
    );
  }
}
