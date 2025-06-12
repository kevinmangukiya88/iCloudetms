import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'spalsh_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.offAll(SplashTwoScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
          child: SvgPicture.asset('assets/svg/splash.svg',fit: BoxFit.cover),
      ),
    );
  }
}
