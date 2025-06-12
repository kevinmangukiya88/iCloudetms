import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:driver_mobile/constants/assets.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/view/home/home_screen.dart';
import 'package:driver_mobile/view/notification/notification_screen.dart';
import 'package:driver_mobile/view/payroll/payroll_screen.dart';
import 'package:driver_mobile/view/profile/profile_screen.dart';
import 'package:driver_mobile/view/support/support_screen.dart';
import 'package:driver_mobile/view/trip/trip_detail_screen.dart';
import 'package:driver_mobile/view/trip/trip_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  int currentIndex = 0;
  final pageController = PageController();
  final notchBottomBarController = NotchBottomBarController(index: 0);
  final navBarKey = GlobalKey<CurvedNavigationBarState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey2 = new GlobalKey<ScaffoldState>();

  final List<String> labelNames = ['Home', 'Trips', 'Payroll', 'Profile'];
  final List<Widget> pages = [
    HomeScreen(),
    TripScreen(),
    PayrollScreen(),
    ProfileScreen(),
    NotificationScreen(),
    SupportScreen(),
  ];

  List drawerIconList=[
    AppImages.ic_home,
    AppImages.ic_trips,
    AppImages.ic_payroll,
    AppImages.ic_profile,
    AppImages.ic_notification,
    AppImages.ic_support,
    AppImages.ic_logout,
  ];

  List drawerTitle=[
    'Dashboard',
    'Trips',
    'Payroll',
    'Profile',
    'Notification',
    'Support',
    'Logout',
  ];
  void updateIndex(int index) {
    currentIndex = index;
    update();
  }

  void jumpToPage(int index) {
    pageController.jumpToPage(index);
    currentIndex = index;
    update();
  }

  List<Widget> bottomNavItems() {
    List<String> icons = [
      AppImages.ic_home,
      AppImages.ic_trips,
      AppImages.ic_payroll,
      AppImages.ic_profile,
    ];
    return List.generate(icons.length, (index) {
      return Container(
        height: currentIndex == index ? 40 : 40,
        width: 50,
        padding: EdgeInsets.all(10),
        child: SvgPicture.asset(
          icons[index],
          colorFilter: ColorFilter.mode(
              currentIndex == index ? Colors.white : AppColors.grey909090,
              BlendMode.srcIn),
        ),
      );
    });

  }

  List<Widget> labels() {
    return List.generate(labelNames.length, (index) {
      return Container(
        margin: EdgeInsets.only(bottom: 5),
        width: 52,
        child: Center(
          child: Text(
            labelNames[index],
            style: TextStyle(fontSize: 12.sp,
              height: 1.5,
              color:
                  currentIndex == index ? AppColors.primaryColor: Colors.grey,
              fontWeight: FontWeight.w400,fontFamily: 'Poppins'
            ),
          ),
        ),
      );
    });
  }
}
