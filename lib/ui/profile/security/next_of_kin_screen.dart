import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_textfield.dart';

class NextKinScreen extends StatelessWidget {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Next of Kin',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            verticalSpaceSmall,
            CustomTextField(
              title: 'First Name',
              hintText: 'Aramide',
              controller: _firstName,
            ),
            verticalSpaceMedium,
            CustomTextField(
              title: 'Last Name',
              hintText: 'Olasubomi',
              controller: _lastName,
            ),
            verticalSpaceMedium,
            // RelationShipDropDown(),
            verticalSpaceMedium,
            CustomTextField(
              title: 'Email Address',
              hintText: 'olasubomi@gmail.com',
              controller: _email,
              inputType: TextInputType.emailAddress,
            ),
            verticalSpaceMedium,
            CustomTextField(
              title: 'Phone Number',
              hintText: 'Aramide',
              controller: _phoneNumber,
              inputType: TextInputType.number,
            ),
            verticalSpaceMedium,
            verticalSpaceSmall,
            CustomButton(
              title: 'SAVE',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
