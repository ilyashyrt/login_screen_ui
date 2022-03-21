// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:login_ekrani/constants/assets.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:login_ekrani/constants/routes.dart';
import 'package:login_ekrani/constants/strings.dart';
import 'package:login_ekrani/constants/text_styles.dart';
import 'package:login_ekrani/utils/device_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ekrani/widgets/elevated_button_widget.dart';

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
          padding: EdgeInsets.only(top: 40.r),
          child: Image.asset(AppAssets.homePageClothFadedAsset,
              width: DeviceUtils.getScaledWidth(context, 1)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.r),
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
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.homePageTitleText,
                        style: AppTextStyles.homePageTitleTextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.r),
                        child: Text(
                          AppStrings.homePageSubtitleText,
                          style: AppTextStyles.homePageSubtitleTextStyle,
                        ),
                      ),
                      ElevatedButtonWidget(
                        buttonText: AppStrings.homePageLoginButtonText,
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.loginPage);
                        },
                      ),
                      ElevatedButtonWidget(
                        textStyle:
                            AppTextStyles.homePageCreateAnAccountTextStyle,
                        elevation: 0,
                        backgroundColor: AppColors.greenColor,
                        buttonText: AppStrings.homePageCreateAnAccountText,
                        onPressed: () {},
                      ),
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
