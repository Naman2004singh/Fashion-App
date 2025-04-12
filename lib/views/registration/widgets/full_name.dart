import 'package:fashion_app/utils/input_decoration.dart';
import 'package:flutter/material.dart';

class FullName extends StatelessWidget {
  const FullName({super.key, required this.nameFocusNode});

  final FocusNode nameFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      focusNode: nameFocusNode,
      decoration: CustomInputDecoration.getDecoration(hintText: "Enter your Full Name"),
      onChanged: (value) {},
      validator: (value) {},
    );
  }
}
