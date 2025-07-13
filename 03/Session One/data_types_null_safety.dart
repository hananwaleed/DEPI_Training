/*
Create variables of different types:

String, int, double, bool, List, and Map

Create a variable that can be null (nullable), and handle it safely using ?? or if.


 */
void main() {
  String name = "Hanan";
  int age = 19;
  double height = 1.65;
  bool isStudent = true;
  double? grade = null;

  List<String> hobbies = ["Reading", "Coding", "Gaming"];

  Map<String, dynamic> profile = {
    "name": name,
    "age": age,
    "isStudent": isStudent,
  };

  if (grade != null) {
    print("Grade is $grade");
  } else {
    print("Grade is not available");
  }

  print(hobbies);
  print(profile);
}
