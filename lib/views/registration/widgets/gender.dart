import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/utils/input_decoration.dart';
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
  
    return DropdownButtonFormField<String>(
      value: selectGender,
      focusNode: genderFocusNode,
      items: genderOptions
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (value) {},
      dropdownColor: AppColor.lightColor,
      decoration: CustomInputDecoration.getDecoration(hintText: "Select your Gender")
    );
  }
}
