import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashTwoScreen extends StatefulWidget {
  const SplashTwoScreen({super.key});

  @override
  State<SplashTwoScreen> createState() => _SplashTwoScreenState();
}

class _SplashTwoScreenState extends State<SplashTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 368.h,
              width: 278.w,
              child: SvgPicture.asset('assets/svg/welcome_image.svg',
                  fit: BoxFit.cover),
            ),
            SizedBox(
              height: 34,
            ),
            AppTextStyle.textBoldWeight600(
                text: 'Welcome to the Trip Detail',
                fontSize: 20.sp,
                color: AppColors.black,
                needPoppins: true),
            SizedBox(
              height: 19.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: AppTextStyle.textBoldWeight400(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  fontSize: 14.sp,
                  textAlign: TextAlign.center,
                  color: AppColors.black6D6D6D,
                  needPoppins: true),
            ),
            SizedBox(
              height: 42.h,
            ),
            InkWell(
              onTap: () {
                Get.to(LoginScreen());
              },
              child: Container(
                height: 48.h,
                width: 194.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.sp),
                    color: AppColors.primaryColor),
                child: Center(
                  child: AppTextStyle.textBoldWeight600(
                    text: 'Get Started',
                    fontSize: 18.sp,
                    color: AppColors.white,
                    needPoppins: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
