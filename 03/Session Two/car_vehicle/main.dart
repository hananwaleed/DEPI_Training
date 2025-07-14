/*
Create a class Vehicle

It has two properties: brand (String) and year (int)

It has a constructor to initialize both.

Create a class Car that extends Vehicle

Add a new property model (String)

Use a constructor that takes all 3 values: brand, year, and model

In the main() function:

Create a Car object and print all its details.


 */
import 'Car.dart';

void main() {
  Car carOne = Car("bmw", 2005, "two");
  carOne.disPlayInfo();
}
