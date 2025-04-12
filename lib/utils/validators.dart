class Validators {
  static bool emailValidator(String email) {
    bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+$')
            .hasMatch(email);
    return emailValid;
  }
}
