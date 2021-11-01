import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/dropdown/id_type_dropdown.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class IdVerification extends StatelessWidget {
  final _idNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CarAppBar(
            title: 'ID Verification',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              UploadContainer(
                title: 'ID Front',
                onPressed: () {},
              ),
              UploadContainer(
                title: 'ID Back',
                onPressed: () {},
              ),
              Row(
                children: [
                  CustomText(
                    'ID Type',
                    fontSize: 14,
                    color: Styles.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              verticalSpaceTiny,
              IdTypeDropDown(),
              verticalSpaceMedium,
              CustomTextField(
                title: 'ID Number',
                hintText: 'ID Number',
                controller: _idNumber,
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
      ),
    );
  }
}

class UploadContainer extends StatelessWidget {
  final Function onPressed;
  final String title;
  const UploadContainer({
    Key key,
    this.onPressed,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title,
          fontSize: 14,
          color: Styles.colorBlack,
          bottomMargin: 7,
        ),
        CustomContainer(
          height: screenAwareSize(200, context),
          padding: EdgeInsets.all(0),
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                height: 40,
                title: 'UPLOAD IMAGE',
                fontSize: 12,
                width: 150,
              )
            ],
          ),
        ),
        verticalSpaceMedium
      ],
    );
  }
}
