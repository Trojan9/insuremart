import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function onPressed;

  CustomSwitch({this.value, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterSwitch(
          activeToggleColor: Styles.appBackground1,
          width: screenAwareSize(38, context, width: true),
          height: screenAwareSize(20, context),
          toggleSize: 20.0,
          value: value,
          padding: 2.0,
          onToggle: onPressed),
    );
  }
}
