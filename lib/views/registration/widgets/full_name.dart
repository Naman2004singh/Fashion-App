import 'package:flutter/material.dart';
import 'common_exports.dart';

class FullName extends StatelessWidget {
  const FullName({super.key, required this.nameFocusNode});

  final FocusNode nameFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.name,
          focusNode: nameFocusNode,
          decoration: CustomInputDecoration.getDecoration(
              hintText: "Enter your Full Name"),
          onChanged: (value) {
            context.read<RegisterBloc>().add(NameChanged(name: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Name is Empty";
            }
            if (value.length < 4) {
              return "Please enter your full name";
            }
            return null;
          },
        );
      },
    );
  }
}
