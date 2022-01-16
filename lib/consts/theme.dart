import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class AppColors {
  static Color bgColor = const Color(0xFFFFFFFF);
  static Color primaryColor = const Color(0xffE5E6F1);
  static Color textColor = const Color(0xff023047);
  static Color subtextColor = const Color(0xFF385c70);
  static Color subheadingColor = const Color(0xffB5B5B5);
  static Color iconColor = const Color(0xff354075);
  static Color buttonColor = const Color(0xff4F68BF);
  static Color tilebgColor = const Color(0xffF2F1F6);
}

ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: AppColors.bgColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.bgColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.subheadingColor,
      ),
      headline2: TextStyle(
        color: AppColors.textColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
          color: AppColors.textColor,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0),
      bodyText1: TextStyle(
        color: AppColors.subtextColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomAppBarColor: AppColors.primaryColor);
