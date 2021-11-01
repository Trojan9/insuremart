import 'package:flutter/cupertino.dart';

abstract class Utils {
  static void offKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);

    TextEditingController password = TextEditingController();

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
      return;
    }
    currentFocus.unfocus();
  }

  static String isValidName(String value) {
    if (value.isEmpty) {
      return 'Name cannot be Empty';
    }
    return null;
  }

  static validatePassword(val) {
    if (val.isEmpty) {
      return 'Password cannot be empty!';
    } else if (val.length < 6) {
      return "Password must be up to 6 characters";
    } else {
      return null;
    }
  }

  static validateConfirmPassword(val, password) {
    if (val.isEmpty) {
      return 'Password cannot be empty!';
    } else if (val != password) {
      return "Password do not match";
    } else {
      return null;
    }
  }

  // validator: (val){
  //                             if(val.isEmpty)
  //                                  return 'Empty';
  //                             if(val != _pass.text)
  //                                  return 'Not Match'
  //                             return null;
  //                             }

  static isValidCard(val) {
    if (val.isEmpty) {
      return 'Card Number cannot be empty!';
    } else if (val.length < 16 || val.length > 16) {
      return "Card number require 16 valid digit";
    } else {
      return null;
    }
  }

  static isValidMonth(val) {
    if (val.isEmpty) {
      return 'Month cannot be empty!';
    } else if (val.length < 2 || val.length > 2) {
      return "Expire month require two valid digit";
    } else {
      return null;
    }
  }

  static isYear(val) {
    if (val.isEmpty) {
      return 'Year cannot be empty!';
    } else if (val.length < 2 || val.length > 2) {
      return "Expire month require two valid digit";
    } else {
      return null;
    }
  }

  static isCvv(val) {
    if (val.isEmpty) {
      return 'Cvv cannot be empty!';
    } else if (val.length < 3 || val.length > 3) {
      return "Expire month require three valid digit";
    } else {
      return null;
    }
  }

  static String validateEmail(value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else if (value.isEmpty) {
      return 'Please enter your email!';
    } else
      return null;
  }
}
