import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/model/login_response_model.dart';
import 'package:driver_mobile/model/validate_otp_response_model.dart';
import 'package:driver_mobile/repo/auth_repo.dart';
import 'package:driver_mobile/service/api_service/api_response.dart';
import 'package:driver_mobile/service/get_storage_service.dart';
import 'package:driver_mobile/view/auth/otp_screen.dart';
import 'package:driver_mobile/view/bottomBar/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  /// sendOTP
  ApiResponse _sendOtpResponse = ApiResponse.initial(message: 'Initialization');

  ApiResponse get sendOtpResponse => _sendOtpResponse;

  Future<void> sendOtpViewModel(BuildContext context,
      {Map<String, dynamic>? body,   String? email,
       String? password,}) async {
    SVProgressHUD.show();
    _sendOtpResponse = ApiResponse.loading(message: 'Loading');
    try {
      SendOtpResponseModel response = await AuthRepo.sendOtpRepo(body: body);
      print("loginViewModel==>$response");
      if (response.status == 1) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "${response.message}",
            ),
          ),
        );
        Get.to(OtpScreen(email: email,password: password,),);

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.redAC71F16,
            content: Text("${response.message}",style: TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),),
          ),
        );
        // await GetStorageServices.setUserType(userTpe);
        // await GetStorageServices.setUserId(response.response!.id ?? '');
        // await GetStorageServices.setFcmToken(response.model!.token ?? '');
        // await GetStorageServices.setLogin('true');
        // Get.offAll(BottomNavBar());
      }

      SVProgressHUD.dismiss();
      _sendOtpResponse = ApiResponse.complete(response);
    } catch (e) {
      SVProgressHUD.showError(status: '$e');
      Future.delayed(Duration(seconds: 1), () {
        SVProgressHUD.dismiss();
      });
      print("sendOtpViewModel Error==>$e==");
      _sendOtpResponse = ApiResponse.error(message: 'error');
    } finally {
      SVProgressHUD.dismiss();
    }
    update();
  }


   /// validateOtp
  ApiResponse _validateOtpResponse = ApiResponse.initial(message: 'Initialization');

  ApiResponse get validateOtpResponse => _validateOtpResponse;

  Future<void> validateOtpViewModel(BuildContext context,
      {Map<String, dynamic>? body}) async {
    SVProgressHUD.show();
    _validateOtpResponse = ApiResponse.loading(message: 'Loading');
    try {
      ValidateOtpResponseModel response = await AuthRepo.validateOtpRepo(body: body);
      print("loginViewModel==>$response");
      if (response.status == 1) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "${response.message}",
            ),
          ),
        );
     await GetStorageServices.setFcmToken(response.model!.token ?? '');
    await GetStorageServices.setLogin('true');
        Get.offAll(BottomBarScreen());
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.redAC71F16,
            content: Text("${response.message}",style: TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),),
          ),
        );
        // await GetStorageServices.setUserType(userTpe);
        // await GetStorageServices.setUserId(response.response!.id ?? '');
        // await GetStorageServices.setFcmToken(response.model!.token ?? '');
        // await GetStorageServices.setLogin('true');
        // Get.offAll(BottomNavBar());
      }

      SVProgressHUD.dismiss();
      _validateOtpResponse = ApiResponse.complete(response);
    } catch (e) {
      SVProgressHUD.showError(status: '$e');
      Future.delayed(Duration(seconds: 1), () {
        SVProgressHUD.dismiss();
      });
      print("sendOtpViewModel Error==>$e==");
      _validateOtpResponse = ApiResponse.error(message: 'error');
    } finally {
      SVProgressHUD.dismiss();
    }
    update();
  }



}