import 'package:fashion_app/config/constants/app_color.dart';
import 'common_exports.dart';
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

    return BlocBuilder<RegisterBloc, RegisterStates>(
      buildWhen: (previous, current) => previous.gender != current.gender,
      builder: (context, state) {
        return DropdownButtonFormField<String>(
            value: selectGender,
            focusNode: genderFocusNode,
            items: genderOptions
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<RegisterBloc>().add(GenderChanged(gender: value));
              }
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Gender is empty";
              }
              return null;
            },
            dropdownColor: AppColor.lightColor,
            decoration: CustomInputDecoration.getDecoration(
                hintText: "Select your Gender"));
      },
    );
  }
}
