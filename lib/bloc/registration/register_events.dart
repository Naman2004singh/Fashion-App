part of 'register_bloc.dart';

abstract class RegisterEvents extends Equatable {
  const RegisterEvents();

  @override
  List<Object> get props => [];
}

//Event1 entering the name
class NameChanged extends RegisterEvents {
  const NameChanged({required this.name});

  final String name;

  @override
  List<Object> get props => [name];
}

//Event2 entering the email
class EmailChanged extends RegisterEvents {
  const EmailChanged({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

//Event3 entering the phoneNo
class PhoneNoChanged extends RegisterEvents {
  const PhoneNoChanged({required this.phoneNo});

  final int phoneNo;

  @override
  List<Object> get props => [phoneNo];
}

//Event4 entering the email
class GenderChanged extends RegisterEvents {
  const GenderChanged({required this.gender});

  final String gender;

  @override
  List<Object> get props => [gender];
}

//Event5 entering the country
class CountryChanged extends RegisterEvents {
  const CountryChanged({required this.country});

  final String country;

  @override
  List<Object> get props => [country];
}

//Event6 entering the city
class CityChanged extends RegisterEvents {
  const CityChanged({required this.city});

  final String city;

  @override
  List<Object> get props => [city];
}

//Event7 entering the state
class StateChanged extends RegisterEvents {
  const StateChanged({required this.state});

  final String state;

  @override
  List<Object> get props => [state];
}

//Event8 clicking on the login button
class ClickRegistrationButton extends RegisterEvents{}