import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

import '../size_calculator.dart';

class CoverTypeDropdown extends StatefulWidget {
  @override
  _CoverTypeDropdownState createState() => _CoverTypeDropdownState();
}

class _CoverTypeDropdownState extends State<CoverTypeDropdown> {
  String _selectedState;
  List<String> _state = [
    '2 months',
    '3 months',
    '4 months',
    '6 months',
    '9 months',
    '12 months',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
            child: Text('Peroid of Insurance', style: TextStyle(
                color: Styles.colorBlack2,
                fontSize: screenAwareSize(14, context, width: true),
                fontFamily: 'Brandon',
                fontWeight: FontWeight.w700
            ),
            ),
          ),

          CustomContainer(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            widget: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                hint: CustomText(
                  'Select Duration',
                  fontSize: 12,
                ),
                value:
                    _selectedState, // A global variable used to keep track of the selection
                items: _state.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (selectedItem) => setState(
                  () => _selectedState = selectedItem,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
