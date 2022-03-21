import 'package:flutter/material.dart';

import 'package:login_ekrani/constants/borders.dart';
import 'package:login_ekrani/constants/strings.dart';
import 'package:login_ekrani/constants/text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: AppBorders.loginPageTextFieldsBorder,
          border: AppBorders.loginPageTextFieldsBorder,
          hintText: hintText,
          hintStyle: AppTextStyles.loginPageTextFieldsHintTextStyle),
    );
  }
}
