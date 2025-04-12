import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({super.key, required this.emailFocusNode});

  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    final textFieldBoderRadius = AppConstants.textBoxRadius;
    final textFieldBorderWidth = AppConstants.textFieldBorderWidth;
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      decoration: InputDecoration(
        hintText: "Email Address",
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(
                color: AppColor.lightColor, width: textFieldBorderWidth)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(
                color: AppColor.themeColor, width: textFieldBorderWidth)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(
                color: AppColor.redColor, width: textFieldBorderWidth)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(
                color: AppColor.lightredColor, width: textFieldBorderWidth)),
      ),
      onChanged: (value) {},
      validator: (value) {},
    );
  }
}
