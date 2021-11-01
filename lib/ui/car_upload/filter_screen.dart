import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/policy_term_container.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Filter',
        ),
      ),
      body: Container(
        color: Styles.colorWhite,
        child: ListView(
          children: [
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Styles.colorGrey.withOpacity(0.4), width: 0.5),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              'Price',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        Image.asset(
                          'images/control.png',
                          width: double.infinity,
                        ),
                        verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomContainer(
                              borderWidth: 1.0,
                              height: screenAwareSize(50, context),
                              width:
                                  screenAwareSize(120, context, width: false),
                              borderColor: Styles.colorGrey.withOpacity(0.5),
                              containerColor:
                                  Styles.colorGrey.withOpacity(0.09),
                              widget: Row(
                                children: [
                                  CustomText(
                                    '#200',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            ),
                            horizontalSpaceSmall,
                            CustomContainer(
                              borderWidth: 1.0,
                              height: screenAwareSize(50, context),
                              width:
                                  screenAwareSize(120, context, width: false),
                              borderColor: Styles.colorGrey.withOpacity(0.5),
                              containerColor:
                                  Styles.colorGrey.withOpacity(0.09),
                              widget: Row(
                                children: [
                                  CustomText(
                                    '#1000',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceMedium,
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  CustomContainer(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      borderColor: Styles.colorGrey.withOpacity(0.5),
                      borderWidth: 0.5,
                      width: double.infinity,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Policy Term',
                            fontSize: 16,
                            color: Styles.colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                          verticalSpaceSmall,
                          verticalSpaceTiny,
                          ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return PolicyContainer(
                                    border: selectedIndex == index
                                        ? Border.all(
                                            color: Styles.colorLightBlue,
                                            width: 4)
                                        : Border.all(
                                            color: Styles.colorBlack
                                                .withOpacity(0.5),
                                            width: 1),
                                    dayColor: selectedIndex == index
                                        ? Styles.colorBlack
                                        : Styles.colorGrey,
                                    termColor: selectedIndex == index
                                        ? Styles.colorBlack
                                        : Styles.colorGrey,
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    });
                              })
                        ],
                      )),
                  verticalSpaceMedium,
                  CustomContainer(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      borderColor: Styles.colorGrey.withOpacity(0.5),
                      borderWidth: 0.5,
                      width: double.infinity,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Cover',
                            fontSize: 16,
                            color: Styles.colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                          verticalSpaceSmall,
                          verticalSpaceTiny,
                          ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return PolicyContainer(
                                    border: selectedIndex == index
                                        ? Border.all(
                                            color: Styles.colorLightBlue,
                                            width: 4)
                                        : Border.all(
                                            color: Styles.colorBlack
                                                .withOpacity(0.5),
                                            width: 1),
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    });
                              }),
                        ],
                      )),
                  verticalSpaceMedium,
                  CustomButton(
                    title: 'Apply',
                    fontSize: 12,
                    height: 50,
                    buttonColor: Styles.appBackground1,
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CarUploadScreen5()));
                    },
                  ),
                  verticalSpaceMedium,
                  verticalSpaceSmall
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
