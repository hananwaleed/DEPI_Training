import 'Student.dart';

void main() {

  Student student1 = Student(name: "Hanan", age: 19, marks: 85.5);
  Student student2 = Student(name: "Rahma", age: 20, marks: 90.0);
  Student student3 = Student(name: "Mariam", age: 18, marks: 78.3);

  student1.displayDetails();
  print("--------------");
  student2.displayDetails();
  print("--------------");
  student3.displayDetails();
}
