/*
Create a class Animal with a method makeSound(). 
Create two subclasses Dog and Cat that override this method. 
In main(), use polymorphism to call the overridden method.
 */
// main.dart
import 'Animal.dart';
import 'Cat.dart';
import 'Dog.dart';

void main() {
  Animal animal1 = Dog();
  Animal animal2 = Cat();

  animal1.makeSound(); 
  animal2.makeSound(); 
}
