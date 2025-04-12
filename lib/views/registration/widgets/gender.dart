import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key, required this.genderFocusNode});

  final FocusNode genderFocusNode;

  @override
  Widget build(BuildContext context) {
    String? selectGender;
    final List<String> genderOptions = [
      'Male',
      'Female',
      'Other',
    ];
    final textFieldBoderRadius = AppConstants.textBoxRadius;
    final textFieldBorderWidth = AppConstants.textFieldBorderWidth;
    return DropdownButtonFormField<String>(
      value: selectGender,
      focusNode: genderFocusNode,
      items: genderOptions
          .map((e) => DropdownMenuItem(value: e, 
          child: Text(e)))
          .toList(),
      onChanged: (value) {},
      dropdownColor: AppColor.lightColor,
      decoration: InputDecoration(
        hintText: "Select your Gender",
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
    );
  }
}
