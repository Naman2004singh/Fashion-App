import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:fashion_app/config/constants/styles.dart';
import 'package:fashion_app/views/registration/widgets/email.dart';
import 'package:fashion_app/views/registration/widgets/full_name.dart';
import 'package:fashion_app/views/registration/widgets/gender.dart';
import 'package:fashion_app/views/registration/widgets/phone_no.dart';
import 'package:fashion_app/views/registration/widgets/state_country_city.dart';
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
  final TextEditingController stateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: ListView(
          padding: EdgeInsets.all(AppConstants.largePadding),
          children: [
            Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: Styles.headlineLarge,
            ),
            Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FullName(nameFocusNode: nameFocusNode),
                    Email(emailFocusNode: emailFocusNode),
                    PhoneNo(phoneFocusNode: phoneFocusNode),
                    Gender(genderFocusNode: genderFocusNode),
                    StateCountryCity(
                        stateController: stateController,
                        cityController: cityController,
                        countryController: countryController)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
