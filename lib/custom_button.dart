import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      required this.onPressedFunction,
      required this.buttonTitle,
      this.widthOfButton,
      this.buttonBackgroundColor = Colors.deepPurple,
      this.heightOfButton,
      this.titleFontSize = 18,
      this.paddingEdgeInsets});
  Function()? onPressedFunction;
  double? widthOfButton;
  String buttonTitle;
  Color? buttonBackgroundColor;
  double? titleFontSize;
  double? heightOfButton;
  EdgeInsets? paddingEdgeInsets;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthOfButton,
      height: heightOfButton,
      child: ElevatedButton(
        onPressed: onPressedFunction,
        child: Text(
          buttonTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri',
              fontSize: titleFontSize),
        ),
        style: ElevatedButton.styleFrom(
          padding: paddingEdgeInsets,
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
