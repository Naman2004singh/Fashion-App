import 'package:fashion_app/bloc/registration/register_bloc.dart';
import 'package:fashion_app/config/constants/app_color.dart';
import 'package:fashion_app/config/constants/app_constants.dart';
import 'package:fashion_app/config/constants/strings.dart';
import 'package:fashion_app/config/constants/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets.dart';
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
  void initState() {
    super.initState();
    stateController.addListener(_onStateChanged);
    countryController.addListener(_onCountryChanged);
    cityController.addListener(_onCityChanged);
  }

  @override
  void dispose() {
    countryController.removeListener(_onCountryChanged);
    cityController.removeListener(_onCityChanged);
    stateController.removeListener(_onStateChanged);
    super.dispose();
  }

  void _onCountryChanged() {
    BlocProvider.of<RegisterBloc>(context)
        .add(CountryChanged(country: countryController.text));
  }

  void _onStateChanged(){
    BlocProvider.of<RegisterBloc>(context)
        .add(StateChanged(state: stateController.text));
  }

  void _onCityChanged(){
    BlocProvider.of<RegisterBloc>(context)
        .add(CityChanged(city: cityController.text));
  }

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
