import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/ui/profile/security/id_verification.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dropdown/utility_dropdown.dart';

class UtilityBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Utility Bil',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            UploadContainer(
              title: 'Utility Bill',
              onPressed: () {},
            ),
            verticalSpaceMedium,
            Row(
              children: [
                CustomText(
                  'Utility Bill Type',
                  fontSize: 14,
                  color: Styles.colorBlack,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpaceTiny,
            UtilityDropDown(),
            verticalSpaceMedium,
            CustomButton(
              title: 'SAVE',
              onPressed: () {},
            ),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
