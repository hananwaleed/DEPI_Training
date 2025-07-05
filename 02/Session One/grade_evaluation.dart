/*
Write a Dart program that has a number between 0 and 100, and prints:
"Excellent" if the number is 90 or above
"Good" if it is 75–89
"Average" if it is 50–74
"Fail" if below 50
*/

void main() {
  int grade = 84;

  if (grade >= 90) {
    print("Excellent");
  } else if (grade >= 75) {
    print("Good");
  } else if (grade >= 50) {
    print("Average");
  } else {
    print("Fail");
  }
}
