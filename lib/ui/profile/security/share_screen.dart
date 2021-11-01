import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class ShareScreen extends StatelessWidget {
  final _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CarAppBar(
            title: 'Share Instrument',
            color: Styles.appBackground1,
            textColor: Styles.colorWhite,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.appBackground1,
          child: ListView(
            children: [
              verticalSpaceMedium,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShareButton(
                        image: 'images/copylink.png',
                        title: 'Copy Link',
                      ),
                      horizontalSpaceMedium,
                      horizontalSpaceSmall,
                      ShareButton(
                        image: 'images/download.png',
                        title: 'Share',
                      ),
                      horizontalSpaceSmall,
                      horizontalSpaceMedium,
                      ShareButton(
                        image: 'images/whatsapp.png',
                        title: 'Whatsapp',
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShareButton(
                        image: 'images/facebook2.png',
                        title: 'Copy Link',
                      ),
                      horizontalSpaceMedium,
                      horizontalSpaceSmall,
                      ShareButton(
                        image: 'images/twitter.png',
                        title: 'Share',
                      ),
                      horizontalSpaceSmall,
                      horizontalSpaceMedium,
                      ShareButton(
                        image: 'images/instagram.png',
                        title: 'Whatsapp',
                      ),
                    ],
                  )
                ],
              ),
              verticalSpaceLarge,
              CustomTextField(
                titleColor: Styles.colorWhite,
                title: 'Enter Phone Number to Invite',
                hintText: '08062835641',
                controller: _phoneNumber,
                // suffixIcon: Icon(
                //   Icons.ac_unit,
                //   color: Colors.black,
                // ),
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
              CustomButton(
                title: 'INVITE',
                onPressed: () {},
                buttonColor: Styles.colorLightgreen,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Styles.appBackground1,
          child: Image.asset(
            'images/friends.png',
            height: screenAwareSize(189, context),
            width: screenAwareSize(372, context, width: true),
          ),
        ),
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  final String image, title;
  final Function onPressed;
  const ShareButton({
    Key key,
    this.image,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        child: Column(
          children: [
            Image.asset(
              image,
              height: screenAwareSize(50, context),
              width: screenAwareSize(50, context, width: true),
            ),
            CustomText(
              title,
              fontSize: 12,
              color: Styles.colorWhite,
              topMargin: 5,
            )
          ],
        ),
      ),
    );
  }
}
