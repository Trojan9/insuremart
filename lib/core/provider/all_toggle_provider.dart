import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToggleData extends ChangeNotifier {
  bool ischecked1,
      ischecked2,
      ischecked3,
      ischecked4,
      ischecked5,
      facebookconnected,
      googleconnected,
      allNotification,
      newsNotification,
      insuranceNotification,
      twoStepVerification;
  bool custodianAlliedInsuance,
      leadwayInsurance,
      allianceInsurance,
      maniardInsurance;
  String selectedState;
  int certicate;

  ToggleData({
    this.ischecked1 = false,
    this.ischecked2 = false,
    this.ischecked3 = false,
    this.ischecked4 = false,
    this.ischecked5 = false,
    this.facebookconnected = false,
    this.googleconnected = false,
    this.allNotification = false,
    this.newsNotification = false,
    this.insuranceNotification = false,
    this.twoStepVerification = false,
    this.selectedState,
    this.allianceInsurance = false,
    this.custodianAlliedInsuance = false,
    this.leadwayInsurance = false,
    this.maniardInsurance = false,
    notifyListeners(),
    retreiveboolen(),
  });


  void initialdata() {
    retreiveboolen();
  }

  void togglecheck1() {
    ischecked1 = !ischecked1;
    saveboolen();
    notifyListeners();
  }

  void togglecheck2() {
    ischecked2 = !ischecked2;
    saveboolen();
    notifyListeners();
  }

  void togglecheck3() {
    ischecked3 = !ischecked3;
    saveboolen();
    notifyListeners();
  }

  void togglecheck4() {
    ischecked4 = !ischecked4;
    saveboolen();
    notifyListeners();
  }

  void togglecheck5() {
    ischecked5 = !ischecked5;
    saveboolen();
    notifyListeners();
  }

  tooglefacebook() {
    facebookconnected = !facebookconnected;
    saveboolen();
    notifyListeners();
  }

  togglegoogle() {
    googleconnected = !googleconnected;
    saveboolen();
    notifyListeners();
  }

  toggleallNotification() {
    allNotification = !allNotification;
    saveboolen();
    notifyListeners();
  }

  toggleNewsNotification() {
    newsNotification = !newsNotification;
    saveboolen();
    notifyListeners();
  }

  togglMyInsuranceNotification() {
    insuranceNotification = !insuranceNotification;
    saveboolen();
    notifyListeners();
  }

  toggleTwoStepVerification() {
    twoStepVerification = !twoStepVerification;
    saveboolen();
    notifyListeners();
  }

  toggleCustodianAlliedInsurance() {
    custodianAlliedInsuance = !custodianAlliedInsuance;
    saveboolen();
    notifyListeners();
  }

  toggleLeadwayInsurance() {
    leadwayInsurance = !leadwayInsurance;
    saveboolen();
    notifyListeners();
  }

  toggleAllianceInsurance() {
    allianceInsurance = !allianceInsurance;
    saveboolen();
    notifyListeners();
  }

  togglemaniardInsurance() {
    maniardInsurance = !maniardInsurance;
    saveboolen();
    notifyListeners();
  }

  toggleDropDown(value) {
    selectedState = value;
  }

  Future saveboolen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ischecked1', ischecked1);
    await prefs.setBool('ischecked2', ischecked2);
    await prefs.setBool('ischecked3', ischecked3);
    await prefs.setBool('ischecked4', ischecked4);
    await prefs.setBool('ischecked5', ischecked5);
    await prefs.setBool('facebookconnected', facebookconnected);
    await prefs.setBool('googleconnected', googleconnected);
    await prefs.setBool('newsNotification', newsNotification);
    await prefs.setBool('insuranceNotification', insuranceNotification);
    await prefs.setBool('twoStepVerification', twoStepVerification);
    await prefs.setBool('allianceInsurance', allianceInsurance);
    await prefs.setBool('custodianAlliedInsuance', custodianAlliedInsuance);
    await prefs.setBool('leadwayInsurance', leadwayInsurance);
    await prefs.setBool('maniardInsurance', maniardInsurance);

    
  }

  Future retreiveboolen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ischecked1 = prefs.getBool('ischecked1') ?? false;
    ischecked2 = prefs.getBool('ischecked2') ?? false;
    ischecked3 = prefs.getBool('ischecked3') ?? false;
    ischecked4 = prefs.getBool('ischecked4') ?? false;
    ischecked5 = prefs.getBool('ischecked5') ?? false;
    facebookconnected = prefs.getBool('facebookconnected') ?? false;
    googleconnected = prefs.getBool('googleconnected') ?? false;
    newsNotification = prefs.getBool('newsNotification') ?? false;
    insuranceNotification = prefs.getBool('insuranceNotification') ?? false;
    twoStepVerification = prefs.getBool('twoStepVerification') ?? false;
    allianceInsurance = prefs.getBool('allianceInsurance') ?? false;
    custodianAlliedInsuance = prefs.getBool('custodianAlliedInsuance') ?? false;
    leadwayInsurance = prefs.getBool('leadwayInsurance') ?? false;
    maniardInsurance = prefs.getBool('maniardInsurance') ?? false;
    notifyListeners();
  }
}
