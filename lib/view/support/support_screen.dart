import 'package:driver_mobile/components/common_appbar.dart';
import 'package:driver_mobile/components/common_drawer.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  BottomBarController bottomBarController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Support', actionIcon: SizedBox(),leadingIcon: IconButton(onPressed: () {
        Get.back();
      }, icon: Icon(Icons.arrow_back))),
      drawer: commonDrawer(bottomBarController),
    );
  }
}
