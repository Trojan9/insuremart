import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/ui/insurance/insurance_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/claim_indicator.dart';
import 'package:insure_marts/widget/custom_button5.dart';
import 'package:insure_marts/widget/dropdown/insurance_type.dart';
import 'package:insure_marts/widget/size_calculator.dart';

import 'claim_appbar.dart';

class ClaimScreen extends StatefulWidget {
  const ClaimScreen({Key key}) : super(key: key);

  @override
  _ClaimScreenState createState() => _ClaimScreenState();
}

class _ClaimScreenState extends State<ClaimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: ClaimAppBar(
          title: 'Claims',
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
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
                      Text('Claim #2452637', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Styles.colorBlack
                      ),),
                      SizedBox(height: 16,),
                      Text('Claim Status', style: TextStyle(
                        fontSize: 12,
                        color: Styles.colorDeepGrey,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 4,),
                      ClaimIndicator(
                        indicatorwidth: 0.20,
                        forwardOntap: () {
                        },
                      ),
                      SizedBox(height: 4,),
                      Text('Under Review and Adjustment', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Styles.colorDeepGreen
                      ),),
                      SizedBox(height: 16,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Vehicle make and model', style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Text('Ford Focus', style: TextStyle(
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
                            Text('Date Of Incident', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Row(
                              children: [

                                Text('Leadway Assurance Plc', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Claim Description', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At sed venenatis et vel magna.', style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Styles.colorBlack
                                  ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24,),

                      Row(
                        children: [

                            Container(
                              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit , color: Styles.colorGrey,),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete , color: Styles.colorGrey,),
                              ),
                            ),

                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
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
                      Text('Claim #2452637', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Styles.colorBlack
                      ),),
                      SizedBox(height: 16,),
                      Text('Claim Status', style: TextStyle(
                          fontSize: 12,
                          color: Styles.colorDeepGrey,
                          fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 4,),
                      ClaimIndicator(
                        indicatorwidth: 0.20,
                        indicatorcolor: Styles.colorRed2,
                        forwardOntap: () {
                        },
                      ),
                      SizedBox(height: 4,),
                      Text('More Info Needed', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Styles.colorRed2
                      ),),
                      SizedBox(height: 16,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Vehicle make and model', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Text('Ford Focus', style: TextStyle(
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
                            Text('Date Of Incident', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Row(
                              children: [

                                Text('Leadway Assurance Plc', style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Styles.colorBlack
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Claim Description', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Styles.colorGrey
                            ),),
                            SizedBox(height: 4,),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At sed venenatis et vel magna.', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Styles.colorBlack
                            ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24,),

                      Row(
                        children: [

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.edit , color: Styles.colorGrey,),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.delete , color: Styles.colorGrey,),
                            ),
                          ),

                        ],
                      )

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
