// import 'package:flutter/material.dart';
// import 'package:insure_marts/util/spacing.dart';
// import 'package:insure_marts/util/styles.dart';
// import 'package:insure_marts/util/util.dart';
// import 'package:insure_marts/widget/custom_text_widget.dart';
// import 'package:insure_marts/widget/custom_textspan_widget.dart';
// import 'package:insure_marts/widget/login_otp.dart';
// import 'package:insure_marts/widget/size_calculator.dart';




// class OtpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Keyboards.offKeyboard(context),
//           child: Scaffold(
//         backgroundColor: Styles.appBackground,
//         body: SafeArea(
//                 child: Container(
//                   // margin: EdgeInsets.only(top:10),
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20.0),
//               topLeft: Radius.circular(20.0),),
//               color: Styles.colorWhite
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 verticalSpaceMedium,
//                 Row(
//                   children: [
//                     CustomText('Verify OTP', fontSize: 18, fontWeight: FontWeight.bold,),
//                     Spacer(),
//                     CustomText('Step 2 of 4', fontSize: 12, color: Styles.colorLightPurple,)

//                   ],
//                 ),
//                 verticalSpaceMedium,
//                 CustomText('We have sent an OPT to your mobile number', color: Styles.colorLughtBlue, fontSize: 14,),
                
//                  verticalSpaceTiny,
//                   RichText(
//                 textAlign: TextAlign.center,
//                 text: customTextSpan(
//                     text: '08062835641 ',
//                     context: context,
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     color: Styles.colorLughtBlue,
//                     children: <TextSpan>[
//                       customTextSpan(
//                           text: 'Change',
//                           context: context,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Styles.colorLemon,
//                           onTap: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));

//                           }
//                           // locator<NavigationService>()
//                           //     .navigateToReplacing(OnboardView),
//                           ),
//                     ]),
//               ),
//               verticalSpaceLarge,
//               MobileOtpSheet(),
//               SizedBox(
//                 height: screenAwareSize(250, context),
//               ),
//            CustomText('Didnt receive the code', color: Styles.colorLughtBlue, fontSize: 14,),
//            CustomText('Resend code', color: Styles.colorLemon, topMargin: 5, fontSize: 14,),


//               ],
//             ),
//           ),
//         ),
        
//       ),
//     );
//   }
// }