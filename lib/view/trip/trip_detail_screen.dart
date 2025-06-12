import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/trip/confirm_delivery_screen.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'trip_status_screen.dart';

class TripDetailScreen extends StatefulWidget {
  const TripDetailScreen({super.key});

  @override
  State<TripDetailScreen> createState() => _TripDetailScreenState();
}

class _TripDetailScreenState extends State<TripDetailScreen> {
  int activeStep = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
        child: SingleChildScrollView(
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
                height: 28.h,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AppTextStyle.textBoldWeight500(
                          text: '08, Oct, 2021',
                          color: AppColors.black676767,
                          fontSize: 12.sp,
                          needPoppins: true),
                    ],
                  ),
                  SizedBox(width: 50.w),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      AppTextStyle.textBoldWeight500(
                          text: '02:28 pm',
                          color: AppColors.black676767,
                          fontSize: 12.sp,
                          needPoppins: true),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              _buildCircle(30),
                              CustomPaint(
                                size: Size(20, 60), // Adjust height as needed
                                painter: DottedLinePainter(),
                              ),
                              _buildCircle(30),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 65.h,
                                width: 150.w,
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  border:
                                      Border.all(color: AppColors.greyEBEBEB),
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppTextStyle.textBoldWeight400(
                                      text: 'From',
                                      color: AppColors.black676767,
                                      fontSize: 14.sp,
                                      needPoppins: true,
                                    ),
                                    AppTextStyle.textBoldWeight400(
                                      text: 'St. Donatus, IA',
                                      color: AppColors.black252525,
                                      fontSize: 12.sp,
                                      needPoppins: true,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 65.h,
                                width: 150.w,
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  border:
                                      Border.all(color: AppColors.greyEBEBEB),
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppTextStyle.textBoldWeight400(
                                      text: 'To',
                                      color: AppColors.black676767,
                                      fontSize: 14.sp,
                                      needPoppins: true,
                                    ),
                                    AppTextStyle.textBoldWeight400(
                                      text: 'Montevallo, AL',
                                      color: AppColors.black252525,
                                      fontSize: 12.sp,
                                      needPoppins: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 52.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                gradient: LinearGradient(colors: [
                                  Color(0xff192A89),
                                  Color(0xff570FEF).withOpacity(0.67),
                                ])),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monitor_weight_outlined,
                                      color: AppColors.white,
                                    ),
                                    AppTextStyle.textBoldWeight400(
                                        text: 'Weight',
                                        color: AppColors.white,
                                        fontSize: 8.sp,
                                        needPoppins: true),
                                  ],
                                ),
                                AppTextStyle.textBoldWeight700(
                                    text: '234.0',
                                    color: AppColors.white,
                                    fontSize: 12.sp,
                                    needPoppins: true),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            height: 52.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                gradient: LinearGradient(colors: [
                                  Color(0xff192A89),
                                  Color(0xff570FEF).withOpacity(0.67),
                                ])),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      color: AppColors.white,
                                    ),
                                    AppTextStyle.textBoldWeight400(
                                        text: 'Miles',
                                        color: AppColors.white,
                                        fontSize: 8.sp,
                                        needPoppins: true),
                                  ],
                                ),
                                AppTextStyle.textBoldWeight700(
                                    text: '234.0',
                                    color: AppColors.white,
                                    fontSize: 12.sp,
                                    needPoppins: true),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            height: 52.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                gradient: LinearGradient(colors: [
                                  Color(0xff192A89),
                                  Color(0xff570FEF).withOpacity(0.67),
                                ])),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.width_normal,
                                      color: AppColors.white,
                                    ),
                                    AppTextStyle.textBoldWeight400(
                                        text: 'Weight',
                                        color: AppColors.white,
                                        fontSize: 8.sp,
                                        needPoppins: true),
                                  ],
                                ),
                                AppTextStyle.textBoldWeight700(
                                    text: '234.0',
                                    color: AppColors.white,
                                    fontSize: 12.sp,
                                    needPoppins: true),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Get.to(TripStatusScreen());
                      },
                      child: Container(
                        height: 220.h,
                        width: 150.w,
                        padding:
                            EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.greyEBEBEB),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: StepperWidget(
                          steps: [
                            StepData(
                                'Picked up', true, AppColors.primaryColor, 20),
                            StepData(
                                'Lumber Fees', true, AppColors.primaryColor, 20),
                            StepData(
                                'Detention', true, AppColors.primaryColor, 20),
                            StepData(
                                'Cancelled', false, AppColors.greyF4F4F4, 20),
                            StepData('Payroll', false, AppColors.greyF4F4F4, 20),
                            StepData('Complete', false, AppColors.greyF4F4F4, 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              AppTextStyle.textBoldWeight500(
                  text: 'Note',
                  color: AppColors.black,
                  fontSize: 14.sp,
                  needPoppins: true),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 11.h),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.greyEBEBEB),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Column(
                  children: [
                    AppTextStyle.textBoldWeight500(
                        text:
                            'I Want To Go out of town with my father for Medical reasons.',
                        color: AppColors.black847F7F,
                        fontSize: 12.sp,
                        needPoppins: true),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextStyle.textBoldWeight500(
                        text:
                            'I Want To Go out of town with my father for Medical reasons.',
                        color: AppColors.black847F7F,
                        fontSize: 12.sp,
                        needPoppins: true),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(ConfirmDeliveryScreen());
                  },
                  child: Container(
                    height: 48.h,
                    width: 194.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.sp),
                        color: AppColors.primaryColor),
                    child: Center(
                      child: AppTextStyle.textBoldWeight600(
                        text: 'Deliver',
                        fontSize: 18.sp,
                        color: AppColors.white,
                        needPoppins: true,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
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

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var path = Path();
    double dashWidth = 4, dashSpace = 4;
    double startY = 0;
    while (startY < size.height) {
      path.moveTo(size.width / 2, startY);
      path.lineTo(size.width / 2, startY + dashWidth);
      startY += dashWidth + dashSpace;
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class StepData {
  final String title;
  final bool isCompleted;
  final Color color;
  final double circleSize;

  StepData(this.title, this.isCompleted, this.color, this.circleSize);
}

class StepperWidget extends StatefulWidget {
  final List<StepData> steps;

  StepperWidget({required this.steps});

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemCount: widget.steps.length,
      itemBuilder: (context, index) {
        final step = widget.steps[index];
        final isLastStep = index == widget.steps.length - 1;
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    _buildIndicator(step.isCompleted, step.color,
                        step.circleSize, index == _currentStep),
                    if (!isLastStep) _buildLine(step.circleSize),
                  ],
                ),
                SizedBox(width: 5),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentStep = index;
                      });
                    },
                    child: Text(
                      step.title,
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: _currentStep == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color:
                            _currentStep == index ? step.color : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildIndicator(
      bool isCompleted, Color color, double size, bool isCurrent) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: isCurrent ? color : Colors.grey,
          width: 2,
        ),
      ),
      child: isCompleted
          ? Icon(Icons.check, color: Colors.white, size: size * 0.5)
          : SizedBox.shrink(),
    );
  }

  Widget _buildLine(double circleSize) {
    return Container(
      width: 2,
      height: 15, // Adjust height as needed for spacing
      color: Colors.grey,
    );
  }
}
