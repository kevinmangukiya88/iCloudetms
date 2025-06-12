import 'package:driver_mobile/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

commonTextFiled(
    {required String hintText,
    TextEditingController? controller,
    TextInputType keyBodType = TextInputType.name,
    int maxLIne = 1,
    void Function(String)? onChange,
    void Function()? onTap,
    bool readOnly = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    EdgeInsetsGeometry? padding = const EdgeInsets.symmetric(horizontal: 20),
    double borderPadding = 100,
    String? Function(String?)? validator}) {
  return TextFormField(
    cursorHeight: 24.sp,
    cursorColor: AppColors.black,
    controller: controller,
    validator: validator,
    onTap: onTap,
    readOnly: readOnly,
    onChanged: onChange,
    maxLines: maxLIne,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      contentPadding: padding,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderPadding),
        borderSide: BorderSide(color: AppColors.greyC1C1C1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderPadding),
        borderSide: BorderSide(color: AppColors.greyC1C1C1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderPadding),
        borderSide: BorderSide(color: AppColors.greyC1C1C1),
      ),
      hintStyle: TextStyle(
        color: AppColors.grey818181,
        fontSize: 15.sp,
        fontFamily: 'Axiforma',
        height: 0.0,
        fontWeight: FontWeight.w400,
      ),
      hintText: hintText,
    ),
    keyboardType: keyBodType,
  );
}
