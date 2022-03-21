import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ekrani/constants/routes.dart';
import 'package:login_ekrani/pages/login_screen.dart';
import 'package:login_ekrani/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: () => MaterialApp(
        routes: {
          AppRoutes.homePage: (context) => HomePage(),
          AppRoutes.loginPage: (context) => LoginScreen(),
        },
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
