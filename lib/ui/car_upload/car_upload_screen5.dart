import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen6.dart';
import 'package:insure_marts/ui/car_upload/filter_screen.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/bottomsheet/setup_profile.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/insurance_container.dart';
import 'package:insure_marts/widget/size_calculator.dart';
import 'package:provider/provider.dart';

class CarUploadScreen5 extends StatefulWidget {
  @override
  _CarUploadScreen5State createState() => _CarUploadScreen5State();
}

class _CarUploadScreen5State extends State<CarUploadScreen5> {
  // bool selected = true;

  int selected = 0;

  bool certificate = false;
  bool package = false;
  bool benefit = false;
  bool about = false;

  @override
  Widget build(BuildContext context) {
    Provider.of<ToggleData>(context, listen: false).initialdata();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CarAppBar(
            title: 'New Car Insurance',
          ),
        ),
        body: Consumer<ToggleData>(
            builder: (_, choose, child) => Container(
                  child: Container(
                    color: Styles.colorWhite,
                    child: Column(children: [
                      verticalSpaceMedium,
                      CarUploadHeader(
                        rightDotcolor: Styles.colorDeepPink,
                        leftDotColor: Styles.colorDeepPink,
                        steps: 'step 5 0f 6',
                        title: 'Choose Insurance',
                        indicatorwidth: 0.90,
                        containerColor: Styles.colorLightPink,
                        indicatorcolor: Styles.colorDeepPink,
                        forwardOntap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CarUploadScreen6()));
                        },
                      ),
                      verticalSpaceSmall,
                      Expanded(
                        child: Container(
                          child: ListView(children: [
                            CustomContainer(
                              containerColor: Styles.colorLightPink,
                              borderColor: Styles.colorLightPink,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              widget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('images/leadassurrance.png')
                                ],
                              ),
                            ),
                            verticalSpaceMedium,
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  BuildAmount(
                                      title: 'Sum Insured', amount: '#195,800'),
                                  BuildAmount(
                                      title: 'Period of insurance',
                                      amount: '12 months'),
                                  BuildAmount(
                                      smallSpace: true,
                                      title: 'Basic Premium',
                                      amount: '#195,800'),
                                  Divider(
                                    color: Styles.colorGrey,
                                  ),
                                  verticalSpaceSmall,
                                  BuildAmount(
                                      title: 'Add-on',
                                      showAmount: false,
                                      smallSpace: true,
                                      amount: '#195,800'),
                                  BuildAmount(
                                      smallSpace: true,
                                      title: 'Excess buy back',
                                      titleColor: Styles.colorBlack,
                                      amount: '12 months'),
                                  BuildAmount(
                                      smallSpace: true,
                                      title: 'Flood Extension',
                                      titleColor: Styles.colorBlack,
                                      amount: '#195,800'),
                                  Divider(
                                    color: Styles.colorBlack,
                                  ),
                                  verticalSpaceSmall,
                                  BuildAmount(
                                      title: 'Discount', amount: '#1000'),
                                  BuildAmount(
                                      smallSpace: true,
                                      title: 'Promo',
                                      amount: '#195,800'),
                                  Divider(
                                    color: Styles.colorGrey,
                                  ),
                                  verticalSpaceSmall,
                                  BuildAmount(
                                      title: 'Total Amount',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      amountColor: Styles.colorDeepGreen,
                                      amount: '#231,800'),
                                  verticalSpaceSmall,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Styles.colordeepgrey,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Styles.colorGreyLight,
                                            blurRadius: 4),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Heading(
                                          onTap: () {
                                            setState(() {
                                              certificate = !certificate;
                                            });
                                          },
                                          title: 'Certificate & Policy',
                                        ),
                                        certificate
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'images/policy.png'),
                                                  horizontalSpaceSmall,
                                                  Image.asset(
                                                      'images/policy2.png'),
                                                ],
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: Styles.colordeepgrey,
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Styles.colorGreyLight,
                                              blurRadius: 4),
                                        ],
                                      ),
                                      child: Column(children: [
                                        Heading(
                                          title: 'Other Packages',
                                          onTap: () {
                                            setState(() {
                                              package = !package;
                                            });
                                          },
                                        ),
                                        package
                                            ? Container(
                                                padding: EdgeInsets.all(
                                                    screenAwareSize(
                                                        20, context)),
                                                decoration: BoxDecoration(
                                                    color: Styles.colorWhite,
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                          color: Styles
                                                              .colorGreyLight,
                                                          blurRadius: 4)
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      screenAwareSize(
                                                          8, context),
                                                    )),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: <Widget>[
                                                        OthersPackage(
                                                            title: 'Covers',
                                                            subtitle: '4 Cars'),
                                                        OthersPackage(
                                                            title:
                                                                'Period of insurance',
                                                            subtitle:
                                                                '24 Months')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                        height: screenAwareSize(
                                                            20, context)),
                                                    Row(
                                                      children: <Widget>[
                                                        OthersPackage(
                                                            title: 'Adds-on',
                                                            subtitle:
                                                                '4 Add-on'),
                                                        OthersPackage(
                                                            title: 'price',
                                                            subTitleColor: Styles
                                                                .colorDeepGreen,
                                                            subtitle:
                                                                '#195, 00')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                        height: screenAwareSize(
                                                            20, context)),
                                                    CustomButton(
                                                      height: 50,
                                                      title: 'SELECT THIS',
                                                      buttonColor:
                                                          Styles.colorDeepPink,
                                                      borderColor:
                                                          Styles.colorDeepPink,
                                                    ),
                                                    verticalSpaceMedium,
                                                    Container(
                                                      padding: EdgeInsets.all(
                                                          screenAwareSize(
                                                              20, context)),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Styles.colorWhite,
                                                          boxShadow: <
                                                              BoxShadow>[
                                                            BoxShadow(
                                                                color: Styles
                                                                    .colorGreyLight,
                                                                blurRadius: 4)
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            screenAwareSize(
                                                                8, context),
                                                          )),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: <Widget>[
                                                              OthersPackage(
                                                                  title:
                                                                      'Covers',
                                                                  subtitle:
                                                                      '4 Cars'),
                                                              OthersPackage(
                                                                  title:
                                                                      'Period of insurance',
                                                                  subtitle:
                                                                      '24 Months')
                                                            ],
                                                          ),
                                                          SizedBox(
                                                              height:
                                                                  screenAwareSize(
                                                                      20,
                                                                      context)),
                                                          Row(
                                                            children: <Widget>[
                                                              OthersPackage(
                                                                  title:
                                                                      'Adds-on',
                                                                  subtitle:
                                                                      '4 Add-on'),
                                                              OthersPackage(
                                                                  title:
                                                                      'price',
                                                                  subTitleColor:
                                                                      Styles
                                                                          .colorDeepGreen,
                                                                  subtitle:
                                                                      '#195, 00')
                                                            ],
                                                          ),
                                                          SizedBox(
                                                              height:
                                                                  screenAwareSize(
                                                                      20,
                                                                      context)),
                                                          CustomButton(
                                                            height: 50,
                                                            title:
                                                                'SELECT THIS',
                                                            buttonColor: Styles
                                                                .colorDeepPink,
                                                            borderColor: Styles
                                                                .colorDeepPink,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ))
                                            : SizedBox()
                                      ])),
                                  verticalSpaceMedium,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Styles.colordeepgrey,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Styles.colorGreyLight,
                                            blurRadius: 4),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Heading(
                                          title: 'Benefits',
                                          onTap: () {
                                            benefit = !benefit;
                                            setState(() {});
                                          },
                                        ),
                                        benefit
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  BenefitText(
                                                    number: '1',
                                                    title:
                                                        'Accidental damage to own vehicle',
                                                  ),
                                                  BenefitText(
                                                    number: '2',
                                                    title:
                                                        'Loss/damage to own vehicle by fire or theft',
                                                  ),
                                                  BenefitText(
                                                    number: '2',
                                                    title:
                                                        'Loss/damage to own vehicle by fire or theft',
                                                  ),
                                                  BenefitText(
                                                    number: '3',
                                                    title:
                                                        'Covers damage to another’s property nnnn up to N1 million naira',
                                                  ),
                                                  BenefitText(
                                                    number: '4',
                                                    title:
                                                        'Accidental total and permanent disability to the insured to a limit of ₦1,000,000.00',
                                                  ),
                                                  BenefitText(
                                                    number: '5',
                                                    title:
                                                        'We cover your medical expense including that of other vehicle’s passenger(s) to a limit of ₦100,000.00 in the event of a hospitalization due to accident',
                                                  ),
                                                ],
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Styles.colordeepgrey,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Styles.colorGreyLight,
                                            blurRadius: 4),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Heading(
                                          title: 'Abouts',
                                          onTap: () {
                                            about = !about;
                                            setState(() {});
                                          },
                                        ),
                                        about
                                            ? CustomText(
                                                'Our Comprehensive Motor Insurance provides the widest cover against fire, theft and other damages caused to your vehicle. It also covers death, bodily injury and damages to the vehicle or property of third parties caused by the insured vehicle(s)',
                                                textAlign: TextAlign.start,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Styles.colorBlack,
                                              )
                                            : selected == 0
                                                ? SizedBox()
                                                : SizedBox()
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  CustomButton(
                                    height: 50,
                                    title: 'CONTINUE',
                                    buttonColor: Styles.colorDeepPink,
                                    borderColor: Styles.colorDeepPink,
                                  ),
                                  verticalSpaceMedium
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                )));
  }
}

class OthersPackage extends StatelessWidget {
  final String title, subtitle;
  final subTitleColor;
  const OthersPackage({Key key, this.title, this.subTitleColor, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText(
                title,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Styles.colorGrey,
              ),
              CustomText(
                subtitle,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: subTitleColor ?? Styles.colorBlack,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String title;
  final icon;
  final Function onTap;
  const Heading({
    Key key,
    this.title,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                '$title',
                color: Styles.colorDeepPink,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              Spacer(),
              CustomIcon(
                icon: Icons.arrow_drop_down,
                color: Styles.colorDeepPink,
              )
            ],
          ),
          verticalSpaceSmall
        ],
      ),
    );
  }
}

class BenefitText extends StatelessWidget {
  final String number, title;
  const BenefitText({Key key, this.number, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          '$number.',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Styles.colorGrey,
        ),
        horizontalSpaceTiny,
        Expanded(
          child: CustomText(
            '$title',
            textAlign: TextAlign.start,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Styles.colorBlack,
          ),
        ),
      ],
    );
  }
}

class BuildAmount extends StatelessWidget {
  final bool showAmount;
  final String title, amount;
  final smallSpace;
  final titleColor, amountColor;
  final double fontSize;
  final fontWeight;
  const BuildAmount(
      {Key key,
      this.titleColor,
      this.fontSize,
      this.fontWeight,
      this.amountColor,
      this.showAmount = true,
      this.smallSpace = false,
      this.title,
      this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              '$title',
              fontSize: 12,
              color: titleColor ?? Styles.colorDeepPink,
            ),
            Spacer(),
            showAmount
                ? CustomText(
                    '$amount',
                    fontSize: fontSize ?? 12,
                    fontWeight: fontWeight ?? FontWeight.normal,
                    color: amountColor ?? Styles.colorBlack,
                  )
                : SizedBox(),
          ],
        ),
        smallSpace ? verticalSpaceSmall : verticalSpaceMedium
      ],
    );
  }
}
