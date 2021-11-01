import 'package:credit_card/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:insure_marts/core/provider/card_provider.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/bottomsheet/add_card_sheet2.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dot_circle.dart';
import 'package:insure_marts/widget/empty_card.dart';
import 'package:provider/provider.dart';

class MyCardScreen extends StatefulWidget {
  @override
  _MyCardScreenState createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  void onRemove(CardModel card) {
    Provider.of<CardProvider>(context, listen: false).removeCard(card);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CarAppBar(
          title: 'Connect Socials',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: ListView(
          children: [
            verticalSpaceMedium,
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.0)),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (_) {
                      return AddcardSheet2();
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomIcon(
                    icon: Icons.add,
                    color: Styles.appBackground1,
                  ),
                  CustomText(
                    'Add New Card',
                    fontSize: 13,
                    color: Styles.appBackground1,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
            ),
            verticalSpaceMedium,
            Provider.of<CardProvider>(context).getCardLength() > 0
                ? Consumer<CardProvider>(
                    builder: (_, choose, child) => Container(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: choose.cards.length,
                              itemBuilder: (context, index) {
                                return CustomContainer(
                                  borderRadius: BorderRadius.circular(10),
                                  borderColor: Colors.transparent,
                                  containerColor: Color(0xfff1f1f1),
                                  margin: EdgeInsets.only(bottom: 20),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 20),
                                  widget: Column(
                                    children: [
                                      CreditCardWidget(
                                        width: double.infinity,
                                        //  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                                        //  margin: EdgeInsets.only(bottom: 25),
                                        cardNumber:
                                            choose.cards[index].cardNumber,
                                        expiryDate: choose.cards[index].exp,
                                        cardHolderName:
                                            choose.cards[index].cardHolderName,
                                        cvvCode: choose.cards[index].cvv,
                                        showBackView: false,
                                        // id: DateTime.now().toString(),
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                              onTap: () {},
                                              child: CustomText(
                                                'Edit Card',
                                                fontSize: 14,
                                                color: Styles.appBackground1,
                                              )),
                                          horizontalSpaceMedium,
                                          InkWell(
                                              onTap: () {
                                                print(choose.cards[index].id
                                                    .toString());
                                                print(choose.cards.length);
                                                onRemove(choose.cards[index]);
                                                print(choose.cards.length);
                                              },
                                              child: CustomText(
                                                'Delete Card',
                                                fontSize: 14,
                                                color: Styles.colorRed,
                                              )),
                                          Spacer(),
                                          DotCircle(
                                            backgroundColor: Colors.grey[300],
                                            height: 25.0,
                                            width: 25.0,
                                            widget: Icon(
                                              Icons.check,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ))
                : Center(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: EmptyCard(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                        )),
                  ),
          ],
        ),
      ),
    );
  }
}
