import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';




class MyCard extends StatelessWidget {
  final width;
  final padding;
  final margin;
  final String id;
  final Function onTap;
  final String cardHolderName;
  final String cardNumber;
  //  cardNumber2, cardNumber3, cardNumber4;
  final String exp;
  final String cvv;

  final CardModel cardModel;
  
  const MyCard({
    Key key, this.width, this.cvv, this.id, this.onTap, this.cardModel, this.exp, this.cardHolderName, this.padding, this.margin, 
    this.cardNumber,
    //  this.cardNumber2, this.cardNumber3, this.cardNumber4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
           Container(
           width: width ?? screenAwareSize(300, context, width: true),
           margin: margin ?? EdgeInsets.only(right: 20),
           padding: padding ?? EdgeInsets.fromLTRB(20, 30, 20, 0),
           decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 boxShadow: const <BoxShadow>[
                   BoxShadow(
                     offset: Offset(-7, 5),
                     color: Color(0xff808080),
                     spreadRadius: -4,
                     blurRadius: 10,
                   ),
                 ],
                 gradient: LinearGradient(
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     colors: [Styles.coloratm1, Styles.coloratm2])),
           child: Column(
             children: [
                 Row(
                   children: [
                     InkWell(
                       onTap: onTap,
                       child: Image.asset('images/visa.png')
                       )
                       ,
                   ],
                 ),
                 verticalSpaceMedium,
                 verticalSpaceSmall,
                  CustomText(
                        "$cardNumber",
                       fontSize: 14,
                       color: Styles.colorWhite,
                       letterSpacing: 1.0,
                     ),
                //  Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //    children: [
                //      CustomText(
                //         "$cardNumber1",
                //        fontSize: 14,
                //        color: Styles.colorWhite,
                //        letterSpacing: 1.0,
                //      ),
                //      CustomText(
                //       "$cardNumber2",
                //        fontSize: 14,
                //        color: Styles.colorWhite,
                //        letterSpacing: 1.0,

                //      ),
                //      CustomText(
                //       "$cardNumber3",
                //        fontSize: 14,
                //        color: Styles.colorWhite,
                //        letterSpacing: 1.0,

                //      ),
                //      CustomText(
                //        "$cardNumber4",
                //        fontSize: 14,
                //        color: Styles.colorWhite,
                //        letterSpacing: 1.0,
                       
                //      ),
                //    ],
                //  ),
                 verticalSpaceMedium,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         CustomText(
                           'Card Holder',
                           fontSize: 13,
                           color: Styles.colorWhite,
                           bottomMargin: 3,
                         ),
                         CustomText(
                            "$cardHolderName",
                           fontSize: 16,
                           color: Styles.colorWhite,
                           fontWeight: FontWeight.bold,
                           letterSpacing: 1.0,

                         ),
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         CustomText(
                           'Expire',
                           fontSize: 13,
                           color: Styles.colorWhite,
                           bottomMargin: 3,
                         ),
                         CustomText(
                           "$exp",
                           fontSize: 13,
                           color: Styles.colorWhite,
                         ),
                       ],
                     ),
                   ],
                 ),
             ],
           ),
    );
  }
}