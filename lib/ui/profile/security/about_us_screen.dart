import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'About Us',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            verticalSpaceSmall,
            Image.asset(
              'images/layer1.png',
              height: screenAwareSize(212, context),
              width: screenAwareSize(212, context, width: true),
            ),
            CustomText(
              'Insuremart',
              fontSize: 25,
              color: Styles.colorBlack,
              fontWeight: FontWeight.bold,
              bottomMargin: 10,
              topMargin: 20,
            ),
            CustomText(
              'v1.01',
              fontSize: 12,
            ),
            CustomText(
              'Gravida ullamcorper accumsan sed adipiscing sit. Diam dignissim in ut lectus sed semper augue proin. Aenean mauris nunc at augue vel.',
              fontSize: 14,
              topMargin: 20,
            ),
            CustomText('Privacy Policy',
                fontSize: 14,
                topMargin: 20,
                fontWeight: FontWeight.w700,
                color: Styles.appBackground1),
            CustomText('Terms & Conditions',
                fontSize: 14,
                topMargin: 20,
                fontWeight: FontWeight.w700,
                color: Styles.appBackground1),
          ],
        ),
      ),
    );
  }
}
