import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';

class DotCircle extends StatelessWidget {
  final icon;
  final Function onTap;
  final padding;
  final height;
  final width;
  final Widget widget;
  final backgroundColor, dotColor;
  const DotCircle(
      {Key key,
      this.icon,
      this.onTap,
      this.backgroundColor,
      this.padding,
      this.dotColor,
      this.height,
      this.width,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? Styles.colorWhite,
          shape: BoxShape.circle,
        ),
        height: height ?? 20,
        width: width ?? 20,
        child: widget ??
            Center(
              child: CustomIcon(
                icon: icon ?? Icons.arrow_back_ios,
                size: 12,
                color: dotColor ?? Styles.colorLightBlue,
              ),
            ),
      ),
    );
  }
}
