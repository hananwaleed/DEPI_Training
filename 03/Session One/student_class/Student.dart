
class Student {
  
  String name;
  int age;
  double marks;


  Student({
    required this.name,
    required this.age,
    required this.marks,
  });


  void displayDetails() {
    print("Student Details:");
    print("Name: $name");
    print("Age: $age");
    print("Marks: $marks");
  }
}

