import 'package:cloud_project/res/app_colors.dart';
import 'package:flutter/material.dart';

class AppFontStyle {
  static TextStyle largeTitle() {
    return const TextStyle(
        color: AppColors.black, fontWeight: FontWeight.w700, fontSize: 26);
  }

  static TextStyle mediumTextStyle() {
    return const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black);
  }

  static TextStyle bottomTextStyle() {
    return const TextStyle(
        fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black);
  }

  static TextStyle bottomSelectTextStyle() {
    return const TextStyle(
        fontSize: 13, fontWeight: FontWeight.w700, color: Colors.black);
  }

  static TextStyle mediumBoldTextStyle() {
    return const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black);
  }

  static TextStyle mediumLargeTitle() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20);
  }

  static TextStyle titleTextStyle() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w700, fontSize: 17);
  }

  static TextStyle subTitleTextStyle() {
    return const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15);
  }

  static TextStyle buttonTextStyle() {
    return const TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700);
  }
}
