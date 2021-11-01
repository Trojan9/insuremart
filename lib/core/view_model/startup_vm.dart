import 'package:insure_marts/core/models/user_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/util/constant/routes.dart';
import 'base_vm.dart';

class StartUpViewModel extends BaseModel {
  bool hasLoggedIn = false;

  Future<void> isLoggedIn() async {
    final UserModel token = AppCache.getUser();
    if (token != null) {
      hasLoggedIn = true;
      Future<void>.delayed(const Duration(seconds: 2), () {
        navigate.navigateToReplacing(SignupView);
      }
      );
    }
    else
   Future<void>.delayed(const Duration(seconds: 2), () {
        navigate.navigateToReplacing(SignupView);
      
    }
      );
    notifyListeners();
  }
}
