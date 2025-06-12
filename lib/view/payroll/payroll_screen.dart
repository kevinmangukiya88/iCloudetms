import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/components/common_text_filed.dart';
import 'package:driver_mobile/constants/assets.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'payroll_detail.dart';

class PayrollScreen extends StatefulWidget {
  const PayrollScreen({super.key});

  @override
  State<PayrollScreen> createState() => _PayrollScreenState();
}

class _PayrollScreenState extends State<PayrollScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Payroll',
        actionIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.tune,
            color: AppColors.primaryColor,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14,),
              commonTextFiled(label: '',hintText: 'Search',),
              SizedBox(height: 13.sp,),
              AppTextStyle.textBoldWeight500(
                  text: 'New',
                  color: AppColors.black282828,
                  fontSize: 14.sp,
                  needPoppins: true),
              SizedBox(height: 10.h,),
              Divider(color: AppColors.greyC1C1C1,),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return payRollWidget(index);
              },),SizedBox(height: 20.sp,),
              AppTextStyle.textBoldWeight500(
                  text: 'Earlier',
                  color: AppColors.black282828,
                  fontSize: 14.sp,
                  needPoppins: true),
              SizedBox(height: 10.h,),
              Divider(color: AppColors.greyC1C1C1,),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return payRollWidget(index);
              },),
            ],
          ),
        ),
      ),
    );
  }

   payRollWidget(int index) {
    return InkWell(
      onTap: (){
        Get.to(PayrollDetailScreen());
      },
      child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextStyle.textBoldWeight500(
                              text: '#123456',
                              color: AppColors.black636363,
                              fontSize: 14.sp,
                              needPoppins: true),
                          SizedBox(height: 8.h,),
                          AppTextStyle.textBoldWeight500(
                              text: 'Paid',
                              color: AppColors.green43AA8B,
                              fontSize: 14.sp,
                              needPoppins: true),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              AppTextStyle.textBoldWeight700(
                                  text: '\$50,000',
                                  color: AppColors.black414141,
                                  fontSize: 16.sp,
                                  needPoppins: true),
                              SizedBox(width: 5.w,),
                              SvgPicture.asset(index==1 || index==3?AppImages.icArrowDown:AppImages.icArrow),
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          AppTextStyle.textBoldWeight500(
                              text: '06:32 PM',
                              color: AppColors.black636363,
                              fontSize: 14.sp,
                              needPoppins: true),
                        ],
                      ),
                    ],
                  ),
                  Divider(color: AppColors.greyDADADA,),
                ],
              ),
    );
  }
}
