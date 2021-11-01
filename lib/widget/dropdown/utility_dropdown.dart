import 'package:flutter/material.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class UtilityDropDown extends StatefulWidget {
  @override
  _UtilityDropDownState createState() => _UtilityDropDownState();
}

class _UtilityDropDownState extends State<UtilityDropDown> {
  String _selectedState;
  List<String> _state = ['Nation Identity Card', 'Driver Card', 'School Card'];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      widget: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          hint: CustomText(
            'Utility Bill Type',
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
    );
  }
}
