import 'package:flutter/material.dart';

class AppTextStyle {
  static textBoldWeight400(
      {required String text,
      double? fontSize,
      Color? color,
      int maxLines = 2,
      TextAlign? textAlign,
      FontWeight fontWeight = FontWeight.w400,
      bool needPoppins = false,
      String? fontFamily}) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          height: 0.0,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          fontFamily: needPoppins ? 'Poppins' : 'Axiforma'),
    );
  }

  static Widget textBoldWeight500(
      {required String text,
      double? fontSize,
      Color? color,
      height = 0.0,
      int maxLine = 2,
      TextAlign? textAlign,
      TextDecoration textDecoration = TextDecoration.none,
      FontWeight fontWeight = FontWeight.w500,
      bool needPoppins = false,
      FontStyle? fontStyle,
      String? fontFamily}) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: null,
      maxLines: maxLine,
      style: TextStyle(
          height: height,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          decoration: textDecoration,
          decorationColor: color,
          fontSize: fontSize,
          color: color,
          fontFamily: needPoppins ? 'Poppins' : 'Axiforma'),
    );
  }

  static Widget textBoldWeight600(
      {required String text,
      double? fontSize,
      Color? color,
      int maxLine = 2,
      TextAlign? textAlign,
      TextDecoration? textDecoration,
      FontWeight fontWeight = FontWeight.w600,
      bool needPoppins = false,
      String? fontFamily}) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      style: TextStyle(
          decoration: textDecoration,
          fontWeight: fontWeight,
          decorationStyle: TextDecorationStyle.solid,
          decorationColor: Colors.white,
          fontSize: fontSize,
          color: color,
          fontFamily: needPoppins ? 'Poppins' : 'Axiforma'),
    );
  }

  static textBoldWeight700(
      {required String text,
      double? fontSize,
      Color? color,
      TextDecoration textDecoration = TextDecoration.none,
      bool needPoppins = false,
      TextAlign? textAlign,
      String? fontFamily}) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
          decoration: textDecoration,
          color: color,
          fontFamily: needPoppins ? 'Poppins' : 'Axiforma'),
    );
  }

  static textBoldWeight800(
      {required String text,
      double? fontSize,
      Color? color,
      TextDecoration textDecoration = TextDecoration.none,
      bool needPoppins = false,
      TextAlign? textAlign,
      String? fontFamily}) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: fontSize,
          decoration: textDecoration,
          color: color,
          fontFamily: needPoppins ? 'Poppins' : 'Axiforma'),
    );
  }
}
