import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/styles.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final genderFocusNode = FocusNode();
  final countryFocusNode = FocusNode();
  final stateFocusNode = FocusNode();
  final cityFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightColor,
      body: ListView(
        children: [
          Text(
            "Create Account",
            textAlign: TextAlign.center,
          ),
          Form(
            child: Column())
        ],
      ),
    );
  }
}

