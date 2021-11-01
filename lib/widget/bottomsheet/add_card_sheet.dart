
// import 'package:flutter/material.dart';
// import 'package:insure_marts/core/provider/card_provider.dart';
// import 'package:insure_marts/models/card_model.dart';
// import 'package:insure_marts/util/spacing.dart';
// import 'package:insure_marts/util/styles.dart';
// import 'package:insure_marts/util/util.dart';
// import 'package:insure_marts/widget/custom_button.dart';
// import 'package:insure_marts/widget/custom_icon.dart';
// import 'package:insure_marts/widget/custom_text_widget.dart';
// import 'package:insure_marts/widget/custom_textfield.dart';
// import 'package:provider/provider.dart';

// class AddCardSheet extends StatefulWidget {
//   @override
//   _AddCardSheetState createState() => _AddCardSheetState();
// }

// class _AddCardSheetState extends State<AddCardSheet> {
//   final fullName = TextEditingController();
//   final cardNumber1 = TextEditingController();
//   final cardNumber2 = TextEditingController();
//   final cardNumber3 = TextEditingController();
//   final cardNumber4 = TextEditingController();

//   final expDate = TextEditingController();
//   final cvv = TextEditingController();


//   // void onadd(){
//   //       CardModel card = CardModel(
//   //     cardHolderName: fullName.text, 
//   //     cardNumber: ,
//   //     cardnumber1: cardNumber1.text, 
//   //     cardnumber2: cardNumber2.text, 
//   //     cardnumber3: cardNumber3.text, 
//   //     cardnumber4: cardNumber4.text, 
//   //     exp: expDate.text, 
//   //     id: DateTime.now().toString(),
//   //   );
   
//   //   Provider.of<CardProvider>(context, listen: false).addCard(card);
//   //   // Provider.of<CardProvider>(context, listen: false).addItem(card);
  
//   //   Navigator.of(context).pop(true);
//   // }

// //   void cardInputMonthFormat(){
// //     var buffer = new StringBuffer();
// // for (int i = 0; i < expDate.text.length; i++) {
// //   buffer.write(expDate[i]);
// //   var nonZeroIndex = i + 1;
// //   if (nonZeroIndex % 2 == 0 && nonZeroIndex != expDate.text.length) {
// //     buffer.write('/');
// //   }
// // }

// //   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: SingleChildScrollView(
//               child: GestureDetector(
//           onTap: () => Keyboards.offKeyboard(context),
//           child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//           ),
//           padding: MediaQuery.of(context).viewInsets,
//           child: Padding(
//             padding: const EdgeInsets.all(25.0),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       CustomIcon(),
//                       CustomText(
//                         'Add New Card',
//                         fontSize: 14,
//                         color: Styles.colorBlack,
//                       ),
//                       Container(
//                         width: 32,
//                       ),
//                     ],
//                   ),
//                   verticalSpaceMedium,
//                   CustomTextField(
//                     title: 'Name on Card',
//                     hintText: 'Full name on card',
//                     controller: fullName,
                   
//                     // validator: (value) =>
//                   ),
//                   verticalSpaceMedium,
//                    CustomText(
//                         'Card Number in four-digit each',
//                         fontSize: 16,
//                         color: Styles.colorBlack,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       verticalSpaceMedium,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                                             child: CustomTextField(
                                              
//                           title: '1st',
//                            hintText: '****',
//                           controller: cardNumber1,
//                            inputAction: TextInputAction.next,
//                           onChanged: (_)=> cardNumber1.text.length == 4 ? FocusScope.of(context).nextFocus() : null
//                           // validator: (value) => ,
//                         ),
//                       ),
//                       horizontalSpaceTiny,
//                         Expanded(
//                                             child: CustomTextField(
//                           title: '2nd',
//                           hintText: '****',
//                           controller: cardNumber2,
//                            inputAction: TextInputAction.next,
//                           onChanged: (_)=> cardNumber2.text.length == 4 ? FocusScope.of(context).nextFocus() : null
//                           // validator: (value) => 
//                         )
//                       ),
//                       horizontalSpaceTiny,

//                        Expanded(
//                                             child: CustomTextField(
//                           title: '3rd',
//                           hintText: '****',
//                           controller: cardNumber3,
//                            inputAction: TextInputAction.next,
//                           onChanged: (_)=> cardNumber3.text.length == 4 ? FocusScope.of(context).nextFocus() : null


//                           // validator: (value) => ,
//                         ),
//                       ),
//                       horizontalSpaceTiny,

//                        Expanded(
//                                             child: CustomTextField(
//                           title: '4th',
//                           hintText: '****',
//                           controller: cardNumber4,
//                           inputAction: TextInputAction.next,
//                           onChanged: (_)=> cardNumber4.text.length == 4 ? FocusScope.of(context).nextFocus() : null

//                           // validator: (value) => ,
//                         ),
//                       ),
//                     ],
//                   ),
//                   verticalSpaceMedium,
//                   Row(
//                     children: [
//                       Expanded(
//                         child: CustomTextField(
//                           title: 'Expiry date',
//                           hintText: 'MM/YY',
//                           controller: expDate,
//                           inputAction: TextInputAction.done,
//                           onChanged: (_)=> expDate.text.length == 4 ? FocusScope.of(context).nextFocus() : null
//                           // validator: (value) => ,
//                         ),
//                       ),
//                       horizontalSpaceMedium,
//                       horizontalSpaceMedium,
//                       horizontalSpaceMedium,
//                       horizontalSpaceMedium,
//                       horizontalSpaceMedium,


                   
//                     ],
//                   ),
//                   verticalSpaceMedium,
//                   verticalSpaceTiny,
//                   CustomButton(
//                     title: 'APPLY',
//                     fontSize: 12,
//                     height: 50,
//                     buttonColor: Styles.appBackground1,
//                     onPressed: () {
//                       onadd();
//                       Navigator.of(context);
//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) => CarUploadScreen5()));
//                     },
//                   ),
//                 ],
//             ),
//           ),
//         ),
//               ),
//       ),
//     );
//   }
// }
