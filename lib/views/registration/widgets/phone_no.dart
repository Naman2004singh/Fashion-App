import 'package:fashion_app/utils/input_decoration.dart';
import 'package:flutter/material.dart';

class PhoneNo extends StatelessWidget {
  const PhoneNo({super.key, required this.phoneFocusNode});

  final FocusNode phoneFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      focusNode: phoneFocusNode,
      decoration: CustomInputDecoration.getDecoration(hintText: "Phone Number"),
      onChanged: (value) {},
      validator: (value) {},
    );
  }
}
