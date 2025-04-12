import 'package:fashion_app/utils/input_decoration.dart';
import 'package:fashion_app/views/registration/widgets/common_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNo extends StatelessWidget {
  const PhoneNo({super.key, required this.phoneFocusNode});

  final FocusNode phoneFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      buildWhen: (previous, current) => previous.phoneNo != current.phoneNo,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.phone,
          focusNode: phoneFocusNode,
          decoration:
              CustomInputDecoration.getDecoration(hintText: "Phone Number"),
          onChanged: (value) {
            int? phoneNum = int.tryParse(value);
            if (phoneNum != null) {
              context
                  .read<RegisterBloc>()
                  .add(PhoneNoChanged(phoneNo: phoneNum));
            }
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Phone Number is empty";
            }
            if (value.length < 11) {
              return "Enter the correct mobile number";
            }
            return null;
          },
        );
      },
    );
  }
}
