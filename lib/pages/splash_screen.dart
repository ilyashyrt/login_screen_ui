// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/utils/constants.dart';
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
      backgroundColor: Constants.greenColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Image.asset(
              "assets/machine.png",
              width: DeviceUtils.getScaledWidth(context, 0.5),
              height: DeviceUtils.getScaledHeight(context, 0.4),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Constants.scaffoldBackgroundColor,
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
                      "Welcome to Laundree!",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "This is the first version of our laundry app. Please sign in or create an account below",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.black.withOpacity(0.6))),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          primary: Constants.scaffoldBackgroundColor,
                          fixedSize: Size(DeviceUtils.getScaledWidth(context, 1),50),
                          elevation: 5,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: GoogleFonts.poppins(textStyle: TextStyle(color: Constants.greenColor,fontSize: 16,fontWeight: FontWeight.bold)),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          primary: Constants.greenColor,
                          fixedSize: Size(DeviceUtils.getScaledWidth(context, 1),50),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Create an Account",
                          style: GoogleFonts.poppins(textStyle: TextStyle(color: Constants.scaffoldBackgroundColor,fontSize: 16,fontWeight: FontWeight.bold)),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
