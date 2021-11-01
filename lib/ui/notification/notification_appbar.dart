import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class NotificationsAppBar extends StatelessWidget {
  final String title;
  final bool check;
  final color, textColor;
  const NotificationsAppBar({
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
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CustomIcon(
                      onPressed: () => Navigator.pop(context),
                    ),
                    horizontalSpaceTiny,
                    CustomText(
                      '$title',
                      fontSize: 14,
                      color: textColor ?? Styles.colorBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      'Mark all as read',
                      fontSize: 14,
                      leftMargin: 84,
                      color: textColor ?? Styles.appBackground2,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [

                ],
              ),
            ),
          )
        ]);
  }
}
