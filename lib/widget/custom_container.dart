import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class CustomContainer extends StatelessWidget {
  final Widget widget;
  final height;
  final width;
  final borderWidth;
  final padding;
  final margin;
  final borderRadius;
  final boxShadow;
  final Function onPressed;
  final Color borderColor, checkColor, iconColor, containerColor, checkboxColor;
  final String text;
  CustomContainer(
      {this.onPressed,
      this.widget,
      this.text,
      this.borderColor,
      this.checkColor,
      this.iconColor,
      this.containerColor,
      this.height,
      this.margin,
      this.padding,
      this.width,
      this.borderWidth,
      this.boxShadow,
      this.checkboxColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: margin,
        height: height,
        // screenAwareSize(65, context),
        width: width ?? double.infinity,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
            boxShadow: boxShadow,
            border: Border.all(
                color: borderColor ?? Styles.colorBoxBorder,
                width: borderWidth ?? 1),
            color: containerColor ?? Styles.colorBoxBackground),
        child: widget ??
            Row(
              children: [
                CustomText(
                  '$text',
                  textAlign: TextAlign.left,
                  fontSize: 14,
                ),
                Spacer(),
                Container(
                    height: screenAwareSize(25, context),
                    width: screenAwareSize(25, context, width: true),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: checkboxColor,
                    ),
                    child: CustomIcon(
                      icon: Icons.check,
                      color: iconColor,
                      size: 23,
                    ))
              ],
            ),
      ),
    );
  }
}
