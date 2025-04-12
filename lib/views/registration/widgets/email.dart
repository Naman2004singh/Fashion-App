import 'package:fashion_app/utils/validators.dart';
import 'package:flutter/material.dart';
import 'common_exports.dart';

class Email extends StatelessWidget {
  const Email({super.key, required this.emailFocusNode});

  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          decoration:
              CustomInputDecoration.getDecoration(hintText: "Email Address"),
          onChanged: (value) {
            context.read<RegisterBloc>().add(EmailChanged(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Email is Empty";
            }
            if (Validators.emailValidator(value)) {
              return "Please enter the correct email";
            }
            return null;
          },
        );
      },
    );
  }
}
