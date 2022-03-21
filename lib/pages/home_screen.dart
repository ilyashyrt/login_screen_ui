// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:login_ekrani/constants/assets.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:login_ekrani/constants/strings.dart';
import 'package:login_ekrani/constants/text_styles.dart';
import 'package:login_ekrani/utils/device_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 40.w),
          child: Image.asset(AppAssets.homePageClothFadedAsset,
              width: DeviceUtils.getScaledWidth(context, 1)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 20.w),
              child: Image.asset(
                AppAssets.homePageMachineAsset,
                width: DeviceUtils.getScaledWidth(context, 0.5),
                height: DeviceUtils.getScaledHeight(context, 0.4),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
                color: AppColors.scaffoldBackgroundColor,
              ),
              width: DeviceUtils.getScaledWidth(context, 1),
              height: DeviceUtils.getScaledHeight(context, 0.4),
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.all(20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.homePageTitleText,
                        style: AppTextStyles.homePageTitleTextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.w),
                        child: Text(
                          AppStrings.homePageSubtitleText,
                          style: AppTextStyles.homePageSubtitleTextStyle,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r)),
                            primary: AppColors.scaffoldBackgroundColor,
                            fixedSize: Size(
                                DeviceUtils.getScaledWidth(context, 1), 50.h),
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: Text(
                            AppStrings.homePageLoginButtonText,
                            style: AppTextStyles.homePageLoginButtonTextStyle,
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r)),
                            primary: AppColors.greenColor,
                            fixedSize: Size(
                                DeviceUtils.getScaledWidth(context, 1), 50.h),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: Text(
                            AppStrings.homePageCreateAnAccountText,
                            style:
                                AppTextStyles.homePageCreateAnAccountTextStyle,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
