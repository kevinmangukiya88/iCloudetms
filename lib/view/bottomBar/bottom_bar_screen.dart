import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:driver_mobile/components/common_drawer.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:driver_mobile/view/home/home_screen.dart';
import 'package:driver_mobile/view/notification/notification_screen.dart';
import 'package:driver_mobile/view/payroll/payroll_screen.dart';
import 'package:driver_mobile/view/support/support_screen.dart';
import 'package:driver_mobile/view/trip/trip_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  BottomBarController bottomBarController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomBarController.scaffoldKey,
      backgroundColor: Colors.white,
      body: GetBuilder<BottomBarController>(
        builder: (controller) {
          return PageView(
            controller: controller.pageController,
            children: controller.pages,
            onPageChanged: (val) {
              controller.updateIndex(val);
            },
          );
        },
      ),
      drawer: GetBuilder<BottomBarController>(
        builder: (controller) {
          return commonDrawer(controller);
        },
      ),
      bottomNavigationBar: GetBuilder<BottomBarController>(
        builder: (controller) {
          return controller.currentIndex < 4
              ? Container(
                  padding:
                      EdgeInsets.only(bottom: 0), // Adjust padding for labels
                  color: AppColors.primaryColor.withOpacity(0.2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CurvedNavigationBar(
                        key: controller.navBarKey,
                        index: controller.currentIndex,
                        height: 55.0,
                        items: controller.bottomNavItems(),
                        color: AppColors.primaryColor.withOpacity(0.2),
                        buttonBackgroundColor: AppColors.primaryColor,
                        backgroundColor: Colors.white,
                        animationCurve: Curves.easeInOut,
                        animationDuration: Duration(milliseconds: 600),
                        onTap: (index) {
                          controller.jumpToPage(index);
                        },
                        letIndexChange: (index) => true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: controller.labels(),
                      )
                    ],
                  ),
                )
              : SizedBox.shrink();
        },
      ),
    );
  }
}
