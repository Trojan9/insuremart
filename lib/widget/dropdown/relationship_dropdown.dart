// import 'package:flutter/material.dart';
// import 'package:insure_marts/core/provider/all_toggle_provider.dart';
// import 'package:insure_marts/widget/custom_container.dart';
// import 'package:insure_marts/widget/custom_text_widget.dart';
// import 'package:provider/provider.dart';

// class RelationShipDropDown extends StatelessWidget {
  
//   final  List<String> _state = [
//     'Male',
//     'Female',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AllToggleData>(
//       builder: (_, choose, child) => Container(
//         child: CustomContainer(
//           padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//           widget: DropdownButtonHideUnderline(
//             child: DropdownButton(
//                 isExpanded: true,
//                 hint: CustomText(
//                   'Select Gender',
//                   fontSize: 12,
//                 ),
//                 // value: choose.selectedState,
//                 // A global variable used to keep track of the selection
//                 items: _state.map((item) {
//                   return DropdownMenuItem(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (selectedItem) {
//                   choose.selectedState = selectedItem;
//                 }),
//           ),
//         ),
//       ),
//     );
//   }
// }
