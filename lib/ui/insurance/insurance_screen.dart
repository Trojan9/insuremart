import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/ui/insurance/insurance_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button5.dart';
import 'package:insure_marts/widget/dropdown/insurance_type.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class InsuranceScreen extends StatefulWidget {
  const InsuranceScreen({Key key}) : super(key: key);

  @override
  _InsuranceScreenState createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: InsuranceAppBar(
          title: 'My Insurance',
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(margin: EdgeInsets.fromLTRB(16, 24, 16, 16),child: InsuaranceTypeDropdown()),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: BoxDecoration(
                  color: Styles.colorBackGrey,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/toyota_logo.png',
                        height: screenAwareSize(70, context),
                        width: screenAwareSize(70, context, width: true),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Car Make', style: TextStyle(
                                 fontWeight: FontWeight.w700,
                                 color: Styles.colorGrey
                               ),),
                               SizedBox(height: 4,),
                               Text('Toyota',style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   color: Styles.colorNormalBlue
                               ), )
                             ],
                           ),
                         ),
                          horizontalSpaceMedium,
                          horizontalSpaceSmall,
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Car Model', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('Rav4',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorNormalBlue
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Policy', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Text('Joshua Hawkins’s Car Insurance', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.appBackground2
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 28,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Provider', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Image.asset(
                                  'images/leadway.png',
                                  height: screenAwareSize(20, context),
                                  width: screenAwareSize(20, context, width: true),
                                ),
                                horizontalSpaceSmall,
                                Text('Leadway Assurance Plc', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sum Insured', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('₦23,181,700.00',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ), )
                              ],
                            ),
                          ),
                          horizontalSpaceMedium,
                          horizontalSpaceSmall,
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expiry Date', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('28-02-2022',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Registration N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ), )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chassis N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Engine N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 24,),
                      Center(
                        child: Row(
                          children: [
                            CustomButton(
                              title: 'MORE DETAILS',
                              fontSize: 10,
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.35,
                              textColor: Styles.appBackground2,
                              buttonColor: Color(0xffC4C4C4),
                              onPressed: (){
                              },),
                            horizontalSpaceMedium,
                            CustomButton(
                              title: 'REPORT CLAIM',
                              fontSize: 10,
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.35,
                              textColor: Styles.appBackground2,
                              buttonColor: Color(0xffC4C4C4),
                              onPressed: (){
                              },)
                          ],
                        ),
                      ),

                      SizedBox(height: 24,),

                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              decoration: BoxDecoration(
                  color: Styles.colorBackGrey,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/toyota_logo.png',
                        height: screenAwareSize(70, context),
                        width: screenAwareSize(70, context, width: true),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Car Make', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('Toyota',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorNormalBlue
                                ), )
                              ],
                            ),
                          ),
                          horizontalSpaceMedium,
                          horizontalSpaceSmall,
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Car Model', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('Rav4',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorNormalBlue
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Policy', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Text('Joshua Hawkins’s Car Insurance', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.appBackground2
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 28,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Provider', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Image.asset(
                                  'images/leadway.png',
                                  height: screenAwareSize(20, context),
                                  width: screenAwareSize(20, context, width: true),
                                ),
                                horizontalSpaceSmall,
                                Text('Leadway Assurance Plc', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sum Insured', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('₦23,181,700.00',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ), )
                              ],
                            ),
                          ),
                          horizontalSpaceMedium,
                          horizontalSpaceSmall,
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expiry Date', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('28-02-2022',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 24, 16),
                            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Registration N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ), )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chassis N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Engine N0.', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorGrey
                                ),),
                                SizedBox(height: 4,),
                                Text('*****6553',style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 24,),
                      Center(
                        child: Row(
                          children: [
                            CustomButton(
                              title: 'MORE DETAILS',
                              fontSize: 10,
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.35,
                              textColor: Styles.appBackground2,
                              buttonColor: Color(0xffC4C4C4),
                              onPressed: (){
                              },),
                            horizontalSpaceMedium,
                            CustomButton(
                              title: 'REPORT CLAIM',
                              fontSize: 10,
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.35,
                              textColor: Styles.appBackground2,
                              buttonColor: Color(0xffC4C4C4),
                              onPressed: (){
                              },)
                          ],
                        ),
                      ),

                      SizedBox(height: 24,),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
