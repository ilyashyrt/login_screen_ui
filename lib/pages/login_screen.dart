// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/constants/borders.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:login_ekrani/constants/strings.dart';
import 'package:login_ekrani/constants/text_styles.dart';
import 'package:login_ekrani/utils/device_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ekrani/widgets/elevated_button_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.r),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,
                    color: AppColors.scaffoldBackgroundColor)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.r),
            child: Text(
              AppStrings.loginPageTitleText,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.w600),
                  color: AppColors.scaffoldBackgroundColor,
                  fontSize: 17.sp),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r)),
            ),
            width: DeviceUtils.getScaledWidth(context, 1),
            height: DeviceUtils.getScaledHeight(context, 0.7),
            child: Container(
              padding: EdgeInsets.all(20.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.loginPageEmailText,
                      style: AppTextStyles.loginPageEmailAndPasswordTextStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: AppBorders.loginPageTextFieldsBorder,
                            border: AppBorders.loginPageTextFieldsBorder,
                            hintText:
                                AppStrings.loginPageFirstTextFieldHintText,
                            hintStyle:
                                AppTextStyles.loginPageTextFieldsHintTextStyle),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.r),
                      child: Text(
                        AppStrings.loginPagePasswordText,
                        style: AppTextStyles.loginPageEmailAndPasswordTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: AppBorders.loginPageTextFieldsBorder,
                            border: AppBorders.loginPageTextFieldsBorder,
                            hintText:
                                AppStrings.loginPageSecondTextFieldHintText,
                            hintStyle:
                                AppTextStyles.loginPageTextFieldsHintTextStyle),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            AppStrings.loginPageForgotPasswordText,
                            style:
                                AppTextStyles.loginPageForgotPasswordTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.r),
                      child: ElevatedButtonWidget(
                        textStyle:
                            AppTextStyles.homePageCreateAnAccountTextStyle,
                        elevation: 0,
                        backgroundColor: AppColors.greenColor,
                        buttonText: AppStrings.loginPageButtonText,
                        onPressed: () {},
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
