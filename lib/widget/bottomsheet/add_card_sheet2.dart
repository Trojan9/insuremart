import 'package:credit_card/credit_card_form.dart';
import 'package:credit_card/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:insure_marts/core/provider/card_provider.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:provider/provider.dart';



class AddcardSheet2 extends StatefulWidget {
  @override
  _AddcardSheet2State createState() => _AddcardSheet2State();
}

class _AddcardSheet2State extends State<AddcardSheet2> {

    String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;


    void onadd(){
        CardModel card = CardModel(
      cardHolderName: cardHolderName,
      cardNumber: cardNumber,
      exp: expiryDate,
      cvv: cvvCode,
      id: DateTime.now().toString(),
    );

    print(cardHolderName);
    print(cardNumber);
    print(expiryDate);
    print(cvvCode);
    Provider.of<CardProvider>(context, listen: false).addCard(card);
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        child:  Column(
          children: [
            CreditCardForm(
                     onCreditCardModelChange: onCreditCardModelChange,
                      // cardNumberValidator: (val) =>,
                      
                    ),

                      verticalSpaceMedium,
                Container(
                  padding: EdgeInsets.all(20),
                  child: CustomButton(
                    title: 'Check',
                    onPressed: (){
                      onadd();
                    },
                  ),
                )
          ],
        ),
      ),
    );
  }
  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}