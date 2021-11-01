import 'package:dio/dio.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/locator.dart';
import 'package:insure_marts/util/constant/messages.dart';
import 'package:insure_marts/util/navigator.dart';

class BaseAPI {
  Dio dio = Dio();

  String baseUrl = kBaseUrl;
  Options defaultOptions = Options(
      sendTimeout: 20000, // 20 seconds
      receiveTimeout: 20000, // 20 seconds
      // headers: {'Content-Type': 'application/json'},
      contentType: 'application/json',
      validateStatus: (status) => status < 500);
  NavigationService navigate = locator<NavigationService>();
}
