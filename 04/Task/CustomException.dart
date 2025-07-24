class InvalidAgeException implements Exception {
  String errorMessage() => "Age must be 18 or above.";
}

void checkAge(int age) {
  if (age < 18) {
    throw InvalidAgeException();
  } else {
    print("Valid age. Access granted.");
  }
}

void main() {
  try {
    checkAge(16); 
  } catch (e) {
    if (e is InvalidAgeException) {
      print(e.errorMessage());
    } else {
      print("Unknown error: \$e");
    }
  }
}
