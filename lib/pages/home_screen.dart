// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/constants/assets.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:login_ekrani/constants/strings.dart';
import 'package:login_ekrani/utils/device_utils.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Image.asset(AppAssets.homePageClothFadedAsset,
              width: DeviceUtils.getScaledWidth(context, 1)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                AppAssets.homePageMachineAsset,
                width: DeviceUtils.getScaledWidth(context, 0.5),
                height: DeviceUtils.getScaledHeight(context, 0.4),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: AppColors.scaffoldBackgroundColor,
              ),
              width: DeviceUtils.getScaledWidth(context, 1),
              height: DeviceUtils.getScaledHeight(context, 0.4),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.homePageTitleText,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          AppStrings.homePageSubtitleText,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.6))),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            primary: AppColors.scaffoldBackgroundColor,
                            fixedSize: Size(
                                DeviceUtils.getScaledWidth(context, 1), 50),
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: Text(
                            AppStrings.homePageLoginButtonText,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: AppColors.greenColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            primary: AppColors.greenColor,
                            fixedSize: Size(
                                DeviceUtils.getScaledWidth(context, 1), 50),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: Text(
                            AppStrings.homePageCreateAnAccountText,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: AppColors.scaffoldBackgroundColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
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
