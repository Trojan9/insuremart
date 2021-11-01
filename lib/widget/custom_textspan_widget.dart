import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/widget/size_calculator.dart';

TextSpan customTextSpan(
    {String text,
    String fontFamily,
    double fontSize,
    FontWeight fontWeight,
    Color color,
    BuildContext context,
    void Function() onTap,
    List<TextSpan> children}) {
  return TextSpan(
      text: text,
      style: TextStyle(
          fontSize: screenAwareSize(fontSize, context, width: true),
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily ?? 'Crossten'),
      recognizer: TapGestureRecognizer()..onTap = () => onTap(),
      children: children);
}
