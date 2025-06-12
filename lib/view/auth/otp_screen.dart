import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/view/auth/controller/login_controller.dart';
import 'package:driver_mobile/view/bottomBar/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  final String? email;
  final String? password;
  const OtpScreen({super.key, this.email, this.password});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _selectedCountryCode = '+91';
  OtpFieldController otpFieldController = OtpFieldController();
  String otp='';
  AuthController authController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400.h,
              width: double.infinity,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/svg/shap.svg',
                    fit: BoxFit.fill,
                    height: 400.h,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 20.h,
                    right: -10.w,
                    child: SvgPicture.asset(
                      'assets/svg/truck.svg',
                      fit: BoxFit.fill,
                      height: 264.h,
                      width: 347.w,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextStyle.textBoldWeight600(
                    text: 'Enter OTP',
                    fontSize: 26.sp,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  AppTextStyle.textBoldWeight500(
                    text: 'Add your OTP number.',
                    fontSize: 15.sp,
                    color: AppColors.black1D1617,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  OTPTextField(
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    controller: otpFieldController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 200,
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: AppColors.greyC1C1C1,
                      disabledBorderColor: AppColors.greyC1C1C1,
                      enabledBorderColor: AppColors.greyC1C1C1,
                      focusBorderColor: AppColors.greyC1C1C1,
                    ),
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                    onChanged: (value) {
                      setState(() {
                        otp=value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        if(otp.toString().length==6){
                          final Map<String,dynamic>body={
                            "userName": widget.email,
                            "password":widget.password,
                            "otp": otp,
                          };
                          authController.validateOtpViewModel(context,body: body);
                          // Get.offAll(BottomBarScreen());
                        }else{
                          print('DEMO::${otp}');
                        }

                      },
                      child: Container(
                        height: 48.h,
                        width: 194.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.sp),
                            color: AppColors.primaryColor),
                        child: Center(
                          child: AppTextStyle.textBoldWeight600(
                            text: 'Login',
                            fontSize: 18.sp,
                            color: AppColors.white,
                            needPoppins: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

