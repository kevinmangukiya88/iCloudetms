import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/components/common_textfiled.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmDeliveryScreen extends StatefulWidget {
  const ConfirmDeliveryScreen({super.key});

  @override
  State<ConfirmDeliveryScreen> createState() => _ConfirmDeliveryScreenState();
}

class _ConfirmDeliveryScreenState extends State<ConfirmDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Confirm Delivery',
        actionIcon: SizedBox(),
        leadingIcon: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Container(
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.greyEBEBEB),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        readOnly: true,
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 15.sp,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            hintText: 'Date',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.calendar_month)),
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        readOnly: true,
                        cursorHeight: 15.sp,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            hintText: 'Time',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.timer)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            AppTextStyle.textBoldWeight500(
                text: 'Notes',
                color: AppColors.black414141,
                fontSize: 14.sp,
                needPoppins: true),
            SizedBox(
              height: 5.h,
            ),
            commonTextFiled(hintText: 'Write here.....',maxLIne: 6,borderPadding: 12, ),
            SizedBox(
              height: 16.h,
            ),
            Container(   height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 0.w),
              decoration: BoxDecoration(

                border: Border.all(color: AppColors.greyE6E6E6),
                borderRadius: BorderRadius.circular(10.sp),
              ),
            child:  TextFormField(
              readOnly: true,
              textAlignVertical: TextAlignVertical.center,
              cursorHeight: 15.sp,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  hintText: 'Upload documents (Optional)',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.camera_alt_outlined,color: AppColors.primaryColor,),),
            ),
            ),SizedBox(
              height: 16.h,
            ),
            Container(   height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 0.w),
              decoration: BoxDecoration(

                border: Border.all(color: AppColors.greyE6E6E6),
                borderRadius: BorderRadius.circular(10.sp),
              ),
            child:  TextFormField(
              readOnly: true,
              textAlignVertical: TextAlignVertical.center,
              cursorHeight: 15.sp,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  hintText: 'View Documents',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.remove_red_eye_rounded,color: AppColors.primaryColor,),),
            ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: (){},
        child: Container(
          height: 48.h,
          width: 198.w,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(6.sp),
          ),
          child: Center(
            child: AppTextStyle.textBoldWeight600(text: "Picked Up",color: AppColors.primaryColor,fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}
