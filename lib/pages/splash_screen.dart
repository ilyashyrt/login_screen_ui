// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
              color: Colors.white,
            ),
            width: DeviceUtils.getScaledWidth(context, 1),
            height: DeviceUtils.getScaledHeight(context, 0.4),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome to Laundree!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("This is the first version of our laundry app. Please sign in or create an account below"),
                    //ElevatedButton(onPressed: (){}, child: Text("Log In",style: TextStyle(color: Constants.greenColor),)),
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
