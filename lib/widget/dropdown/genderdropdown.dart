import 'package:flutter/material.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String _selectedState;
  List<String> _state = [
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      widget: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          hint: CustomText(
            'Select Gender',
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
