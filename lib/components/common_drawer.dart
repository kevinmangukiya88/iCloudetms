import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/auth/login_screen.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:driver_mobile/view/notification/notification_screen.dart';
import 'package:driver_mobile/view/support/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Drawer commonDrawer(BottomBarController controller) {
  return Drawer(
    backgroundColor: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.sp,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextStyle.textBoldWeight500(
                        text: 'Jane Cooper',
                        color: AppColors.black282828,
                        fontSize: 16.sp,
                        needPoppins: true),
                    AppTextStyle.textBoldWeight500(
                        text: 'JaneCooper@gmail.com',
                        color: AppColors.black282828,
                        fontSize: 12.sp,
                        needPoppins: true),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Divider(
              color: AppColors.blue0C1C71,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.drawerTitle.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // controller.updateIndex(index);
                    if (index == 0) {
                      controller.jumpToPage(0);
                      Get.back();
                    } else if (index == 1) {
                      controller.jumpToPage(1);
                      Get.back();
                    } else if (index == 2) {
                      controller.jumpToPage(2);
                      Get.back();
                    } else if (index == 3) {
                      controller.jumpToPage(3);
                      Get.back();
                    } else if (index == 4) {
                      controller.jumpToPage(4);
                      Get.to(() => NotificationScreen());
                    } else if (index == 5) {
                      controller.jumpToPage(5);
                      Get.to((SupportScreen()));
                    } else if (index == 6) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppTextStyle.textBoldWeight500(text: 'LOGOUT',color: AppColors.primaryColor,fontSize: 20.sp),
                                SizedBox(height: 10.h,),
                                AppTextStyle.textBoldWeight400(text: 'Are you sure, you want to logout?',color: AppColors.black414141,fontSize: 14.sp),
                                SizedBox(height: 20.h,),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        height: 33.h,
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.primaryColor,
                                              width: 1),
                                          borderRadius: BorderRadius.circular(6.sp),
                                        ),
                                        child: Center(
                                          child: AppTextStyle.textBoldWeight600(
                                              text: "No",
                                              color: AppColors.primaryColor,
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w,),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                      Get.offAll(LoginScreen());
                                      },
                                      child: Container(
                                        height: 33.h,
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius: BorderRadius.circular(6.sp),
                                        ),
                                        child: Center(
                                          child: AppTextStyle.textBoldWeight600(
                                              text: "Yes",
                                              color: AppColors.white,
                                              fontSize: 18.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],),

                          );
                        },
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: index == 0 ? 0 : 18.h),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: controller.currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.greyEAEAEA,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          controller.drawerIconList[index],
                          height: 18.h,
                          color: controller.currentIndex == index
                              ? AppColors.white
                              : AppColors.grey4C4C4C,
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        AppTextStyle.textBoldWeight500(
                          text: controller.drawerTitle[index],
                          fontSize: 16.sp,
                          needPoppins: true,
                          color: controller.currentIndex == index
                              ? AppColors.white
                              : AppColors.grey4C4C4C,
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    ),
  );
}
