import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/ui/notification/notification_appbar.dart';
import 'package:insure_marts/widget/custom_button4.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: NotificationsAppBar(
            title: 'Notification',
          ),
        ),
        body: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border:
            Border.all(color: Styles.colorGrey.withOpacity(0.4), width: 0.5),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        children: [
          // Row(
          //   children: [
          //     CustomText(
          //       'Sorry you do not have any claim yet',
          //       fontSize: 16,
          //       // leftMargin: 64,
          //       // color: textColor ?? Styles.appBackground2,
          //       fontWeight: FontWeight.bold,
          //     )
          //   ],
          // ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Flexible(
                    child: Column(

                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          child: Icon(Icons.notifications, size: 32, color: Styles.colorBlueNew, ),
                        ),
                        SizedBox(height: 32,),
                        SizedBox(height: 8,),
                        SizedBox(height: 32,),
                        SizedBox(height: 32,)

                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your claim has been approved', textAlign: TextAlign.left, style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Styles.colorBlueNew,
                            ),),
                            SizedBox(height: 8,),
                            Text('Notification body Pellentesque lobortis quam eget faucibus ultrices molestie.', style: TextStyle(
                              color: Colors.black,
                              fontSize: 14
                            ),),
                            SizedBox(height: 24,),
                            CustomButton(
                              title: 'VIEW CLAIM',
                              fontSize: 14,
                              height: 40,
                              buttonColor: Styles.appBackground2,
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Column(

                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                          child: Icon(Icons.notifications, size: 32, color: Styles.colorBlueNew, ),
                        ),
                        SizedBox(height: 32,),
                        SizedBox(height: 8,),
                        SizedBox(height: 32,),
                        SizedBox(height: 32,)

                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('You have an unread message', textAlign: TextAlign.left, style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Styles.colorBlueNew,
                            ),),
                            SizedBox(height: 8,),
                            Text('Notification body Pellentesque lobortis quam eget faucibus ultrices molestie.', style: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),),
                            SizedBox(height: 24,),
                            CustomButton(
                              title: 'VIEW MESSAGE',
                              fontSize: 14,
                              height: 40,
                              buttonColor: Styles.appBackground2,
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
