import 'package:flutter/material.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/ui/car_upload/car_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:provider/provider.dart';

class ConnectSocialsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<ToggleData>(context, listen: false).initialdata();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CarAppBar(
            title: 'Connect Socials',
          ),
        ),
        body: Consumer<ToggleData>(
          builder: (_, choose, child) => Container(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Styles.colorWhite,
              child: ListView(
                children: [
                  verticalSpaceMedium,
                  ConnectContainer(
                      image: 'images/google2.png',
                      title: 'Google',
                      backgroundColor: choose.googleconnected
                          ? Styles.colorLightLemon
                          : Styles.colorBoxBackground,
                      borderColor: choose.googleconnected
                          ? Styles.colorLightgreen
                          : Styles.colorBoxBorder,
                      status: choose.googleconnected
                          ? 'Connected'
                          : 'Not connected',
                      onPressesd: () {
                        choose.togglegoogle();
                        choose.googleconnected ? print('true') : print('fasle');
                      }),
                  ConnectContainer(
                      image: 'images/facebook3.png',
                      backgroundColor: choose.facebookconnected
                          ? Styles.colorLightLemon
                          : Styles.colorBoxBackground,
                      borderColor: choose.facebookconnected
                          ? Styles.colorLightgreen
                          : Styles.colorBoxBorder,
                      title: 'Facebook',
                      status: choose.facebookconnected
                          ? 'Connected'
                          : 'Not connected',
                      onPressesd: () {
                        choose.tooglefacebook();
                        choose.facebookconnected
                            ? print('true')
                            : print('fasle');
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}

class ConnectContainer extends StatelessWidget {
  final String image, status, title;
  final Color backgroundColor, borderColor;
  final Function onPressesd;

  const ConnectContainer({
    Key key,
    this.image,
    this.title,
    this.status,
    this.onPressesd,
    this.backgroundColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Consumer<ToggleData>(
        builder: (_, choose, child) => Container(
          child: CustomContainer(
            onPressed: onPressesd,
            containerColor: backgroundColor,
            borderColor: borderColor,
            widget: Row(
              children: [
                Image.asset(image),
                horizontalSpaceSmall,
                CustomText(
                  title,
                  fontSize: 14,
                  color: Styles.colorBlack,
                ),
                Spacer(),
                CustomText(
                  status,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ),
      ),
      verticalSpaceMedium,
    ]);
  }
}
