/*
Create a base class Vehicle with a method move(). 
Create a subclass Car that adds a method honk(). 
Create a Car object and call both methods. 
 */

import 'Car.dart';

void main() {
  Car myCar = Car();
  myCar.honk();
  myCar.move();
}
