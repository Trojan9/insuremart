import 'package:flutter/material.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen4.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button2.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';
import 'package:provider/provider.dart';

class CarUploadScreen3 extends StatelessWidget {
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
                color: Styles.colorWhite,
                child: Column(
                  children: [
                    CarUploadHeader(
                      steps: 'step 3 0f 6',
                      title: 'Choose Extensions',
                      indicatorwidth: 0.60,
                      forwardOntap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarUploadScreen4()));
                      },
                    ),
                    verticalSpaceMedium,
                    Expanded(
                      child: ListView(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              CustomContainer(
                                  text: 'Excess Buy Back (EBB)',
                                  onPressed: () {
                                    choose.togglecheck1();
                                  },
                                  borderColor: choose.ischecked1
                                      ? Styles.colorLightgreen
                                      : Styles.colorBoxBorder,
                                  containerColor: choose.ischecked1
                                      ? Styles.colorLightLemon
                                      : Styles.colorBoxBackground,
                                  checkboxColor: choose.ischecked1
                                      ? Styles.colorLightLemon
                                      : Styles.colorBlack.withOpacity(0.1),
                                  iconColor: choose.ischecked1
                                      ? Styles.appBackground2
                                      : Colors.transparent),
                              verticalSpaceMedium,
                              CustomContainer(
                                  text: 'Flood Extension',
                                  onPressed: () {
                                    choose.togglecheck2();
                                  },
                                  borderColor: choose.ischecked2
                                      ? Styles.colorLightgreen
                                      : Styles.colorBoxBorder,
                                  containerColor: choose.ischecked2
                                      ? Styles.colorLightLemon
                                      : Styles.colorBoxBackground,
                                  checkboxColor: choose.ischecked2
                                      ? Styles.colorLightLemon
                                      : Styles.colorBlack.withOpacity(0.1),
                                  iconColor: choose.ischecked2
                                      ? Styles.appBackground2
                                      : Colors.transparent),
                              verticalSpaceMedium,
                              CustomContainer(
                                  text: 'SRCC Exension',
                                  onPressed: () {
                                    choose.togglecheck3();
                                  },
                                  borderColor: choose.ischecked3
                                      ? Styles.colorLightgreen
                                      : Styles.colorBoxBorder,
                                  containerColor: choose.ischecked3
                                      ? Styles.colorLightLemon
                                      : Styles.colorBoxBackground,
                                  checkboxColor: choose.ischecked3
                                      ? Styles.colorLightLemon
                                      : Styles.colorBlack.withOpacity(0.1),
                                  iconColor: choose.ischecked3
                                      ? Styles.appBackground2
                                      : Colors.transparent),
                              verticalSpaceMedium,
                              CustomContainer(
                                  text:
                                      'Additional Third Party Property Damage',
                                  onPressed: () {
                                    choose.togglecheck4();
                                  },
                                  borderColor: choose.ischecked4
                                      ? Styles.colorLightgreen
                                      : Styles.colorBoxBorder,
                                  containerColor: choose.ischecked4
                                      ? Styles.colorLightLemon
                                      : Styles.colorBoxBackground,
                                  checkboxColor: choose.ischecked4
                                      ? Styles.colorLightLemon
                                      : Styles.colorBlack.withOpacity(0.1),
                                  iconColor: choose.ischecked4
                                      ? Styles.appBackground2
                                      : Colors.transparent),
                              verticalSpaceMedium,
                              CustomContainer(
                                  text: 'Personal Effects',
                                  onPressed: () {
                                    choose.togglecheck5();
                                  },
                                  borderColor: choose.ischecked5
                                      ? Styles.colorLightgreen
                                      : Styles.colorBoxBorder,
                                  containerColor: choose.ischecked5
                                      ? Styles.colorLightLemon
                                      : Styles.colorBoxBackground,
                                  checkboxColor: choose.ischecked5
                                      ? Styles.colorLightLemon
                                      : Styles.colorBlack.withOpacity(0.1),
                                  iconColor: choose.ischecked5
                                      ? Styles.appBackground2
                                      : Colors.transparent),
                              verticalSpaceMedium,
                              CustomButton(
                                title: 'CONTINUE',
                                fontSize: 12,
                                height: 50,
                                buttonColor: Styles.appBackground2,
                                onPressed: () {
                                  print(choose.ischecked4);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CarUploadScreen4()));
                                },
                              ),
                              verticalSpaceSmall,
                              CustomButton(
                                title: 'SAVE & CONTINUE LATER',
                                fontSize: 12,
                                height: 50,
                                textColor: Styles.appBackground2,
                                buttonColor: Styles.colorWhite,
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));
                                },
                              ),
                              SizedBox(height: 32,)
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
    );
  }
}
