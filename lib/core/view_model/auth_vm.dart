import 'package:insure_marts/core/api/auth_api.dart';
import 'package:insure_marts/core/models/user_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/util/constant/routes.dart';
import 'package:insure_marts/util/error/custom_exception.dart';

import '../../locator.dart';
import 'base_vm.dart';

class AuthViewModel extends BaseModel {
  final AuthApi _authApi = locator<AuthApi>();
  String error1;
  String error2;
  String error3;

  UserModel userModel;

  // 

  Future<void> loginUser(Map<String, dynamic> data) async {
    
    setBusy(true);
    try {
      userModel = await _authApi.loginUser(data);
      AppCache.saveUser(userModel);
      navigate.navigateTo(HomeScreenView);
      setBusy(false);
    } on CustomException catch (e) {
      error2 = e.message;
      setBusy(false);
      showErrorDialog(e);
      notifyListeners();
      print(error2);
    }
  }

  // SIGN UP

  Future<void> createUser(String token, Map<String, dynamic> data) async {
    setBusy(true);
    try {
      userModel = await _authApi.createUser(token, data);
      AppCache.saveUser(userModel);
      navigate.navigateToReplacing(HomeScreenView);
      setBusy(false);
      notifyListeners();
    } on CustomException catch (e) {
      error1 = e.message;
      setBusy(false);
      showErrorDialog(e);
      notifyListeners();
      return null;
    }
  }

  Future<void> logout() async {
    await AppCache.clear();
    navigate.navigateToReplacing(SplashView);
    notifyListeners();
  }

  void showErrorDialog(CustomException e) {
    dialog.showDialog(
        title: 'Error', description: e.message, buttonTitle: 'Close');
  }
}
