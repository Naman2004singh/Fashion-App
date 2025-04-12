import 'package:flutter/material.dart';

class AppConstants {
  //screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // other constants
  static double padding10 = 10.0;
  static double size10 = 10.0;
  static double size20 = 20;
  static double size30 = 30.0;
  static double screenPadding = 20.0;
  static double textBoxRadius = 15.0;
  static double buttonRadius = 25.0;
  static double padding30 = 30.0;
  static double textFieldBorderWidth = 2.0;
}
