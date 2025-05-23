import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:fashion_app/config/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'common_exports.dart';

class StateCountryCity extends StatelessWidget {
  const StateCountryCity({super.key, required this.stateController, required this.cityController, required this.countryController});

  final TextEditingController stateController;
  final TextEditingController cityController;
  final TextEditingController countryController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      buildWhen: (previous, current) => previous.country != current.country ||
      previous.city != current.city ||
      previous.state != current.state,
      builder: (context, state) {
        return CountryStateCityPicker(
      country: countryController,
     state: stateController, 
     city: cityController,
     dialogColor: AppColor.lightColor,
     textFieldDecoration: CustomInputDecoration.getDecoration(hintText: "Select"),
     );
      },);
  }
}
