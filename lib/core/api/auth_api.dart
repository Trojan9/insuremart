import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:insure_marts/core/models/user_model.dart';
import 'package:insure_marts/util/constant/messages.dart';
import 'package:insure_marts/util/error/custom_exception.dart';
import 'package:insure_marts/util/error/error_model.dart';
import 'package:insure_marts/util/error/error_util.dart';
import 'package:logger/logger.dart';
import 'base_api.dart';

class AuthApi extends BaseAPI {
  Logger log = Logger();
  UserModel loginData;

  Future<UserModel> loginUser(Map<String, String> data) async {
    var finalUrlLogin = "$baseUrl" + "login";
    try {
      final Response<Map<String, dynamic>> res =
          await dio.post<Map<String, dynamic>>(finalUrlLogin,
              data: data,
              options: defaultOptions);

      log.d(res.data);
      switch (res.statusCode) {
        case SERVER_OKAY:
          return UserModel.fromJson(res.data);
          break;

        case POORLY_FORMATTED_REQUEST:
          throw UNKNOWN_USER;
          break;

        default:
          throw ErrorModel.fromJson(res.data).message;
          break;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<UserModel> createUser(String token, Map<String, dynamic> data) async {
    var finalUrlSignUp = "$baseUrl" + "signup";
    try {
      var response = await Dio()
          .post(finalUrlSignUp, data: data, options: defaultOptions);

      log.d(response.data);
      log.d(response.statusCode);
      switch (response.statusCode) {
        case SERVER_OKAY:
          return UserModel.fromJson(response.data);
          break;
        case POORLY_FORMATTED_REQUEST:
          throw EXIST_ALREADY;
          break;
        default:
          throw ErrorModel.fromJson(response.data).message;
          break;
      }
    } catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }
}
