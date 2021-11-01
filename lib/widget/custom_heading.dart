import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class CustomHeading extends StatelessWidget {
  final String headingText;
  final trailingIcon;
  final Color leadingIconColor, headingTextColor;
  final Function onPressedicon;
  final bool checkIcon;
  const CustomHeading({
    this.headingText,
    Key key,
    this.onPressedicon,
    this.headingTextColor,
    this.checkIcon = false,
    this.trailingIcon,
    this.leadingIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenAwareSize(40, context),
        ),
        Row(
          children: [
            CustomIcon(
              color: leadingIconColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            horizontalSpaceTiny,
            CustomText(
              headingText,
              color: headingTextColor ?? Styles.colorBlack,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            Spacer(),
            checkIcon
                ? CustomIcon(icon: trailingIcon, onPressed: onPressedicon)
                : SizedBox(),
          ],
        ),
        verticalSpaceMedium
      ],
    );
  }
}
