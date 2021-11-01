import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dot_circle.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class ClaimIndicator extends StatelessWidget {
  final String steps, title;
  final double indicatorwidth;
  final Function forwardOntap;
  final indicatorcolor, rightDotcolor, leftDotColor, containerColor;
  const ClaimIndicator({
    Key key,
    this.steps,
    this.containerColor,
    this.indicatorcolor,
    this.forwardOntap,
    this.title,
    this.indicatorwidth,
    this.leftDotColor,
    this.rightDotcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.5),
          ),
            color: Styles.colorBlack.withOpacity(0.1),
          ),
          height: screenAwareSize(24, context),
          width: double.infinity,
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.5),
                    ),
                    color: indicatorcolor ?? Styles.colorDeepGreen,
                  ),
                  height: screenAwareSize(24, context),
                  width: screenWidth(context) * indicatorwidth),
            ],
          ),
        ),
      ],
    );
  }
}
