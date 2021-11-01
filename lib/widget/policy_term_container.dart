import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class PolicyContainer extends StatelessWidget {
  final Function onTap;
  final border;
  final dayColor, termColor;
  PolicyContainer({this.onTap, this.dayColor, this.termColor, this.border});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: border,
              ),
            ),
            horizontalSpaceSmall,
            CustomText(
              '6 month',
              fontSize: 14,
              color: dayColor,
            ),
            Spacer(),
            CustomText(
              '100 ',
              fontSize: 14,
              color: termColor,
            ),
          ],
        ),
      ),
    );
  }
}
