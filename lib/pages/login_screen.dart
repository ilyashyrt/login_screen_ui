// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ekrani/utils/constants.dart';
import 'package:login_ekrani/utils/device_utils.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back,
                    color: Constants.scaffoldBackgroundColor)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Log in to your account",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.w600),
                  color: Constants.scaffoldBackgroundColor,
                  fontSize: 17),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Constants.scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            width: DeviceUtils.getScaledWidth(context, 1),
            height: DeviceUtils.getScaledHeight(context, 0.7),
          ),
        ],
      ),
    );
  }
}
