import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class InsuranceAppBar extends StatelessWidget {
  final String title;
  final bool check;
  final color, textColor;
  const InsuranceAppBar({
    this.title,
    this.color,
    this.textColor,
    this.check = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      backgroundColor: color,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: Column(
        children: [
          CustomText(
            '$title',
            fontSize: 14,
            leftMargin: 16,
            topMargin: 16,
            color: textColor ?? Styles.colorBlack,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}
