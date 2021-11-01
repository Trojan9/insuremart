import 'package:flutter/material.dart';
import 'package:insure_marts/ui/auth/forgot_password_screen2.dart';
import 'package:insure_marts/ui/auth/login_screen.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button2.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/custom_textspan_widget.dart';




class ForgotPasswordScreen extends StatelessWidget {
    final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Styles.colorWhite,
          title: CustomText('Forgot password', fontSize: 18, color: Styles.colorBlack, ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios, color: Styles.colorBlack, size: 20,)
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
            Column(
              children: [
                CustomTextField(
                hintText: 'Email Address',
                title: 'Email',
                maxLines: 1,
                controller: _email,
                validator: (val) => Utils.validateEmail(val)
                ),
                 verticalSpaceMedium,
              CustomButton(
               title: 'CONTINUE',
               fontSize: 14,
               height: 50,
               buttonColor: Styles.appBackground2,
               onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen2()));

               },
               
             ),
              ],
            ),
           
                          Column(
                            children: [
                              RichText(
              textAlign: TextAlign.center,
              text: customTextSpan(
                  text: 'Remembered? ',
                  context: context,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Styles.colorBlack,
                  children: <TextSpan>[
                    customTextSpan(
                        text: 'Login',
                        context: context,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Styles.colorNormalBlue,
                        onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                        }
                        // locator<NavigationService>()
                        //     .navigateToReplacing(OnboardView),
                        ),
                  

           ],
          ),
        ),
        verticalSpaceMedium
                            ],
                          ),
            ],
          ),
        )
          )
        );
  }
}