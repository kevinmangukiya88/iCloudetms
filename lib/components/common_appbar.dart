import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

commonAppbar({required String title, Widget? actionIcon,Widget? leadingIcon}) {
  BottomBarController bottomBarController = Get.find();
  return AppBar(
    backgroundColor: AppColors.white,
    elevation: 0.1,
    centerTitle: true,
    leading:leadingIcon??IconButton(onPressed: () {
      bottomBarController.scaffoldKey.currentState!.openDrawer();
    }, icon: Icon(Icons.sort),),
    title: AppTextStyle.textBoldWeight500(
        text: title,
        color: AppColors.black282828,
        fontSize: 18.sp,
        needPoppins: true),
    actions: [
     actionIcon!
    ],
    shadowColor: AppColors.black,
  );
}
