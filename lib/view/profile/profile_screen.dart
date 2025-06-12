import 'package:driver_mobile/components/common_text_filed.dart';
import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                ),
                Positioned(
                  bottom: -50,
                  left: 20,
                  child: Container(
                    height: 121.h,
                    width: 121.w,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,border: Border.all(color: Colors.black),),
                    child: Stack(
                      children: [
                        Center(child: Icon(Icons.person,size: 70)),
                        Positioned(
                          bottom: 10,
                          right: 3,
                          child: Container(
                            height: 21.h,
                            width: 21.h,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: AppColors.primaryColor,
                            ),
                            child: Center(child: Icon(Icons.camera_alt,color: Colors.white, size: 12,)),
                          ),
                        )
                      ],
                    ),
                  ),

                ),
              ],
            ),
            SizedBox(height: 98.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commonTextFiled(label: 'Your Name',hintText: 'Enter number...'),
                  SizedBox(height: 14,),
                  commonTextFiled(label: 'Email ID',hintText: 'example123@gmail.com'),
                  SizedBox(height: 14,),
                  commonTextFiled(label: 'Phone No',hintText: '022-12-34-567-890'),
                  SizedBox(height: 14,),
                  commonTextFiled(label: 'Licence Number',hintText: 'rgt1234679wugdjk98467'),
                  SizedBox(height: 50,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
