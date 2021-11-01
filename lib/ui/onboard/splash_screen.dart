import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_marts/core/view_model/startup_vm.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/size_calculator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   

  @override
  Widget build(BuildContext context) {
    return BaseView<StartUpViewModel>(
      onModelReady: (StartUpViewModel model) =>  {}, // model.isLoggedIn(),
      builder: (_, StartUpViewModel model, __) => Scaffold(
          body:   Container(
        height: screenHeight(context),
          width: screenWidth(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Styles.appBackground1, Styles.appBackground2])
  ),

          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                      'images/logo.png',
                      width: screenAwareSize(93, context, width: true),
                       
                    ),
            ],
          )
      ),
          
          ),
    );
  }
}
