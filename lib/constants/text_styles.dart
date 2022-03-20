import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/constants/colors.dart';

class AppTextStyles {
  static final TextStyle homePageTitleTextStyle = GoogleFonts.poppins(
      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20));

  static final TextStyle homePageSubtitleTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(color: Colors.black.withOpacity(0.6)));

  static final TextStyle homePageLoginButtonTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: AppColors.greenColor,
          fontSize: 16,
          fontWeight: FontWeight.bold));

  static final TextStyle homePageCreateAnAccountTextStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: AppColors.scaffoldBackgroundColor,
          fontSize: 16,
          fontWeight: FontWeight.bold));
}
