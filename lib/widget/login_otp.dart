// import 'package:flutter/material.dart';
// import 'package:insure_marts/ui/auth/create_account.dart';
// import 'package:insure_marts/util/styles.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';





// class MobileOtpSheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return      Container(
//       width: 250,
//       child: PinCodeTextField(
//                 keyboardType: TextInputType.number,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 appContext: context,
//                 boxShadows: const <BoxShadow>[
//                   BoxShadow(
//                     offset: Offset(5, 5),
//                     color: Colors.black12,
//                     spreadRadius: 1,
//                     blurRadius: 10,
//                   )
//                 ],
//                 length: 4,
//                 enableActiveFill: true,
//                 textStyle: TextStyle(color: Styles.colorBlack, fontSize: 18),
//                 pinTheme: PinTheme(
//                   selectedFillColor: Colors.white,
                  
//                   shape: PinCodeFieldShape.box,
//                   borderRadius: BorderRadius.circular(10),
//                   fieldHeight: 50,
//                   fieldWidth: 50,
//                   activeFillColor: Colors.white,
//                   inactiveFillColor: Colors.white,
//                   inactiveColor: Colors.white,
//                   borderWidth: 1,
//                   activeColor: Styles.appBackground,
//                   selectedColor: Styles.appBackground,
//                 ),
//                 onChanged: (String value) {
//                   if (value.length == 4) {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));

//                     // locator<NavigationService>().navigateToReplacing(MainLayoutView);
//                   }
//                 },
//       ),
//     );
//   }
// }


