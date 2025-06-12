import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/constants/assets.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/trip/controller/trip_controller.dart';
import 'package:driver_mobile/view/trip/trip_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  final List<String> buttonTitles = ['New', 'Tonu', 'Delivered', 'Rejected'];
  TripController tripController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: 'Trips',
        actionIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active_outlined,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetBuilder<TripController>(
            builder: (controller) {
              return Column(
                children: [
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        buttonTitles.length,
                        (index) => InkWell(
                          onTap: () {
                            controller.selectTitleIndex(index);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: AppTextStyle.textBoldWeight600(
                                  text: buttonTitles[index],
                                  color: AppColors.white,
                                  fontSize: 14.sp,
                                  needPoppins: true),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: AppColors.greyDADADA,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return tripWidget(index, controller);
                      },
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }

  tripWidget(int index, TripController controller) {
    return InkWell(
      onTap: () {
        Get.to(TripDetailScreen());
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextStyle.textBoldWeight600(
                        text: '12345678',
                        color: AppColors.black6A6A6A,
                        fontSize: 14.sp,
                        needPoppins: true),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              AppTextStyle.textBoldWeight500(
                                  text: 'From:',
                                  color: AppColors.greyA3A3A3,
                                  fontSize: 12.sp,
                                  needPoppins: true),
                              Expanded(
                                child: AppTextStyle.textBoldWeight500(
                                    text: ' st.Donatus, IA',
                                    color: AppColors.black636363,
                                    fontSize: 12.sp,
                                    maxLine: 1,
                                    needPoppins: true),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              AppTextStyle.textBoldWeight500(
                                  text: 'To:',
                                  color: AppColors.greyA3A3A3,
                                  fontSize: 12.sp,
                                  needPoppins: true),
                              Expanded(
                                child: AppTextStyle.textBoldWeight500(
                                    text: ' st.Donatus, IA',
                                    maxLine: 1,
                                    color: AppColors.black636363,
                                    fontSize: 12.sp,
                                    needPoppins: true),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: controller.selectIndex == 0
                                ? AppColors.green0EC335
                                : controller.selectIndex == 1
                                ? AppColors.orangeE38229
                                : controller.selectIndex == 2
                                ? AppColors.primaryColor
                                : AppColors.redAC71F16 ,),),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.selectIndex == 0
                                    ? AppColors.green0EC335
                                    : controller.selectIndex == 1
                                    ? AppColors.orangeE38229
                                    : controller.selectIndex == 2
                                    ? AppColors.primaryColor
                                    : AppColors.redAC71F16 ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      AppTextStyle.textBoldWeight500(
                          text: controller.selectIndex == 0
                              ? 'Assigned'
                              : controller.selectIndex == 1
                                  ? 'Tonu'
                                  : controller.selectIndex == 2
                                      ? 'Delivered'
                                      : 'Rejected',
                          color:controller.selectIndex == 0
                              ? AppColors.green0EC335
                              : controller.selectIndex == 1
                              ? AppColors.orangeE38229
                              : controller.selectIndex == 2
                              ? AppColors.primaryColor
                              : AppColors.redAC71F16 ),
                      // SizedBox(width: 5.w,),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppTextStyle.textBoldWeight500(
                      text: 'May 7, 2023',
                      color: AppColors.grey8F8F8F,
                      fontSize: 10.sp,
                      needPoppins: true),
                ],
              ),
            ],
          ),
          Divider(
            color: AppColors.greyDADADA,
          ),
        ],
      ),
    );
  }
}
