import 'Animal.dart';

class Cat extends Animal {
int age;
  Cat(super.name, this.age);
  void disPlayInfo() {
    print("Name:$name");
    print("Age:$age");
  }
}
