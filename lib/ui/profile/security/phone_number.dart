import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_textfield.dart';

class PhoneNumberScreen extends StatelessWidget {
  final _phoneNumber = TextEditingController();
  final _otpNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Phone Number',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            verticalSpaceSmall,
            CustomTextField(
              title: 'Phone Number',
              hintText: '08062835641',
              controller: _phoneNumber,
            ),
            verticalSpaceMedium,
            CustomButton(
              title: 'SEND OTP',
              onPressed: () {},
            ),
            verticalSpaceMedium,
            CustomTextField(
              title: 'OTP',
              hintText: '22567',
              controller: _otpNumber,
            ),
            verticalSpaceMedium,
            CustomButton(
              title: 'VERIFY & SAVE',
              onPressed: () {},
            ),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
