import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TripStatusScreen extends StatefulWidget {
  const TripStatusScreen({super.key});

  @override
  State<TripStatusScreen> createState() => _TripStatusScreenState();
}

class _TripStatusScreenState extends State<TripStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Trip Status',
        actionIcon: SizedBox(),
        leadingIcon: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextStyle.textBoldWeight600(
                    text: 'BOL No : 12345',
                    color: AppColors.orangeFF8E00,
                    fontSize: 14.sp,
                    needPoppins: true),
                AppTextStyle.textBoldWeight400(
                    text: 'Load No : 21000171',
                    color: AppColors.grey4F4F4F,
                    fontSize: 14.sp,
                    needPoppins: true),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: AppColors.greyE8E8E8,
            ),
            SizedBox(
              height: 16.h,
            ),
            AppTextStyle.textBoldWeight500(
                text: 'Status',
                color: AppColors.black414141,
                fontSize: 18.sp,
                needPoppins: true),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}
