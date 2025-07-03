/*
Write a Dart program to check if a user’s age is greater than 18 and print "Adult" 
if true, otherwise "Minor". 
*/
void main() {
  int age = 20;

  // Check if the person is an adult or a minor using the ternary operator
  String result = (age >= 18) ? "Adult" : "Minor";

  print("Age: $age");
  print("Status: $result");
}
