import 'dart:developer';

import 'package:driver_mobile/model/login_response_model.dart';
import 'package:driver_mobile/model/validate_otp_response_model.dart';
import 'package:driver_mobile/service/api_service/api_endpoint.dart';
import 'package:driver_mobile/service/api_service/base_services.dart';

class AuthRepo extends APIService {


  static Future<SendOtpResponseModel> sendOtpRepo(
      {Map<String, dynamic>? body}) async {
    var response = await APIService().getResponse(
        url: EndPoints.sendOtp, apitype: APIType.aPost, body: body);
    log('LOGIN REPO RESPONSE===>>>  $response');
    SendOtpResponseModel sendOtpResponseModel =
    SendOtpResponseModel.fromJson(response);
    return sendOtpResponseModel;
  }

  static Future<ValidateOtpResponseModel> validateOtpRepo(
      {Map<String, dynamic>? body}) async {
    var response = await APIService().getResponse(
        url: EndPoints.validateOtp, apitype: APIType.aPost, body: body);
    log('LOGIN REPO RESPONSE===>>>  $response');
    ValidateOtpResponseModel validateOtpResponseModel =
    ValidateOtpResponseModel.fromJson(response);
    return validateOtpResponseModel;
  }
}
