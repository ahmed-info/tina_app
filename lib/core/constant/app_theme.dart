// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';

ThemeData themeEnglish = ThemeData(
  backgroundColor: AppColor.black,
  fontFamily: "PlayfairDisplay",
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 20, color: AppColor.black, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 26, color: AppColor.black, fontWeight: FontWeight.bold),
    headline3: TextStyle(
        fontSize: 12, color: AppColor.black, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
    bodyText2: const TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
  ),
);

ThemeData themeArabic = ThemeData(
  backgroundColor: AppColor.black,
  fontFamily: "Cairo",
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 20, color: AppColor.black, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 26, color: AppColor.black, fontWeight: FontWeight.bold),
    headline3: TextStyle(
        fontSize: 12, color: AppColor.black, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
    bodyText2: const TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
  ),
);
