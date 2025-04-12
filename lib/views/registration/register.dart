import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:fashion_app/config/constants/strings.dart';
import 'package:fashion_app/config/constants/styles.dart';
import 'package:fashion_app/views/registration/widgets/email.dart';
import 'package:fashion_app/views/registration/widgets/full_name.dart';
import 'package:fashion_app/views/registration/widgets/gender.dart';
import 'package:fashion_app/views/registration/widgets/phone_no.dart';
import 'package:fashion_app/views/registration/widgets/register_button.dart';
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
    double sizedboxLarge = AppConstants.size30;
    // double sizedboxMedium = AppConstants.size20;
    double sizedboxSmall = AppConstants.size10;
    double paddingLarge = AppConstants.padding30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: ListView(
          padding: EdgeInsets.all(paddingLarge),
          children: [
            SizedBox(
              height: sizedboxLarge,
            ),
            Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: Styles.headlineLarge,
            ),
            // SizedBox(
            //   height: sizedboxMedium,
            // ),
            Text(
              Strings.registerScreenText,
              textAlign: TextAlign.center,
              style: Styles.bodyMediumGrey,
            ),
            SizedBox(
              height: sizedboxLarge,
            ),
            Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FullName(nameFocusNode: nameFocusNode),
                    SizedBox(
                      height: sizedboxSmall,
                    ),
                    Email(emailFocusNode: emailFocusNode),
                    SizedBox(
                      height: sizedboxSmall,
                    ),
                    PhoneNo(phoneFocusNode: phoneFocusNode),
                    SizedBox(
                      height: sizedboxSmall,
                    ),
                    Gender(genderFocusNode: genderFocusNode),
                    SizedBox(
                      height: sizedboxSmall,
                    ),
                    StateCountryCity(
                        stateController: stateController,
                        cityController: cityController,
                        countryController: countryController),
                    SizedBox(
                      height: sizedboxLarge,
                    ),
                    const RegisterButton(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
