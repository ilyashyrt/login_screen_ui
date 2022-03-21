// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static final TextStyle homePageTitleTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp));

  static final TextStyle homePageSubtitleTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(color: AppColors.blackColorWithOpacity));

  static final TextStyle homePageLoginButtonTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: AppColors.greenColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold));

  static final TextStyle homePageCreateAnAccountTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: AppColors.scaffoldBackgroundColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold));
}
