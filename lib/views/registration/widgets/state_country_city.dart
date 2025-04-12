import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class StateCountryCity extends StatelessWidget {
  const StateCountryCity({super.key, required this.stateController, required this.cityController, required this.countryController});

  final TextEditingController stateController;
  final TextEditingController cityController;
  final TextEditingController countryController;

  @override
  Widget build(BuildContext context) {
    final textFieldBoderRadius = AppConstants.textBoxRadius;
    final textFieldBorderWidth = AppConstants.textFieldBorderWidth;
    return CountryStateCityPicker(
      country: countryController,
     state: stateController, 
     city: cityController,
     dialogColor: AppColor.lightColor,
     textFieldDecoration: InputDecoration(
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(color: AppColor.lightColor, width: textFieldBorderWidth)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(color: AppColor.themeColor, width: textFieldBorderWidth)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(color: AppColor.redColor, width: textFieldBorderWidth)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldBoderRadius),
            borderSide: BorderSide(color: AppColor.lightredColor, width: textFieldBorderWidth)),
      ),
     );
  }
}
