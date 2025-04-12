part of 'register_bloc.dart';

class RegisterStates extends Equatable {
  const RegisterStates(
      {this.name = '',
      this.email = '',
      this.phoneNo = 0,
      this.gender = '',
      this.country = '',
      this.city = '',
      this.state = '',
      this.message = ''});

  final String name;
  final String email;
  final int phoneNo;
  final String gender;
  final String country;
  final String city;
  final String state;
  final String message;

  RegisterStates copyWith(
      {String? name,
      String? email,
      int? phoneNo,
      String? country,
      String? city,
      String? state,
      String? gender,
      String? message}) {
    return RegisterStates(
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNo: phoneNo ?? this.phoneNo,
        gender: gender ?? this.gender,
        country: country ?? this.country,
        city: city ?? this.city,
        state: state ?? this.state,
        message: message ?? this.message);
  }

  @override
  List<Object> get props =>
      [name, email, phoneNo, gender, country, state, city, message];
}
