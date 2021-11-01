import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/size_calculator.dart';


class BottomBar extends StatelessWidget {
  final String image;
  final Color color;
  const BottomBar({
    Key key, this.image, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           color: color ?? Styles.colorWhite,
           child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Image.asset(
             image,
             width: screenAwareSize(140, context, width: true),
             height: screenAwareSize(20, context),
           ),
              ],
      ),
    );
  }
}