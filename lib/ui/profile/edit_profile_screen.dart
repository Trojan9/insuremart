import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button2.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/dropdown/genderdropdown.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _firstName = TextEditingController();
    final _lastName = TextEditingController();
    final _email = TextEditingController();
    final _address = TextEditingController();

    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CarAppBar(
            title: 'Profile',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[200])),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'images/default_image.png',
                      ),
                    ),
                  ),
                  horizontalSpaceMedium,
                  CustomButton(
                    title: 'UPLOAD IMAGE',
                    fontSize: 10,
                    height: 35,
                    width: 150,
                    buttonColor: Styles.appBackground2,
                  )
                ],
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'First Name',
                hintText: 'Oluwafem',
                controller: _firstName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Last Name',
                hintText: 'Aramide',
                controller: _lastName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Email Address',
                hintText: 'aramide@gmail.com',
                controller: _email,
              ),
              verticalSpaceMedium,
              Row(
                children: [
                  CustomText(
                    'Gender',
                    fontSize: 14,
                    color: Styles.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              verticalSpaceTiny,
              GenderDropdown(),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Date of Birth',
                hintText: 'joshua',
                controller: _lastName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Home Address',
                hintText: 'Number 5, Lekii Aja Lagos',
                controller: _address,
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
              CustomButton(
                title: 'APPLY',
                fontSize: 14,
                height: 50,
                onPressed: () {},
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }
}
