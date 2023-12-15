bool isValidEmail(String email) {
  final emailRegex =
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
  return emailRegex.hasMatch(email);
}

bool isValidPassword(String password) {
  final passwordRegex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
  return passwordRegex.hasMatch(password);
}
