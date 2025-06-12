import 'package:country_code_picker/country_code_picker.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/auth/controller/login_controller.dart';
import 'package:driver_mobile/view/auth/otp_screen.dart';
import 'package:driver_mobile/view/bottomBar/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedCountryCode = '+91';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthController authController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    right: -20,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/svg/shap.svg',
                      fit: BoxFit.fill,
                      height: 350.h,
                      width: double.infinity,
                    ),
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
                    text: 'Get Started',
                    fontSize: 26.sp,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  AppTextStyle.textBoldWeight500(
                    text: 'Add your phone number.',
                    fontSize: 15.sp,
                    color: AppColors.black1D1617,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 16,
                              spreadRadius: 0,
                              offset: Offset(2.0, 1.0),
                              color: AppColors.black.withOpacity(0.10)),
                        ]),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Enter your email...',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: AppColors.primaryColor,
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      ),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 16,
                              spreadRadius: 0,
                              offset: Offset(2.0, 1.0),
                              color: AppColors.black.withOpacity(0.10)),
                        ]),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password...',
                        prefixIcon: Icon(
                          Icons.remove_red_eye,
                          color: AppColors.primaryColor,
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      ),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        if (emailController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: AppColors.redAC71F16,
                              content: Text(
                                "Please Enter Your Email",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          );
                        } else if (passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: AppColors.redAC71F16,
                              content: Text("Please Enter Your Password", style: TextStyle(
                                color: AppColors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),),
                            ),
                          );
                        } else {

                          final Map<String,dynamic> body={
                            "userName": emailController.text,
                            "password": passwordController.text
                          };
                          authController.sendOtpViewModel(context,body: body,password: passwordController.text,email: emailController.text);

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
                            text: 'Submit',
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
