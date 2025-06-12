import 'package:driver_mobile/constants/colors.dart';
import 'package:driver_mobile/constants/test_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

commonTextFiled(
    {String label = '',
    String hintText = '',
    TextEditingController? controller,
    Widget? prefixIcon,
      int maxLIne = 1,
      TextInputType keyBodType = TextInputType.name,
      void Function(String)? onChange,
      void Function()? onTap,
      bool readOnly = false,
      String? Function(String?)? validator,
    Widget? suffixIcon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppTextStyle.textBoldWeight500(
          text: label,
          color: AppColors.black282828,
          fontSize: 14.sp,
          needPoppins: true),
      SizedBox(
        height: 8,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  blurRadius: 16,
                  spreadRadius: 0,
                  offset: Offset(2.0, 1.0),
                  color: AppColors.black.withOpacity(0.10)),
            ]),
        child: TextFormField(
          controller: controller,
          onTap: onTap,
          maxLines: maxLIne,

          readOnly: readOnly,
          validator: validator,
          onChanged: onChange,
          keyboardType: keyBodType,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.greyA2A2A2),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: AppColors.greyA2A2A2),
        ),
      )
    ],
  );
}
