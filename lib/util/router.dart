import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/ui/auth/login_screen.dart';
import 'package:insure_marts/ui/auth/signup_screen.dart';
import 'package:insure_marts/ui/navigation_screen.dart';
import 'package:insure_marts/ui/onboard/splash_screen.dart';
import 'package:insure_marts/util/constant/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case SplashView:
      return _getPageRoute(
        routeName: settings.name,
        view:  SplashScreen(),
      );
    case LoginView:
      return _getPageRoute(
        routeName: settings.name,
        view:  LoginScreen(),
      );

    // case OtpView:
    //   return _getPageRoute(
    //     routeName: settings.name,
    //     view: const OtpScreen(),
    //     args: settings.arguments,
    //   );
    case SignupView:
      return _getPageRoute(
        routeName: settings.name,
        view:  SignupScreen(),
        args: settings.arguments,
      );
    case HomeScreenView:
      return _getPageRoute(
        routeName: settings.name,
        view:  NavigationScreen(),
        args: settings.arguments,
      );
    // case PersonalChatScreenView:
    //   return _getPageRoute(
    //     routeName: settings.name,
    //     view: const PersonalChatDetailScreen(),
    //     args: settings.arguments,
    //   );
    // case GroupChatScreenView:
    //   return _getPageRoute(
    //     routeName: settings.name,
    //     view: const GroupChatDetailsScreen(),
    //     args: settings.arguments,
    //   );
    // case AddBusinessDoneView:
    //   return _getPageRoute(
    //     routeName: settings.name,
    //     view: const AddBusinessDone(),
    //     args: settings.arguments,
    //   );

    default:
      return CupertinoPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute<dynamic> _getPageRoute({String routeName, Widget view, Object args}) {
  return CupertinoPageRoute<dynamic>(
      settings: RouteSettings(name: routeName, arguments: args),
      builder: (_) => view);
}


void routeTo(BuildContext context, Widget view, {bool dialog = false}) {
  Navigator.push<void>(
      context,
      CupertinoPageRoute<dynamic>(
          builder: (BuildContext context) => view, fullscreenDialog: dialog));
}

void routeToReplace(BuildContext context, Widget view) {
  Navigator.pushAndRemoveUntil<void>(
      context,
      CupertinoPageRoute<dynamic>(builder: (BuildContext context) => view),
      (Route<void> route) => false);
}
