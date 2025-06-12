import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/components/common_drawer.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/common_text_filed.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  BottomBarController bottomBarController = Get.find();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Notification',
        actionIcon: SizedBox(),
        leadingIcon: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      drawer: commonDrawer(bottomBarController),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            commonTextFiled(
              label: '',
              hintText: 'Search',
            ),
            SizedBox(
              height: 13.sp,
            ),
            AppTextStyle.textBoldWeight500(
                text: 'New Notification ',
                color: AppColors.black282828,
                fontSize: 14.sp,
                needPoppins: true),
            SizedBox(
              height: 13.sp,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 10.h),
                  height: 65.h,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: AppColors.greyE8E8E8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 24.h,
                                width: 24.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Center(
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 15.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 9.w,
                              ),
                              AppTextStyle.textBoldWeight500(
                                  text: 'Robert Fox',
                                  color: AppColors.black282828,
                                  fontSize: 14.sp,
                                  needPoppins: true),
                            ],
                          ),
                          AppTextStyle.textBoldWeight500(
                              text: '2m',
                              color: AppColors.grey8E8E8E,
                              fontSize: 10.sp,
                              needPoppins: true),
                        ],
                      ),
                      AppTextStyle.textBoldWeight500(
                          text:
                              'We have an Exciting Offers for you near to yo...',
                          color: AppColors.grey949494,
                          fontSize: 10.sp,
                          needPoppins: true),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
