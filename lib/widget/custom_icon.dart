import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';




class CustomIcon extends StatelessWidget {
  final  icon;
  final Color color;
  final Function onPressed;
  final double size;
  const CustomIcon({
    
    Key key, this.icon, this.color, this.onPressed, this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Icon( icon ?? Icons.arrow_back_ios, color: color ?? Styles.colorBlack, size: size ?? 20,  ));
  }
}