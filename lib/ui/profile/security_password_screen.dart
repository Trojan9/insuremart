import 'package:flutter/material.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/ui/profile/security/2_step_verification.dart';
import 'package:insure_marts/ui/profile/security/bvn_screen.dart';
import 'package:insure_marts/ui/profile/security/change_password.dart';
import 'package:insure_marts/ui/profile/security/id_verification.dart';
import 'package:insure_marts/ui/profile/security/next_of_kin_screen.dart';
import 'package:insure_marts/ui/profile/security/phone_number.dart';
import 'package:insure_marts/ui/profile/security/utility_bill.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:provider/provider.dart';

class SecurityPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Security & Password',
        ),
      ),
      body: Consumer<ToggleData>(
        builder: (_, choose, child) => Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              SecurityPasswordContainer(
                title: 'BVN',
                status: 'Connected',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BvnScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'ID Verification',
                status: 'Not Connected',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IdVerification()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Utility Bill',
                status: 'Not Verified',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UtilityBill()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Phone Number',
                status: 'Not Connected',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneNumberScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: '2-step verification',
                status: choose.twoStepVerification ? 'on' : 'off',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwoStepVerificationScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Next of Kin',
                status: 'Not added',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextKinScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Change Password',
                status: 'Done',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePasswordScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecurityPasswordContainer extends StatelessWidget {
  final String title, status;
  final Function onPressed;

  const SecurityPasswordContainer(
      {Key key, this.title, this.onPressed, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          onPressed: onPressed,
          widget: Row(
            children: [
              CustomText(
                title,
                fontSize: 14,
                color: Styles.colorBlack,
              ),
              Spacer(),
              CustomText(
                status,
                fontSize: 12,
              ),
              horizontalSpaceMedium,
              CustomIcon(
                icon: Icons.arrow_forward_ios,
                size: 12,
              )
            ],
          ),
        ),
        verticalSpaceMedium
      ],
    );
  }
}
