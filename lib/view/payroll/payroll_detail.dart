import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/trip/trip_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PayrollDetailScreen extends StatefulWidget {
  const PayrollDetailScreen({super.key});

  @override
  State<PayrollDetailScreen> createState() => _PayrollDetailScreenState();
}

class _PayrollDetailScreenState extends State<PayrollDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Payroll',
        actionIcon: SizedBox(),
        leadingIcon: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
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
                height: 13.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(6.sp),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextStyle.textBoldWeight400(
                              text: 'Invoice No',
                              color: AppColors.grey787878,
                              fontSize: 12.sp,
                              needPoppins: true),
                          AppTextStyle.textBoldWeight400(
                              text: '#123345566',
                              color: AppColors.black252525,
                              fontSize: 14.sp,
                              needPoppins: true),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Expanded(
                    child: Container(
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextStyle.textBoldWeight400(
                              text: 'Your Payment',
                              color: AppColors.grey787878,
                              fontSize: 12.sp,
                              needPoppins: true),
                          AppTextStyle.textBoldWeight700(
                              text: '\$600.0/-',
                              color: AppColors.primaryColor,
                              fontSize: 18.sp,
                              needPoppins: true),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    _buildCircle(23),
                    CustomPaint(
                      size: Size(20, 50), // Adjust height as needed
                      painter: DottedLinePainter(),
                    ),
                    _buildCircle(23),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    children: [

                      Container(
                        height: 65.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.greyEBEBEB),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                AppTextStyle.textBoldWeight400(
                                  text: 'To:',
                                  color: AppColors.black676767,
                                  fontSize: 14.sp,
                                  needPoppins: true,
                                ),

                                SizedBox(width: 10.w,),AppTextStyle.textBoldWeight400(
                                  text: 'Gurbaaz Cheema',
                                  color: AppColors.primaryColor,
                                  fontSize: 12.sp,
                                  needPoppins: true,
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.phone_in_talk,color: AppColors.primaryColor,size: 14.sp),
                                SizedBox(width: 10.w,),
                                AppTextStyle.textBoldWeight400(
                                  text: '(270) 555-0117',
                                  color: AppColors.black676767,
                                  fontSize: 10.sp,
                                  needPoppins: true,
                                ),
                                SizedBox(width: 10.w,),
                                Icon(Icons.email_outlined,color: AppColors.primaryColor,size: 14.sp),
                                SizedBox(width: 10.w,),
                                AppTextStyle.textBoldWeight400(
                                  text: 'andj@gamil.com',
                                  color: AppColors.black676767,
                                  fontSize: 10.sp,
                                  needPoppins: true,
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 65.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.greyEBEBEB),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                AppTextStyle.textBoldWeight400(
                                  text: 'From:',
                                  color: AppColors.black676767,
                                  fontSize: 14.sp,
                                  needPoppins: true,
                                ),

                                SizedBox(width: 10.w,),AppTextStyle.textBoldWeight400(
                                  text: 'Gurbaaz Cheema',
                                  color: AppColors.primaryColor,
                                  fontSize: 12.sp,
                                  needPoppins: true,
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.phone_in_talk,color: AppColors.primaryColor,size: 14.sp),
                                SizedBox(width: 10.w,),
                                AppTextStyle.textBoldWeight400(
                                  text: '(270) 555-0117',
                                  color: AppColors.black676767,
                                  fontSize: 10.sp,
                                  needPoppins: true,
                                ),
                                SizedBox(width: 10.w,),
                                Icon(Icons.email_outlined,color: AppColors.primaryColor,size: 14.sp),
                                SizedBox(width: 10.w,),
                                AppTextStyle.textBoldWeight400(
                                  text: 'andj@gamil.com',
                                  color: AppColors.black676767,
                                  fontSize: 10.sp,
                                  needPoppins: true,
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],),
              SizedBox(
                height: 22.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.greyEBEBEB),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Column(
                  children: [
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 15.w,),
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             AppTextStyle.textBoldWeight400(
                               text: 'Basic Charges',
                               color: AppColors.black676767,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ), AppTextStyle.textBoldWeight500(
                               text: '\$400/-',
                               color: AppColors.black414141,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ),
                           ],
                         ),
                         SizedBox(height: 5.h,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             AppTextStyle.textBoldWeight400(
                               text: 'Food & Beverages',
                               color: AppColors.black676767,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ), AppTextStyle.textBoldWeight500(
                               text: '\$100/-',
                               color: AppColors.black414141,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ),
                           ],
                         ),
                         SizedBox(height: 5.h,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             AppTextStyle.textBoldWeight400(
                               text: 'Toll Charges',
                               color: AppColors.black676767,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ), AppTextStyle.textBoldWeight500(
                               text: '\$50/-',
                               color: AppColors.black414141,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ),
                           ],
                         ),
                         SizedBox(height: 5.h,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             AppTextStyle.textBoldWeight400(
                               text: 'Parking Charges',
                               color: AppColors.black676767,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ), AppTextStyle.textBoldWeight500(
                               text: '\$50/-',
                               color: AppColors.black414141,
                               fontSize: 14.sp,
                               needPoppins: true,
                             ),
                           ],
                         ),
                         SizedBox(height: 5.h,),

                       ],
                     ),
                   ),
                    Divider(
                      color: AppColors.greyE8E8E8,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTextStyle.textBoldWeight600(
                            text: 'Total Gross Amount',
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                            needPoppins: true,
                          ), AppTextStyle.textBoldWeight600(
                            text: '\$600.0/-',
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                            needPoppins: true,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildCircle(double heightWidth) {
    return Container(
      width: heightWidth,
      height: heightWidth,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.green43AA8B, width: 2),
      ),
    );
  }
}
