import 'package:flutter/material.dart';
import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';

class CustomInputDecoration {
  static InputDecoration getDecoration({
    required String hintText,
    bool enabled = true,
  }) {
    final textFieldBoderRadius = AppConstants.textBoxRadius;
    final textFieldBorderWidth = AppConstants.textFieldBorderWidth;
    
    return InputDecoration(
      hintText: hintText,
      enabled: enabled,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBoderRadius),
        borderSide: BorderSide(
          color: AppColor.lightColor, 
          width: textFieldBorderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBoderRadius),
        borderSide: BorderSide(
          color: AppColor.themeColor, 
          width: textFieldBorderWidth,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBoderRadius),
        borderSide: BorderSide(
          color: AppColor.redColor, 
          width: textFieldBorderWidth,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldBoderRadius),
        borderSide: BorderSide(
          color: AppColor.lightredColor, 
          width: textFieldBorderWidth,
        ),
      ),
    );
  }
}