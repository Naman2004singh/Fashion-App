import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:fashion_app/config/constants/styles.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppConstants.screenWidth(context);
    double smallPadding = AppConstants.padding10;
    double screenPadding = AppConstants.screenPadding;
    double borderRadius = AppConstants.buttonRadius;
    return GestureDetector(
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(
            horizontal: screenPadding, vertical: smallPadding),
        decoration: BoxDecoration(
            color: AppColor.themeColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(
          "Sign Up",
          style: Styles.headlineMediumWhite,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
