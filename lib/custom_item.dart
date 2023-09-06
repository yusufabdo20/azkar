import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomItem extends StatelessWidget {
  CustomItem({
    super.key,
    required this.title,
    this.backgroundColor,
    required this.counter,
  });
  String title;
  Color? backgroundColor;
  int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomHeadText(
              title: title,
              titleFontSize: MediaQuery.of(context).size.width * 0.05),
          CustomHeadText(title: "$counter", titleFontSize: 70),
        ],
      ),
    );
  }
}
