import 'package:fashion_app/utils/input_decoration.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({super.key, required this.emailFocusNode});

  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      decoration: CustomInputDecoration.getDecoration(hintText: "Email Address"),
      onChanged: (value) {},
      validator: (value) {},
    );
  }
}
