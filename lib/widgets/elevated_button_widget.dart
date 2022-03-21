import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ekrani/constants/colors.dart';
import 'package:login_ekrani/constants/text_styles.dart';
import 'package:login_ekrani/utils/device_utils.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String buttonText;
  final Function() onPressed;
  final double? elevation;
  final TextStyle? textStyle;
  const ElevatedButtonWidget({
    Key? key,
    this.backgroundColor,
    required this.buttonText,
    required this.onPressed,
    this.elevation,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          primary: backgroundColor ?? AppColors.scaffoldBackgroundColor,
          fixedSize: Size(DeviceUtils.getScaledWidth(context, 1), 50.h),
          elevation: elevation ?? 5,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle ?? AppTextStyles.homePageLoginButtonTextStyle,
        ));
  }
}
