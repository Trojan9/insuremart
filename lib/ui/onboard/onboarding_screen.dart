import 'package:flutter/material.dart';
import 'package:insure_marts/ui/auth/login_screen.dart';
import 'package:insure_marts/ui/onboard/splash_content.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button3.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnboardingScreen1 extends StatefulWidget {
  @override
  _OnboardingScreen1State createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  int _currentpage = 0;
  PageController _controller = PageController();
  _onchanged(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              stops: [0.2, 0.5],
              end: Alignment.bottomCenter,
              colors: [Styles.appBackground1, Styles.appBackground2],
        )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 60, bottom: 31, right: 20),
                    child: CustomText(
                      'Skip',
                      color: Styles.colorLightgreen,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenAwareSize(10, context),
            ),
            Container(
              height: screenAwareSize(520, context),
              child: PageView.builder(
                  itemCount: body.length,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onchanged,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return Container(
                        height: screenHeight(context),
                        width: screenWidth(context),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                body[index].image,
                                width: screenAwareSize(234.18, context,
                                    width: true),
                                height: screenAwareSize(289.49, context),
                              ),
                            ),
                            verticalSpaceLarge,
                            CustomText(
                              body[index].title1,
                              fontSize: 24,
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                              bottomMargin: 4.0,

                            ),
                            verticalSpaceMedium,
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                              child: CustomText(body[index].description1,
                                  fontSize: 14,
                                  color: Colors.white,
                                  letterSpacing: 1.5),
                            ),

                          ],
                        ));
                  }),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(body.length, (int index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 5,
                          width: (index == _currentpage) ? 10 : 5,
                          margin:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentpage)
                                  ? Colors.white
                                  : Colors.grey),
                        );
                      }))
                ],
              ),
            ),
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                title: (_currentpage == (body.length - 1))
                    ? 'Get Started'.toUpperCase()
                    : 'Next'.toUpperCase(),
                textColor: Styles.appBackground2,
                buttonColor: Colors.white,
                width: double.infinity,
                height: 50,
                fontSize: 15,
                onPressed: () {
                  (_currentpage == (body.length - 1))
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))
                      : _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
